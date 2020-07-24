// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'smtpd_commands.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ResultTearOff {
  const _$ResultTearOff();

// ignore: unused_element
  _ResultSuccess success({@required SmtpStatusMessage status}) {
    return _ResultSuccess(
      status: status,
    );
  }

// ignore: unused_element
  _ResultError error({@required SmtpStatusMessage status}) {
    return _ResultError(
      status: status,
    );
  }

// ignore: unused_element
  _ResultInProgress inProgress(
      {@required SmtpStatusMessage status,
      @required Future<SmtpStatusMessage> Function(String) readLine}) {
    return _ResultInProgress(
      status: status,
      readLine: readLine,
    );
  }

// ignore: unused_element
  _ResultCloseConnection closeConnection({@required SmtpStatusMessage status}) {
    return _ResultCloseConnection(
      status: status,
    );
  }
}

// ignore: unused_element
const $Result = _$ResultTearOff();

mixin _$Result {
  SmtpStatusMessage get status;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(SmtpStatusMessage status),
    @required Result error(SmtpStatusMessage status),
    @required
        Result inProgress(SmtpStatusMessage status,
            Future<SmtpStatusMessage> Function(String) readLine),
    @required Result closeConnection(SmtpStatusMessage status),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(SmtpStatusMessage status),
    Result error(SmtpStatusMessage status),
    Result inProgress(SmtpStatusMessage status,
        Future<SmtpStatusMessage> Function(String) readLine),
    Result closeConnection(SmtpStatusMessage status),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(_ResultSuccess value),
    @required Result error(_ResultError value),
    @required Result inProgress(_ResultInProgress value),
    @required Result closeConnection(_ResultCloseConnection value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(_ResultSuccess value),
    Result error(_ResultError value),
    Result inProgress(_ResultInProgress value),
    Result closeConnection(_ResultCloseConnection value),
    @required Result orElse(),
  });

  $ResultCopyWith<Result> get copyWith;
}

abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res>;
  $Res call({SmtpStatusMessage status});
}

class _$ResultCopyWithImpl<$Res> implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  final Result _value;
  // ignore: unused_field
  final $Res Function(Result) _then;

  @override
  $Res call({
    Object status = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed ? _value.status : status as SmtpStatusMessage,
    ));
  }
}

abstract class _$ResultSuccessCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$ResultSuccessCopyWith(
          _ResultSuccess value, $Res Function(_ResultSuccess) then) =
      __$ResultSuccessCopyWithImpl<$Res>;
  @override
  $Res call({SmtpStatusMessage status});
}

class __$ResultSuccessCopyWithImpl<$Res> extends _$ResultCopyWithImpl<$Res>
    implements _$ResultSuccessCopyWith<$Res> {
  __$ResultSuccessCopyWithImpl(
      _ResultSuccess _value, $Res Function(_ResultSuccess) _then)
      : super(_value, (v) => _then(v as _ResultSuccess));

  @override
  _ResultSuccess get _value => super._value as _ResultSuccess;

  @override
  $Res call({
    Object status = freezed,
  }) {
    return _then(_ResultSuccess(
      status: status == freezed ? _value.status : status as SmtpStatusMessage,
    ));
  }
}

class _$_ResultSuccess implements _ResultSuccess {
  const _$_ResultSuccess({@required this.status}) : assert(status != null);

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

