// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'smtpd_commands.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ResultTearOff {
  const _$ResultTearOff();

  _ResultSuccess success({required SmtpStatusMessage status}) {
    return _ResultSuccess(
      status: status,
    );
  }

  _ResultError error({required SmtpStatusMessage status}) {
    return _ResultError(
      status: status,
    );
  }

  _ResultInProgress inProgress(
      {required SmtpStatusMessage status,
      required Future<SmtpStatusMessage?> Function(String) readLine}) {
    return _ResultInProgress(
      status: status,
      readLine: readLine,
    );
  }

  _ResultCloseConnection closeConnection({required SmtpStatusMessage status}) {
    return _ResultCloseConnection(
      status: status,
    );
  }
}

/// @nodoc
const $Result = _$ResultTearOff();

/// @nodoc
mixin _$Result {
  SmtpStatusMessage get status => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SmtpStatusMessage status) success,
    required TResult Function(SmtpStatusMessage status) error,
    required TResult Function(SmtpStatusMessage status,
            Future<SmtpStatusMessage?> Function(String) readLine)
        inProgress,
    required TResult Function(SmtpStatusMessage status) closeConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SmtpStatusMessage status)? success,
    TResult Function(SmtpStatusMessage status)? error,
    TResult Function(SmtpStatusMessage status,
            Future<SmtpStatusMessage?> Function(String) readLine)?
        inProgress,
    TResult Function(SmtpStatusMessage status)? closeConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResultSuccess value) success,
    required TResult Function(_ResultError value) error,
    required TResult Function(_ResultInProgress value) inProgress,
    required TResult Function(_ResultCloseConnection value) closeConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultSuccess value)? success,
    TResult Function(_ResultError value)? error,
    TResult Function(_ResultInProgress value)? inProgress,
    TResult Function(_ResultCloseConnection value)? closeConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res>;
  $Res call({SmtpStatusMessage status});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res> implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  final Result _value;
  // ignore: unused_field
  final $Res Function(Result) _then;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SmtpStatusMessage,
    ));
  }
}

/// @nodoc
abstract class _$ResultSuccessCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$ResultSuccessCopyWith(
          _ResultSuccess value, $Res Function(_ResultSuccess) then) =
      __$ResultSuccessCopyWithImpl<$Res>;
  @override
  $Res call({SmtpStatusMessage status});
}

/// @nodoc
class __$ResultSuccessCopyWithImpl<$Res> extends _$ResultCopyWithImpl<$Res>
    implements _$ResultSuccessCopyWith<$Res> {
  __$ResultSuccessCopyWithImpl(
      _ResultSuccess _value, $Res Function(_ResultSuccess) _then)
      : super(_value, (v) => _then(v as _ResultSuccess));

  @override
  _ResultSuccess get _value => super._value as _ResultSuccess;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_ResultSuccess(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SmtpStatusMessage,
    ));
  }
}

/// @nodoc
class _$_ResultSuccess implements _ResultSuccess {
  const _$_ResultSuccess({required this.status});

  @override
  final SmtpStatusMessage status;

  @override
  String toString() {
    return 'Result.success(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResultSuccess &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$ResultSuccessCopyWith<_ResultSuccess> get copyWith =>
      __$ResultSuccessCopyWithImpl<_ResultSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SmtpStatusMessage status) success,
    required TResult Function(SmtpStatusMessage status) error,
    required TResult Function(SmtpStatusMessage status,
            Future<SmtpStatusMessage?> Function(String) readLine)
        inProgress,
    required TResult Function(SmtpStatusMessage status) closeConnection,
  }) {
    return success(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SmtpStatusMessage status)? success,
    TResult Function(SmtpStatusMessage status)? error,
    TResult Function(SmtpStatusMessage status,
            Future<SmtpStatusMessage?> Function(String) readLine)?
        inProgress,
    TResult Function(SmtpStatusMessage status)? closeConnection,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResultSuccess value) success,
    required TResult Function(_ResultError value) error,
    required TResult Function(_ResultInProgress value) inProgress,
    required TResult Function(_ResultCloseConnection value) closeConnection,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultSuccess value)? success,
    TResult Function(_ResultError value)? error,
    TResult Function(_ResultInProgress value)? inProgress,
    TResult Function(_ResultCloseConnection value)? closeConnection,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _ResultSuccess implements Result {
  const factory _ResultSuccess({required SmtpStatusMessage status}) =
      _$_ResultSuccess;

  @override
  SmtpStatusMessage get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ResultSuccessCopyWith<_ResultSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ResultErrorCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$ResultErrorCopyWith(
          _ResultError value, $Res Function(_ResultError) then) =
      __$ResultErrorCopyWithImpl<$Res>;
  @override
  $Res call({SmtpStatusMessage status});
}

