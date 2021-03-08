import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart' show IterableExtension;
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';
import 'package:smtpd/src/mail_models.dart';
import 'package:smtpd/src/smtpd_commands.dart';

final _logger = Logger('smtpd_base');

class SmtpConfig {
  SmtpConfig({
    required this.address,
    required this.port,
    required this.hostname,
  });

  final InternetAddress address;
  final int port;

  final String hostname;
  final appName = 'dart smtpd';
}

abstract class MailHandler {
  const MailHandler();

  /// called on RCPT TO: before adding to envelope.
  /// Must either return an error code, or success.
  /// Address will only be added to envelope
  /// if [SmtpStatusMessage.successCompleted] is returned.
  Future<SmtpStatusMessage> verifyAddress(SmtpClient client, String address);

  /// called when the message and data is received. ready to be sent.
  Future<SmtpStatusMessage> handleMail(
      SmtpClient client, MailObject mailObject);
}

class BaseMailHandler extends MailHandler {
  const BaseMailHandler();

  @override
  Future<SmtpStatusMessage> handleMail(
      SmtpClient client, MailObject mailObject) async {
    return SmtpStatusMessage.successCompleted;
  }

  @override
  Future<SmtpStatusMessage> verifyAddress(
      SmtpClient client, String address) async {
    return SmtpStatusMessage.successCompleted;
  }
}

class SmtpServer {
  SmtpServer(this.config, {this.mailHandler = const BaseMailHandler()}) {
    for (final command in createCommands()) {
      command.init(this);
      _commands.add(command);
    }
  }

  final SmtpConfig config;
  final MailHandler mailHandler;
  final List<SmtpCommand> _commands = [];
  List<SmtpCommand> get commands => _commands;

  int _sigIntCount = 5;

  Future<void> start() async {
    ProcessSignal.sigint.watch().listen((event) {
      if (_sigIntCount-- < 1) {
        _logger.fine('Exiting.');
        exit(1);
      }
      _logger.warning('Received $event - ignoring for now. ($_sigIntCount)');
    });
    ProcessSignal.sigterm.watch().listen((event) {
      _logger.warning('Received $event - exiting.');
      exit(1);
    });
    while (true) {
      try {
        return await _bind();
      } catch (e, stackTrace) {
        _logger.severe(
            'Got an exception, closed socket bind. Trying to rebind shortly',
            e,
            stackTrace);
        await Future<void>.delayed(const Duration(seconds: 1));
      }
    }
  }

  Future<void> _bind() async {
    final serverSocket = await ServerSocket.bind(config.address, config.port);
    var requestCount = 0;
    _logger.fine('Bound to ${serverSocket.address}:${serverSocket.port}}');
    await for (final clientSocket in serverSocket) {
      _logger.finer('Connection established ${requestCount++}');
      final client = SmtpClient(clientSocket, mailHandler);
      try {
        _logger.fine('Connection from ${clientSocket.remoteAddress}');
        await _handleConnection(clientSocket, client);
      } on SocketException catch (e) {
        _logger.finest('Socket exception, assume closed connection.', e);
      } on OSError catch (e, st) {
        if (e.errorCode == 22) {
          _logger.finest('OSError 22, client closed connection?', e);
        } else {
          _logger.warning('Unknown OSError', e, st);
        }
      } catch (e, stackTrace) {
        _logger.warning(
          'Exception while handling client connection. (${e.runtimeType})',
          e,
          stackTrace,
        );
        try {
          await client
              .writeStatus(SmtpStatusMessage.failureAborted.withMessage('$e'));
        } catch (e) {
          // ignore for now.
        }
      } finally {
        _logger.fine('Destroy client connection.');
        try {
          clientSocket.destroy();
        } catch (e, stackTrace) {
          _logger.warning(
              'Exception while destroying connection', e, stackTrace);
        }
      }
    }
  }

  Future<void> _handleConnection(Socket clientSocket, SmtpClient client) async {
    await client.writeCrLf('220 ${config.hostname} ${config.appName}');
//      client.transform<String>(Utf8Decoder(allowMalformed: true));
    ;
    final lines = Utf8Decoder(allowMalformed: true)
        .bind(clientSocket)
        .transform(LineSplitter());
    InProgressReader? _inProgressCommand;
    await for (final line in lines) {
      if (_inProgressCommand != null) {
        final status = await _inProgressCommand!(line);
        if (status != null) {
          _inProgressCommand = null;
          await client.writeStatus(status);
        }
        continue;
      }
      final commandLine = _splitCommand(line);
      _logger.finest('Received line: $line');
      final commandName = commandLine[0];
      final command =
          _commands.firstWhereOrNull((element) => element.name == commandName);
      if (command == null) {
        await client
            .writeCrLf('500 Error: command "$commandName" not recognized');
        continue;
      }
      final result = await command.execute(client, commandLine[1]);
      final status = result.status;
      await client.writeCrLf('${status.code} ${status.message}');

      await result.when(
        success: (message) async {},
        error: (message) async {},
        inProgress: (message, commandInProgress) async {
          _inProgressCommand = commandInProgress;
        },
        closeConnection: (message) async {
          _logger.fine('Closing connection to ${clientSocket.remoteAddress}');
          await clientSocket.close();
        },
      );
    }
  }

  List<String> _splitCommand(String line) {
    final idx = line.indexOf(' ');
    if (idx < 0) {
      return [line, ''];
    } else {
      return [line.substring(0, idx), line.substring(idx + 1)];
    }
  }

  @protected
  List<SmtpCommand> createCommands() => [
        CommandEhlo(),
        CommandHelp(),
        CommandEhlo(),
        CommandQuit(),
        CommandMail(),
        CommandRcpt(),
        CommandData(),
        CommandRset(),
      ];
}

class SmtpClient {
  SmtpClient(this.client, this.mailHandler);

  final MailHandler mailHandler;
  final Socket client;

  /// remote host name, set by EHLO
  String? remoteHostName;

  /// Current mail object being created.
  MailObject mailObject = MailObject.empty;

  Future<void> writeStatus(SmtpStatusMessage status) async {
    await writeCrLf('${status.code} ${status.message}');
  }

  Future<void> writeCrLf(String line) async {
    client.write(line);
    client.write('\r\n');
    await client.flush();
  }

  void reset() {
    mailObject = MailObject.empty;
  }

  void mailAddRecipient(String address) {
    mailObject = mailObject.copyWith
        .envelope(recipient: [...mailObject.envelope.recipient, address]);
  }

  Future<SmtpStatusMessage> mailFinished(String data) async {
    try {
      return mailHandler.handleMail(this, mailObject.copyWith(content: data));
    } finally {
      reset();
    }
  }

  void mailSetSender(String address, {Map<String, String> params = const {}}) {
    mailObject = mailObject.copyWith.envelope(
      sender: address,
      params: params,
    );
  }
}
