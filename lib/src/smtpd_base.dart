import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:meta/meta.dart';
import 'package:smtpd/src/smtpd_commands.dart';

import 'package:logging/logging.dart';

final _logger = Logger('smtpd_base');

class SmtpConfig {
  SmtpConfig(
      {@required this.address, @required this.port, @required this.hostname})
      : assert(address != null),
        assert(port != null),
        assert(hostname != null);

  final InternetAddress address;
  final int port;

  final String hostname;
  final appName = 'dart smtpd';
}

class SmtpServer {
  SmtpServer(this.config) : assert(config != null) {
    for (final command in createCommands()) {
      command.init(this);
      _commands.add(command);
    }
  }

  final SmtpConfig config;
  final List<SmtpCommand> _commands = [];
  List<SmtpCommand> get commands => _commands;

  Future<void> start() async {
    return await _bind();
  }

  Future<void> _bind() async {
    final serverSocket = await ServerSocket.bind(config.address, config.port);
    _logger.fine('Bound to ${serverSocket.address}:${serverSocket.port}}');
    await for (final clientSocket in serverSocket) {
      final client = SmtpClient(clientSocket);
      _logger.fine('Connection from ${clientSocket.remoteAddress}');
      await _handleConnection(clientSocket, client);
    }
  }

  Future<void> _handleConnection(Socket clientSocket, SmtpClient client) async {
    await client.writeCrLf('220 ${config.hostname} ${config.appName}');
//      client.transform<String>(Utf8Decoder(allowMalformed: true));
    ;
    final lines = Utf8Decoder(allowMalformed: true)
        .bind(clientSocket)
        .transform(LineSplitter());
    await for (final line in lines) {
      final commandLine = _splitCommand(line);
      final commandName = commandLine[0];
      final command = _commands.firstWhere(
          (element) => element.name == commandName,
          orElse: () => null);
      if (command == null) {
        await client
            .writeCrLf('500 Error: command "$commandName" not recognized');
        continue;
      }
      final result = await command.execute(client, commandLine[1]);
      if (result == Result.closeConnection) {
        _logger.fine('Closing connection to ${clientSocket.remoteAddress}');
        await clientSocket.close();
        return;
      }
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
      ];
}

class SmtpClient {
  SmtpClient(this.client);

  final Socket client;

  Future<void> writeCrLf(String line) async {
    client.write(line);
    client.write('\r\n');
    await client.flush();
  }
}
