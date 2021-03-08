// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'mail_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MailObjectTearOff {
  const _$MailObjectTearOff();

  _MailObject call({required MailEnvelope envelope, String? body}) {
    return _MailObject(
      envelope: envelope,
      body: body,
    );
  }
}

/// @nodoc
const $MailObject = _$MailObjectTearOff();

/// @nodoc
mixin _$MailObject {
  MailEnvelope get envelope => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MailObjectCopyWith<MailObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MailObjectCopyWith<$Res> {
  factory $MailObjectCopyWith(
          MailObject value, $Res Function(MailObject) then) =
      _$MailObjectCopyWithImpl<$Res>;
  $Res call({MailEnvelope envelope, String? body});

  $MailEnvelopeCopyWith<$Res> get envelope;
}

/// @nodoc
class _$MailObjectCopyWithImpl<$Res> implements $MailObjectCopyWith<$Res> {
  _$MailObjectCopyWithImpl(this._value, this._then);

  final MailObject _value;
  // ignore: unused_field
  final $Res Function(MailObject) _then;

  @override
  $Res call({
    Object? envelope = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      envelope: envelope == freezed
          ? _value.envelope
          : envelope // ignore: cast_nullable_to_non_nullable
              as MailEnvelope,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $MailEnvelopeCopyWith<$Res> get envelope {
    return $MailEnvelopeCopyWith<$Res>(_value.envelope, (value) {
      return _then(_value.copyWith(envelope: value));
    });
  }
}

/// @nodoc
abstract class _$MailObjectCopyWith<$Res> implements $MailObjectCopyWith<$Res> {
  factory _$MailObjectCopyWith(
          _MailObject value, $Res Function(_MailObject) then) =
      __$MailObjectCopyWithImpl<$Res>;
  @override
  $Res call({MailEnvelope envelope, String? body});

  @override
  $MailEnvelopeCopyWith<$Res> get envelope;
}

/// @nodoc
class __$MailObjectCopyWithImpl<$Res> extends _$MailObjectCopyWithImpl<$Res>
    implements _$MailObjectCopyWith<$Res> {
  __$MailObjectCopyWithImpl(
      _MailObject _value, $Res Function(_MailObject) _then)
      : super(_value, (v) => _then(v as _MailObject));

  @override
  _MailObject get _value => super._value as _MailObject;

  @override
  $Res call({
    Object? envelope = freezed,
    Object? body = freezed,
  }) {
    return _then(_MailObject(
      envelope: envelope == freezed
          ? _value.envelope
          : envelope // ignore: cast_nullable_to_non_nullable
              as MailEnvelope,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$_MailObject implements _MailObject {
  const _$_MailObject({required this.envelope, this.body});

  @override
  final MailEnvelope envelope;
  @override
  final String? body;

  @override
  String toString() {
    return 'MailObject(envelope: $envelope, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MailObject &&
            (identical(other.envelope, envelope) ||
                const DeepCollectionEquality()
                    .equals(other.envelope, envelope)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(envelope) ^
      const DeepCollectionEquality().hash(body);

  @JsonKey(ignore: true)
  @override
  _$MailObjectCopyWith<_MailObject> get copyWith =>
      __$MailObjectCopyWithImpl<_MailObject>(this, _$identity);
}

abstract class _MailObject implements MailObject {
  const factory _MailObject({required MailEnvelope envelope, String? body}) =
      _$_MailObject;

  @override
  MailEnvelope get envelope => throw _privateConstructorUsedError;
  @override
  String? get body => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MailObjectCopyWith<_MailObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$MailEnvelopeTearOff {
  const _$MailEnvelopeTearOff();

  _MailEnvelope call(
      {String? sender,
      Map<String, String>? params,
      required List<String> recipient}) {
    return _MailEnvelope(
      sender: sender,
      params: params,
      recipient: recipient,
    );
  }
}

/// @nodoc
const $MailEnvelope = _$MailEnvelopeTearOff();

/// @nodoc
mixin _$MailEnvelope {
  String? get sender => throw _privateConstructorUsedError;
  Map<String, String>? get params => throw _privateConstructorUsedError;
  List<String> get recipient => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MailEnvelopeCopyWith<MailEnvelope> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MailEnvelopeCopyWith<$Res> {
  factory $MailEnvelopeCopyWith(
          MailEnvelope value, $Res Function(MailEnvelope) then) =
      _$MailEnvelopeCopyWithImpl<$Res>;
  $Res call(
      {String? sender, Map<String, String>? params, List<String> recipient});
}

/// @nodoc
class _$MailEnvelopeCopyWithImpl<$Res> implements $MailEnvelopeCopyWith<$Res> {
  _$MailEnvelopeCopyWithImpl(this._value, this._then);

  final MailEnvelope _value;
  // ignore: unused_field
  final $Res Function(MailEnvelope) _then;

  @override
  $Res call({
    Object? sender = freezed,
    Object? params = freezed,
    Object? recipient = freezed,
  }) {
    return _then(_value.copyWith(
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String?,
      params: params == freezed
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      recipient: recipient == freezed
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$MailEnvelopeCopyWith<$Res>
    implements $MailEnvelopeCopyWith<$Res> {
  factory _$MailEnvelopeCopyWith(
          _MailEnvelope value, $Res Function(_MailEnvelope) then) =
      __$MailEnvelopeCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? sender, Map<String, String>? params, List<String> recipient});
}

/// @nodoc
class __$MailEnvelopeCopyWithImpl<$Res> extends _$MailEnvelopeCopyWithImpl<$Res>
    implements _$MailEnvelopeCopyWith<$Res> {
  __$MailEnvelopeCopyWithImpl(
      _MailEnvelope _value, $Res Function(_MailEnvelope) _then)
      : super(_value, (v) => _then(v as _MailEnvelope));

  @override
  _MailEnvelope get _value => super._value as _MailEnvelope;

  @override
  $Res call({
    Object? sender = freezed,
    Object? params = freezed,
    Object? recipient = freezed,
  }) {
    return _then(_MailEnvelope(
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String?,
      params: params == freezed
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      recipient: recipient == freezed
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
class _$_MailEnvelope implements _MailEnvelope {
  const _$_MailEnvelope({this.sender, this.params, required this.recipient});

  @override
  final String? sender;
  @override
  final Map<String, String>? params;
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

  @JsonKey(ignore: true)
  @override
  _$MailEnvelopeCopyWith<_MailEnvelope> get copyWith =>
      __$MailEnvelopeCopyWithImpl<_MailEnvelope>(this, _$identity);
}

abstract class _MailEnvelope implements MailEnvelope {
  const factory _MailEnvelope(
      {String? sender,
      Map<String, String>? params,
      required List<String> recipient}) = _$_MailEnvelope;

  @override
  String? get sender => throw _privateConstructorUsedError;
  @override
  Map<String, String>? get params => throw _privateConstructorUsedError;
  @override
  List<String> get recipient => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MailEnvelopeCopyWith<_MailEnvelope> get copyWith =>
      throw _privateConstructorUsedError;
}
