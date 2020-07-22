import 'dart:io';

import 'package:logging_appenders/logging_appenders.dart';
import 'package:smtpd/smtpd.dart';

void main() async {
  PrintAppender.setupLogging();
  final smtpd = SmtpServer(SmtpConfig(
    address: InternetAddress.loopbackIPv4,
    port: 2525,
    hostname: 'localhost',
  ));
  await smtpd.start();
}