  @override
  _$ResultSuccessCopyWith<_ResultSuccess> get copyWith =>
      __$ResultSuccessCopyWithImpl<_ResultSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(SmtpStatusMessage status),
    @required Result error(SmtpStatusMessage status),
    @required
        Result inProgress(SmtpStatusMessage status,
            Future<SmtpStatusMessage> Function(String) readLine),
    @required Result closeConnection(SmtpStatusMessage status),
  }) {
    assert(success != null);
    assert(error != null);
    assert(inProgress != null);
    assert(closeConnection != null);
    return success(status);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(SmtpStatusMessage status),
    Result error(SmtpStatusMessage status),
    Result inProgress(SmtpStatusMessage status,
        Future<SmtpStatusMessage> Function(String) readLine),
    Result closeConnection(SmtpStatusMessage status),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(_ResultSuccess value),
    @required Result error(_ResultError value),
    @required Result inProgress(_ResultInProgress value),
    @required Result closeConnection(_ResultCloseConnection value),
  }) {
    assert(success != null);
    assert(error != null);
    assert(inProgress != null);
    assert(closeConnection != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(_ResultSuccess value),
    Result error(_ResultError value),
    Result inProgress(_ResultInProgress value),
    Result closeConnection(_ResultCloseConnection value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _ResultSuccess implements Result {
  const factory _ResultSuccess({@required SmtpStatusMessage status}) =
      _$_ResultSuccess;

  @override
  SmtpStatusMessage get status;
  @override
  _$ResultSuccessCopyWith<_ResultSuccess> get copyWith;
}

abstract class _$ResultErrorCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$ResultErrorCopyWith(
          _ResultError value, $Res Function(_ResultError) then) =
      __$ResultErrorCopyWithImpl<$Res>;
  @override
  $Res call({SmtpStatusMessage status});
}

class __$ResultErrorCopyWithImpl<$Res> extends _$ResultCopyWithImpl<$Res>
    implements _$ResultErrorCopyWith<$Res> {
  __$ResultErrorCopyWithImpl(
      _ResultError _value, $Res Function(_ResultError) _then)
      : super(_value, (v) => _then(v as _ResultError));

  @override
  _ResultError get _value => super._value as _ResultError;

  @override
  $Res call({
    Object status = freezed,
  }) {
    return _then(_ResultError(
      status: status == freezed ? _value.status : status as SmtpStatusMessage,
    ));
  }
}

class _$_ResultError implements _ResultError {
  const _$_ResultError({@required this.status}) : assert(status != null);

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

  @override
  _$ResultErrorCopyWith<_ResultError> get copyWith =>
      __$ResultErrorCopyWithImpl<_ResultError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(SmtpStatusMessage status),
    @required Result error(SmtpStatusMessage status),
    @required
        Result inProgress(SmtpStatusMessage status,
            Future<SmtpStatusMessage> Function(String) readLine),
    @required Result closeConnection(SmtpStatusMessage status),
  }) {
    assert(success != null);
    assert(error != null);
    assert(inProgress != null);
    assert(closeConnection != null);
    return error(status);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(SmtpStatusMessage status),
    Result error(SmtpStatusMessage status),
    Result inProgress(SmtpStatusMessage status,
        Future<SmtpStatusMessage> Function(String) readLine),
    Result closeConnection(SmtpStatusMessage status),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(_ResultSuccess value),
    @required Result error(_ResultError value),
    @required Result inProgress(_ResultInProgress value),
    @required Result closeConnection(_ResultCloseConnection value),
  }) {
    assert(success != null);
    assert(error != null);
    assert(inProgress != null);
    assert(closeConnection != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(_ResultSuccess value),
    Result error(_ResultError value),
    Result inProgress(_ResultInProgress value),
    Result closeConnection(_ResultCloseConnection value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ResultError implements Result {
  const factory _ResultError({@required SmtpStatusMessage status}) =
      _$_ResultError;

  @override
  SmtpStatusMessage get status;
  @override
  _$ResultErrorCopyWith<_ResultError> get copyWith;
}

abstract class _$ResultInProgressCopyWith<$Res>
    implements $ResultCopyWith<$Res> {
  factory _$ResultInProgressCopyWith(
          _ResultInProgress value, $Res Function(_ResultInProgress) then) =
      __$ResultInProgressCopyWithImpl<$Res>;
  @override
  $Res call(
      {SmtpStatusMessage status,
      Future<SmtpStatusMessage> Function(String) readLine});
}

class __$ResultInProgressCopyWithImpl<$Res> extends _$ResultCopyWithImpl<$Res>
    implements _$ResultInProgressCopyWith<$Res> {
  __$ResultInProgressCopyWithImpl(
      _ResultInProgress _value, $Res Function(_ResultInProgress) _then)
      : super(_value, (v) => _then(v as _ResultInProgress));

  @override
  _ResultInProgress get _value => super._value as _ResultInProgress;

  @override
  $Res call({
    Object status = freezed,
    Object readLine = freezed,
  }) {
    return _then(_ResultInProgress(
      status: status == freezed ? _value.status : status as SmtpStatusMessage,
      readLine: readLine == freezed
          ? _value.readLine
          : readLine as Future<SmtpStatusMessage> Function(String),
    ));
  }
}

class _$_ResultInProgress implements _ResultInProgress {
  const _$_ResultInProgress({@required this.status, @required this.readLine})
      : assert(status != null),
        assert(readLine != null);

  @override
  final SmtpStatusMessage status;
  @override
  final Future<SmtpStatusMessage> Function(String) readLine;

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

  @override
  _$ResultInProgressCopyWith<_ResultInProgress> get copyWith =>
      __$ResultInProgressCopyWithImpl<_ResultInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(SmtpStatusMessage status),
    @required Result error(SmtpStatusMessage status),
    @required
        Result inProgress(SmtpStatusMessage status,
            Future<SmtpStatusMessage> Function(String) readLine),
    @required Result closeConnection(SmtpStatusMessage status),
  }) {
    assert(success != null);
    assert(error != null);
    assert(inProgress != null);
    assert(closeConnection != null);
    return inProgress(status, readLine);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(SmtpStatusMessage status),
    Result error(SmtpStatusMessage status),
    Result inProgress(SmtpStatusMessage status,
        Future<SmtpStatusMessage> Function(String) readLine),
    Result closeConnection(SmtpStatusMessage status),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inProgress != null) {
      return inProgress(status, readLine);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(_ResultSuccess value),
    @required Result error(_ResultError value),
    @required Result inProgress(_ResultInProgress value),
    @required Result closeConnection(_ResultCloseConnection value),
  }) {
    assert(success != null);
    assert(error != null);
    assert(inProgress != null);
    assert(closeConnection != null);
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(_ResultSuccess value),
    Result error(_ResultError value),
    Result inProgress(_ResultInProgress value),
    Result closeConnection(_ResultCloseConnection value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _ResultInProgress implements Result {
  const factory _ResultInProgress(
          {@required SmtpStatusMessage status,
          @required Future<SmtpStatusMessage> Function(String) readLine}) =
      _$_ResultInProgress;

  @override
  SmtpStatusMessage get status;
  Future<SmtpStatusMessage> Function(String) get readLine;
  @override
  _$ResultInProgressCopyWith<_ResultInProgress> get copyWith;
}

abstract class _$ResultCloseConnectionCopyWith<$Res>
    implements $ResultCopyWith<$Res> {
  factory _$ResultCloseConnectionCopyWith(_ResultCloseConnection value,
          $Res Function(_ResultCloseConnection) then) =
      __$ResultCloseConnectionCopyWithImpl<$Res>;
  @override
  $Res call({SmtpStatusMessage status});
}

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
    Object status = freezed,
  }) {
    return _then(_ResultCloseConnection(
      status: status == freezed ? _value.status : status as SmtpStatusMessage,
    ));
  }
}