/// @nodoc
class __$ResultErrorCopyWithImpl<$Res> extends _$ResultCopyWithImpl<$Res>
    implements _$ResultErrorCopyWith<$Res> {
  __$ResultErrorCopyWithImpl(
      _ResultError _value, $Res Function(_ResultError) _then)
      : super(_value, (v) => _then(v as _ResultError));

  @override
  _ResultError get _value => super._value as _ResultError;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_ResultError(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SmtpStatusMessage,
    ));
  }
}

/// @nodoc
class _$_ResultError implements _ResultError {
  const _$_ResultError({required this.status});

  @override
  final SmtpStatusMessage status;

  @override
  String toString() {
    return 'Result.error(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResultError &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$ResultErrorCopyWith<_ResultError> get copyWith =>
      __$ResultErrorCopyWithImpl<_ResultError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SmtpStatusMessage status) success,
    required TResult Function(SmtpStatusMessage status) error,
    required TResult Function(SmtpStatusMessage status,
            Future<SmtpStatusMessage?> Function(String) readLine)
        inProgress,
    required TResult Function(SmtpStatusMessage status) closeConnection,
  }) {
    return error(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SmtpStatusMessage status)? success,
    TResult Function(SmtpStatusMessage status)? error,
    TResult Function(SmtpStatusMessage status,
            Future<SmtpStatusMessage?> Function(String) readLine)?
        inProgress,
    TResult Function(SmtpStatusMessage status)? closeConnection,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResultSuccess value) success,
    required TResult Function(_ResultError value) error,
    required TResult Function(_ResultInProgress value) inProgress,
    required TResult Function(_ResultCloseConnection value) closeConnection,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultSuccess value)? success,
    TResult Function(_ResultError value)? error,
    TResult Function(_ResultInProgress value)? inProgress,
    TResult Function(_ResultCloseConnection value)? closeConnection,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ResultError implements Result {
  const factory _ResultError({required SmtpStatusMessage status}) =
      _$_ResultError;

  @override
  SmtpStatusMessage get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ResultErrorCopyWith<_ResultError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ResultInProgressCopyWith<$Res>
    implements $ResultCopyWith<$Res> {
  factory _$ResultInProgressCopyWith(
          _ResultInProgress value, $Res Function(_ResultInProgress) then) =
      __$ResultInProgressCopyWithImpl<$Res>;
  @override
  $Res call(
      {SmtpStatusMessage status,
      Future<SmtpStatusMessage?> Function(String) readLine});
}

/// @nodoc
class __$ResultInProgressCopyWithImpl<$Res> extends _$ResultCopyWithImpl<$Res>
    implements _$ResultInProgressCopyWith<$Res> {
  __$ResultInProgressCopyWithImpl(
      _ResultInProgress _value, $Res Function(_ResultInProgress) _then)
      : super(_value, (v) => _then(v as _ResultInProgress));

  @override
  _ResultInProgress get _value => super._value as _ResultInProgress;

  @override
  $Res call({
    Object? status = freezed,
    Object? readLine = freezed,
  }) {
    return _then(_ResultInProgress(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SmtpStatusMessage,
      readLine: readLine == freezed
          ? _value.readLine
          : readLine // ignore: cast_nullable_to_non_nullable
              as Future<SmtpStatusMessage?> Function(String),
    ));
  }
}

/// @nodoc
class _$_ResultInProgress implements _ResultInProgress {
  const _$_ResultInProgress({required this.status, required this.readLine});

  @override
  final SmtpStatusMessage status;
  @override
  final Future<SmtpStatusMessage?> Function(String) readLine;

  @override
  String toString() {
    return 'Result.inProgress(status: $status, readLine: $readLine)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResultInProgress &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.readLine, readLine) ||
                const DeepCollectionEquality()
                    .equals(other.readLine, readLine)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(readLine);

  @JsonKey(ignore: true)
  @override
  _$ResultInProgressCopyWith<_ResultInProgress> get copyWith =>
      __$ResultInProgressCopyWithImpl<_ResultInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SmtpStatusMessage status) success,
    required TResult Function(SmtpStatusMessage status) error,
    required TResult Function(SmtpStatusMessage status,
            Future<SmtpStatusMessage?> Function(String) readLine)
        inProgress,
    required TResult Function(SmtpStatusMessage status) closeConnection,
  }) {
    return inProgress(status, readLine);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SmtpStatusMessage status)? success,
    TResult Function(SmtpStatusMessage status)? error,
    TResult Function(SmtpStatusMessage status,
            Future<SmtpStatusMessage?> Function(String) readLine)?
        inProgress,
    TResult Function(SmtpStatusMessage status)? closeConnection,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(status, readLine);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResultSuccess value) success,
    required TResult Function(_ResultError value) error,
    required TResult Function(_ResultInProgress value) inProgress,
    required TResult Function(_ResultCloseConnection value) closeConnection,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultSuccess value)? success,
    TResult Function(_ResultError value)? error,
    TResult Function(_ResultInProgress value)? inProgress,
    TResult Function(_ResultCloseConnection value)? closeConnection,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _ResultInProgress implements Result {
  const factory _ResultInProgress(
          {required SmtpStatusMessage status,
          required Future<SmtpStatusMessage?> Function(String) readLine}) =
      _$_ResultInProgress;

  @override
  SmtpStatusMessage get status => throw _privateConstructorUsedError;
  Future<SmtpStatusMessage?> Function(String) get readLine =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ResultInProgressCopyWith<_ResultInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ResultCloseConnectionCopyWith<$Res>
    implements $ResultCopyWith<$Res> {
  factory _$ResultCloseConnectionCopyWith(_ResultCloseConnection value,
          $Res Function(_ResultCloseConnection) then) =
      __$ResultCloseConnectionCopyWithImpl<$Res>;
  @override
  $Res call({SmtpStatusMessage status});
}

/// @nodoc
class __$ResultCloseConnectionCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res>
    implements _$ResultCloseConnectionCopyWith<$Res> {
  __$ResultCloseConnectionCopyWithImpl(_ResultCloseConnection _value,
      $Res Function(_ResultCloseConnection) _then)
      : super(_value, (v) => _then(v as _ResultCloseConnection));

  @override
  _ResultCloseConnection get _value => super._value as _ResultCloseConnection;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_ResultCloseConnection(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SmtpStatusMessage,
    ));
  }
}

