// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'mail_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MailObjectTearOff {
  const _$MailObjectTearOff();

// ignore: unused_element
  _MailObject call(
      {MailEnvelope envelope = const MailEnvelope(), String content}) {
    return _MailObject(
      envelope: envelope,
      content: content,
    );
  }
}

// ignore: unused_element
const $MailObject = _$MailObjectTearOff();

mixin _$MailObject {
  MailEnvelope get envelope;
  String get content;

  $MailObjectCopyWith<MailObject> get copyWith;
}

abstract class $MailObjectCopyWith<$Res> {
  factory $MailObjectCopyWith(
          MailObject value, $Res Function(MailObject) then) =
      _$MailObjectCopyWithImpl<$Res>;
  $Res call({MailEnvelope envelope, String content});

  $MailEnvelopeCopyWith<$Res> get envelope;
}

class _$MailObjectCopyWithImpl<$Res> implements $MailObjectCopyWith<$Res> {
  _$MailObjectCopyWithImpl(this._value, this._then);

  final MailObject _value;
  // ignore: unused_field
  final $Res Function(MailObject) _then;

  @override
  $Res call({
    Object envelope = freezed,
    Object content = freezed,
  }) {
    return _then(_value.copyWith(
      envelope:
          envelope == freezed ? _value.envelope : envelope as MailEnvelope,
      content: content == freezed ? _value.content : content as String,
    ));
  }

  @override
  $MailEnvelopeCopyWith<$Res> get envelope {
    if (_value.envelope == null) {
      return null;
    }
    return $MailEnvelopeCopyWith<$Res>(_value.envelope, (value) {
      return _then(_value.copyWith(envelope: value));
    });
  }
}

abstract class _$MailObjectCopyWith<$Res> implements $MailObjectCopyWith<$Res> {
  factory _$MailObjectCopyWith(
          _MailObject value, $Res Function(_MailObject) then) =
      __$MailObjectCopyWithImpl<$Res>;
  @override
  $Res call({MailEnvelope envelope, String content});

  @override
  $MailEnvelopeCopyWith<$Res> get envelope;
}

class __$MailObjectCopyWithImpl<$Res> extends _$MailObjectCopyWithImpl<$Res>
    implements _$MailObjectCopyWith<$Res> {
  __$MailObjectCopyWithImpl(
      _MailObject _value, $Res Function(_MailObject) _then)
      : super(_value, (v) => _then(v as _MailObject));

  @override
  _MailObject get _value => super._value as _MailObject;

  @override
  $Res call({
    Object envelope = freezed,
    Object content = freezed,
  }) {
    return _then(_MailObject(
      envelope:
          envelope == freezed ? _value.envelope : envelope as MailEnvelope,
      content: content == freezed ? _value.content : content as String,
    ));
  }
}

class _$_MailObject implements _MailObject {
  const _$_MailObject({this.envelope = const MailEnvelope(), this.content})
      : assert(envelope != null);

  @JsonKey(defaultValue: const MailEnvelope())
  @override
  final MailEnvelope envelope;
  @override
  final String content;

