import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:smtpd/smtpd.dart';

import 'package:logging/logging.dart';
import 'package:smtpd/src/mail_models.dart';

part 'smtpd_commands.freezed.dart';

final _logger = Logger('smtpd_commands');

typedef InProgressReader = Future<SmtpStatusMessage> Function(String line);

@freezed
abstract class Result with _$Result {
  const factory Result.success({@required SmtpStatusMessage status}) =
      _ResultSuccess;
  const factory Result.error({@required SmtpStatusMessage status}) =
      _ResultError;
  const factory Result.inProgress({
    @required SmtpStatusMessage status,
    @required InProgressReader readLine,
  }) = _ResultInProgress;
  const factory Result.closeConnection({@required SmtpStatusMessage status}) =
      _ResultCloseConnection;
}

//enum Result {
//  success,
//  error,
//  inProgress,
//  closeConnection,
//}

abstract class SmtpCommand {
  String get name;
  String get description => '';
  @protected
  SmtpServer server;
  String get syntax => '$name $description';

  void init(SmtpServer server) {
    this.server = server;
  }

  Future<Result> execute(SmtpClient client, String argument);
}

class CommandEhlo extends SmtpCommand {
  @override
  String get name => 'EHLO';

  @override
  String get description => '';

  @override
  Future<Result> execute(SmtpClient client, String argument) async {
    if (argument.isEmpty) {
      await client.writeCrLf('501 Syntax: EHLO hostname');
      return const Result.error(status: SmtpStatusMessage.errorSyntaxParameter);
    }
    client.remoteHostName = argument;
    await client.writeCrLf('250-${server.config.hostname}');
    await client.writeCrLf('250-8BITMIME');
    await client.writeCrLf('250-SMTPUTF8');
    await client.writeCrLf('250-${server.config.hostname}');
    return Result.success(
        status: SmtpStatusMessage.successCompleted.withMessage('HELP'));
  }
}

class CommandHelp extends SmtpCommand {
  @override
  String get name => 'HELP';

  @override
  String get description => '';

  @override
  Future<Result> execute(SmtpClient client, String argument) async {
    var code = SmtpStatusMessage.successCompleted;
    if (argument.isNotEmpty) {
      final command = server.commands.firstWhere(
          (element) => element.name == argument,
          orElse: () => null);
      if (command != null) {
        return Result.success(
            status: SmtpStatusMessage.successCompleted
                .withMessage('Syntax: ${command.syntax}'));
      }
      code = SmtpStatusMessage.errorParameterNotImplemented;
    }
    return Result.success(
        status: code.withMessage(
            'Supported commands: ${server.commands.map((e) => e.name).join(' ')}'));
  }
}

class CommandQuit extends SmtpCommand {
  @override
  String get name => 'QUIT';

  @override
  String get description => '';

  @override
  Future<Result> execute(SmtpClient client, String argument) async {
    return Result.closeConnection(
        status: SmtpStatusMessage.successServerClose.withMessage('Bye'));
  }
}

class CommandMail extends SmtpCommand {
  @override
  String get name => 'MAIL';

  @override
  String get description =>
      'MAIL FROM: <address>'; //, extended=' [SP <mail-parameters>]';

  @override
  Future<Result> execute(SmtpClient client, String argument) async {
    final syntaxError = SmtpStatusMessage.errorSyntaxParameter
        .withMessage('Syntax: MAIL FROM: <address>');
    final arg = _stripCommandKeyword(argument, 'FROM:');

    if (arg == null || arg.isEmpty) {
      return Result.error(status: syntaxError);
    }
    return _readEmailAddress(arg, (address, rest) {
      if (address == null) {
        return Result.error(status: syntaxError);
      }
      _logger.info('From: {$address}');
      client.mailSetSender(address, params: _parseParams(rest));
      return Result.success(status: SmtpStatusMessage.successCompleted);
    });
  }
}

Map<String, String> _parseParams(String arg) {
  return Map.fromEntries(arg
      .toUpperCase()
      .split(' ')
      .map((e) => e.split('='))
      .map((e) => e.length == 2 ? MapEntry(e[0], e[1]) : MapEntry(e[0], '')));
}

String _stripCommandKeyword(String command, String keyword) {
  assert(keyword == keyword.toUpperCase());
  if (keyword.length > command.length) {
    return null;
  }
  if (command.substring(0, keyword.length).toUpperCase() == keyword) {
    return command.substring(keyword.length).trim();
  }
  return null;
}

T _readEmailAddress<T>(String arg, T Function(String address, String rest) cb) {
  final bracketIndex = arg.indexOf('>');
  if (!arg.startsWith('<') || bracketIndex < 0) {
    _logger.warning('Invalid argument to read email: $arg');
    return null;
  }
  return cb(
    arg.substring(1, bracketIndex),
    arg.substring(bracketIndex + 1).trim(),
  );
}

class CommandRcpt extends SmtpCommand {
  @override
  String get name => 'RCPT';

  @override
  String get description => '';

  @override
  Future<Result> execute(SmtpClient client, String argument) async {
    final syntaxError = SmtpStatusMessage.errorSyntaxParameter
        .withMessage('Syntax: RCPT TO: <address>');
    final arg = _stripCommandKeyword(argument, 'TO:');
    return await _readEmailAddress(arg, (address, rest) async {
      if (address == null) {
        return Result.error(status: syntaxError);
      }
      final response = await client.mailHandler.verifyAddress(client, address);
      if (response.isSuccess) {
        client.mailAddRecipient(address);
        return Result.success(status: response);
      }
      return Result.error(status: response);
    });
  }
}

class CommandData extends SmtpCommand {
  @override
  String get name => 'DATA';

  @override
  String get description => '';

  @override
  Future<Result> execute(SmtpClient client, String argument) async {
    final data = StringBuffer();
    return Result.inProgress(
      status: SmtpStatusMessage.additionalDataRequired
          .withMessage('354 End data with <CR><LF>.<CR><LF>'),
      readLine: (line) async {
        if (line == '.') {
          _logger.fine('Finished reading data for mail.');
          return await client.mailFinished(data.toString());
        }
        if (line.startsWith('.')) {
          line = line.substring(1);
        }
        data..write(line)..write('\r\n');
        return null;
      },
    );
  }
}

class CommandRset extends SmtpCommand {
  @override
  String get name => 'RSET';

  @override
  String get description => '';

  @override
  Future<Result> execute(SmtpClient client, String argument) async {
    client.mailObject = MailObject();
    return Result.success(status: SmtpStatusMessage.successCompleted);
  }
}
