import 'dart:io';

import 'package:logging_appenders/logging_appenders.dart';
import 'package:smtpd/smtpd.dart';

import 'package:logging/logging.dart';

final _logger = Logger('smtpd_example');

void main() async {
  PrintAppender.setupLogging();
  final smtpd = SmtpServer(
    SmtpConfig(
      address: InternetAddress.loopbackIPv4,
      port: 2525,
      hostname: 'localhost',
    ),
    mailHandler: DummyMailHandler(),
  );
  await smtpd.start();
}

class DummyMailHandler extends MailHandler {
  @override
  Future<SmtpStatusMessage> handleMail(
      SmtpClient client, MailObject mailObject) async {
    _logger.info(
        'Got Mail Message (client: ${client.remoteHostName} to send: $mailObject\n\n\n');
    return SmtpStatusMessage.successCompleted;
  }

  @override
  Future<SmtpStatusMessage> verifyAddress(
      SmtpClient client, String address) async {
    _logger.fine('Need to verify address: {$address}');
    return SmtpStatusMessage.successCompleted;
  }
}