  @override
  String toString() {
    return 'MailObject(envelope: $envelope, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MailObject &&
            (identical(other.envelope, envelope) ||
                const DeepCollectionEquality()
                    .equals(other.envelope, envelope)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality().equals(other.content, content)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(envelope) ^
      const DeepCollectionEquality().hash(content);

  @override
  _$MailObjectCopyWith<_MailObject> get copyWith =>
      __$MailObjectCopyWithImpl<_MailObject>(this, _$identity);
}

abstract class _MailObject implements MailObject {
  const factory _MailObject({MailEnvelope envelope, String content}) =
      _$_MailObject;

  @override
  MailEnvelope get envelope;
  @override
  String get content;
  @override
  _$MailObjectCopyWith<_MailObject> get copyWith;
}

class _$MailEnvelopeTearOff {
  const _$MailEnvelopeTearOff();

// ignore: unused_element
  _MailEnvelope call(
      {String sender,
      Map<String, String> params,
      List<String> recipient = const []}) {
    return _MailEnvelope(
      sender: sender,
      params: params,
      recipient: recipient,
    );
  }
}

// ignore: unused_element
const $MailEnvelope = _$MailEnvelopeTearOff();

mixin _$MailEnvelope {
  String get sender;
  Map<String, String> get params;
  List<String> get recipient;

  $MailEnvelopeCopyWith<MailEnvelope> get copyWith;
}

abstract class $MailEnvelopeCopyWith<$Res> {
  factory $MailEnvelopeCopyWith(
          MailEnvelope value, $Res Function(MailEnvelope) then) =
      _$MailEnvelopeCopyWithImpl<$Res>;
  $Res call(
      {String sender, Map<String, String> params, List<String> recipient});
}

class _$MailEnvelopeCopyWithImpl<$Res> implements $MailEnvelopeCopyWith<$Res> {
  _$MailEnvelopeCopyWithImpl(this._value, this._then);

  final MailEnvelope _value;
  // ignore: unused_field
  final $Res Function(MailEnvelope) _then;

  @override
  $Res call({
    Object sender = freezed,
    Object params = freezed,
    Object recipient = freezed,
  }) {
    return _then(_value.copyWith(
      sender: sender == freezed ? _value.sender : sender as String,
      params: params == freezed ? _value.params : params as Map<String, String>,
      recipient:
          recipient == freezed ? _value.recipient : recipient as List<String>,
    ));
  }
}

abstract class _$MailEnvelopeCopyWith<$Res>
    implements $MailEnvelopeCopyWith<$Res> {
  factory _$MailEnvelopeCopyWith(
          _MailEnvelope value, $Res Function(_MailEnvelope) then) =
      __$MailEnvelopeCopyWithImpl<$Res>;
  @override
  $Res call(
      {String sender, Map<String, String> params, List<String> recipient});
}

class __$MailEnvelopeCopyWithImpl<$Res> extends _$MailEnvelopeCopyWithImpl<$Res>
    implements _$MailEnvelopeCopyWith<$Res> {
  __$MailEnvelopeCopyWithImpl(
      _MailEnvelope _value, $Res Function(_MailEnvelope) _then)
      : super(_value, (v) => _then(v as _MailEnvelope));

  @override
  _MailEnvelope get _value => super._value as _MailEnvelope;

  @override
  $Res call({
    Object sender = freezed,
    Object params = freezed,
    Object recipient = freezed,
  }) {
    return _then(_MailEnvelope(
      sender: sender == freezed ? _value.sender : sender as String,
      params: params == freezed ? _value.params : params as Map<String, String>,
      recipient:
          recipient == freezed ? _value.recipient : recipient as List<String>,
    ));
  }
}

class _$_MailEnvelope implements _MailEnvelope {
  const _$_MailEnvelope({this.sender, this.params, this.recipient = const []})
      : assert(recipient != null);

  @override
  final String sender;
  @override
  final Map<String, String> params;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> recipient;

  @override
  String toString() {
    return 'MailEnvelope(sender: $sender, params: $params, recipient: $recipient)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MailEnvelope &&
            (identical(other.sender, sender) ||
                const DeepCollectionEquality().equals(other.sender, sender)) &&
            (identical(other.params, params) ||
                const DeepCollectionEquality().equals(other.params, params)) &&
            (identical(other.recipient, recipient) ||
                const DeepCollectionEquality()
                    .equals(other.recipient, recipient)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sender) ^
      const DeepCollectionEquality().hash(params) ^
      const DeepCollectionEquality().hash(recipient);

  @override
  _$MailEnvelopeCopyWith<_MailEnvelope> get copyWith =>
      __$MailEnvelopeCopyWithImpl<_MailEnvelope>(this, _$identity);
}

abstract class _MailEnvelope implements MailEnvelope {
  const factory _MailEnvelope(
      {String sender,
      Map<String, String> params,
      List<String> recipient}) = _$_MailEnvelope;

  @override
  String get sender;
  @override
  Map<String, String> get params;
  @override
  List<String> get recipient;
  @override
  _$MailEnvelopeCopyWith<_MailEnvelope> get copyWith;
}