class _$_ResultCloseConnection implements _ResultCloseConnection {
  const _$_ResultCloseConnection({@required this.status})
      : assert(status != null);

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

  @override
  _$ResultCloseConnectionCopyWith<_ResultCloseConnection> get copyWith =>
      __$ResultCloseConnectionCopyWithImpl<_ResultCloseConnection>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(SmtpStatusMessage status),
    @required Result error(SmtpStatusMessage status),
    @required
        Result inProgress(SmtpStatusMessage status,
            Future<SmtpStatusMessage> Function(String) readLine),
    @required Result closeConnection(SmtpStatusMessage status),
  }) {
    assert(success != null);
    assert(error != null);
    assert(inProgress != null);
    assert(closeConnection != null);
    return closeConnection(status);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(SmtpStatusMessage status),
    Result error(SmtpStatusMessage status),
    Result inProgress(SmtpStatusMessage status,
        Future<SmtpStatusMessage> Function(String) readLine),
    Result closeConnection(SmtpStatusMessage status),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (closeConnection != null) {
      return closeConnection(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(_ResultSuccess value),
    @required Result error(_ResultError value),
    @required Result inProgress(_ResultInProgress value),
    @required Result closeConnection(_ResultCloseConnection value),
  }) {
    assert(success != null);
    assert(error != null);
    assert(inProgress != null);
    assert(closeConnection != null);
    return closeConnection(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(_ResultSuccess value),
    Result error(_ResultError value),
    Result inProgress(_ResultInProgress value),
    Result closeConnection(_ResultCloseConnection value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (closeConnection != null) {
      return closeConnection(this);
    }
    return orElse();
  }
}

abstract class _ResultCloseConnection implements Result {
  const factory _ResultCloseConnection({@required SmtpStatusMessage status}) =
      _$_ResultCloseConnection;

  @override
  SmtpStatusMessage get status;
  @override
  _$ResultCloseConnectionCopyWith<_ResultCloseConnection> get copyWith;
}
