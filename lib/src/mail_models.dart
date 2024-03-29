import 'package:freezed_annotation/freezed_annotation.dart';

part 'mail_models.freezed.dart';

@freezed
class MailObject with _$MailObject {
  const factory MailObject({
    required MailEnvelope envelope,
    @Default('') String content,
  }) = _MailObject;

  static const empty = MailObject(envelope: MailEnvelope(recipient: []));
}

@freezed
class MailEnvelope with _$MailEnvelope {
  const factory MailEnvelope({
    String? sender,
    Map<String, String>? params,
    required List<String> recipient,
  }) = _MailEnvelope;
}

class SmtpStatusMessage {
  const SmtpStatusMessage._(this.code, [this.message = '']);
  final int code;
  final String message;

  static const successStatusMessage = SmtpStatusMessage._(200, '');
  static const successHelpResponse = SmtpStatusMessage._(214, '');
  static const successServerRead = SmtpStatusMessage._(220, '');
  static const successServerClose = SmtpStatusMessage._(221, '');
  static const successCompleted = SmtpStatusMessage._(250, 'OK');

  static const additionalDataRequired = SmtpStatusMessage._(354, '');

  /// Aborted – Local error in processing
  static const failureAborted = SmtpStatusMessage._(451, '');

  static const errorSyntax = SmtpStatusMessage._(500, '');
  static const errorSyntaxParameter = SmtpStatusMessage._(501, '');
  static const errorParameterNotImplemented = SmtpStatusMessage._(504, '');
  static const errorMailboxUnavailable =
      SmtpStatusMessage._(550, 'mailbox not found');

  bool get isSuccess => code >= 200 && code < 300;

  SmtpStatusMessage withMessage(String message) =>
      SmtpStatusMessage._(code, message);
}