/// @nodoc
class _$_ResultCloseConnection implements _ResultCloseConnection {
  const _$_ResultCloseConnection({required this.status});

  @override
  final SmtpStatusMessage status;

  @override
  String toString() {
    return 'Result.closeConnection(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResultCloseConnection &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$ResultCloseConnectionCopyWith<_ResultCloseConnection> get copyWith =>
      __$ResultCloseConnectionCopyWithImpl<_ResultCloseConnection>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SmtpStatusMessage status) success,
    required TResult Function(SmtpStatusMessage status) error,
    required TResult Function(SmtpStatusMessage status,
            Future<SmtpStatusMessage?> Function(String) readLine)
        inProgress,
    required TResult Function(SmtpStatusMessage status) closeConnection,
  }) {
    return closeConnection(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SmtpStatusMessage status)? success,
    TResult Function(SmtpStatusMessage status)? error,
    TResult Function(SmtpStatusMessage status,
            Future<SmtpStatusMessage?> Function(String) readLine)?
        inProgress,
    TResult Function(SmtpStatusMessage status)? closeConnection,
    required TResult orElse(),
  }) {
    if (closeConnection != null) {
      return closeConnection(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResultSuccess value) success,
    required TResult Function(_ResultError value) error,
    required TResult Function(_ResultInProgress value) inProgress,
    required TResult Function(_ResultCloseConnection value) closeConnection,
  }) {
    return closeConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultSuccess value)? success,
    TResult Function(_ResultError value)? error,
    TResult Function(_ResultInProgress value)? inProgress,
    TResult Function(_ResultCloseConnection value)? closeConnection,
    required TResult orElse(),
  }) {
    if (closeConnection != null) {
      return closeConnection(this);
    }
    return orElse();
  }
}

abstract class _ResultCloseConnection implements Result {
  const factory _ResultCloseConnection({required SmtpStatusMessage status}) =
      _$_ResultCloseConnection;

  @override
  SmtpStatusMessage get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ResultCloseConnectionCopyWith<_ResultCloseConnection> get copyWith =>
      throw _privateConstructorUsedError;
}
