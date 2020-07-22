import 'package:meta/meta.dart';
import 'package:smtpd/smtpd.dart';

enum Result {
  success,
  error,
  inProgress,
  closeConnection,
}

abstract class SmtpCommand {
  String get name;
  String get description;
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
      return Result.error;
    }
    await client.writeCrLf('250-${server.config.hostname}');
    await client.writeCrLf('250 HELP');
    return Result.success;
  }
}

class CommandHelp extends SmtpCommand {
  @override
  String get name => 'HELP';

  @override
  String get description => '';

  @override
  Future<Result> execute(SmtpClient client, String argument) async {
    var code = 250;
    if (argument.isNotEmpty) {
      final command = server.commands.firstWhere(
          (element) => element.name == argument,
          orElse: () => null);
      if (command != null) {
        await client.writeCrLf('250 Syntax: ${command.syntax}');
        return Result.success;
      }
      code = 501;
    }
    await client.writeCrLf(
        '$code Supported commands: ${server.commands.map((e) => e.name).join(' ')}');
    return Result.success;
  }
}

class CommandQuit extends SmtpCommand {
  @override
  String get name => 'QUIT';

  @override
  String get description => '';

  @override
  Future<Result> execute(SmtpClient client, String argument) async {
    await client.writeCrLf('221 Bye');
    return Result.closeConnection;
  }
}
