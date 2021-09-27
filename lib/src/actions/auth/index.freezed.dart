// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of auth_actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ForgotPasswordTearOff {
  const _$ForgotPasswordTearOff();

// ignore: unused_element
  ForgotPassword$ call(String email) {
    return ForgotPassword$(
      email,
    );
  }

// ignore: unused_element
  ForgotPasswordSuccessful successful() {
    return const ForgotPasswordSuccessful();
  }

// ignore: unused_element
  ForgotPasswordError error(Object error) {
    return ForgotPasswordError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ForgotPassword = _$ForgotPasswordTearOff();

/// @nodoc
mixin _$ForgotPassword {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String email), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String email), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(ForgotPassword$ value), {
    @required Result successful(ForgotPasswordSuccessful value),
    @required Result error(ForgotPasswordError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(ForgotPassword$ value), {
    Result successful(ForgotPasswordSuccessful value),
    Result error(ForgotPasswordError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ForgotPasswordCopyWith<$Res> {
  factory $ForgotPasswordCopyWith(
          ForgotPassword value, $Res Function(ForgotPassword) then) =
      _$ForgotPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class _$ForgotPasswordCopyWithImpl<$Res>
    implements $ForgotPasswordCopyWith<$Res> {
  _$ForgotPasswordCopyWithImpl(this._value, this._then);

  final ForgotPassword _value;
  // ignore: unused_field
  final $Res Function(ForgotPassword) _then;
}

/// @nodoc
abstract class $ForgotPassword$CopyWith<$Res> {
  factory $ForgotPassword$CopyWith(
          ForgotPassword$ value, $Res Function(ForgotPassword$) then) =
      _$ForgotPassword$CopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$ForgotPassword$CopyWithImpl<$Res>
    extends _$ForgotPasswordCopyWithImpl<$Res>
    implements $ForgotPassword$CopyWith<$Res> {
  _$ForgotPassword$CopyWithImpl(
      ForgotPassword$ _value, $Res Function(ForgotPassword$) _then)
      : super(_value, (v) => _then(v as ForgotPassword$));

  @override
  ForgotPassword$ get _value => super._value as ForgotPassword$;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(ForgotPassword$(
      email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$ForgotPassword$ implements ForgotPassword$ {
  const _$ForgotPassword$(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'ForgotPassword(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ForgotPassword$ &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  $ForgotPassword$CopyWith<ForgotPassword$> get copyWith =>
      _$ForgotPassword$CopyWithImpl<ForgotPassword$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String email), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String email), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(ForgotPassword$ value), {
    @required Result successful(ForgotPasswordSuccessful value),
    @required Result error(ForgotPasswordError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(ForgotPassword$ value), {
    Result successful(ForgotPasswordSuccessful value),
    Result error(ForgotPasswordError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class ForgotPassword$ implements ForgotPassword {
  const factory ForgotPassword$(String email) = _$ForgotPassword$;

  String get email;
  $ForgotPassword$CopyWith<ForgotPassword$> get copyWith;
}

/// @nodoc
abstract class $ForgotPasswordSuccessfulCopyWith<$Res> {
  factory $ForgotPasswordSuccessfulCopyWith(ForgotPasswordSuccessful value,
          $Res Function(ForgotPasswordSuccessful) then) =
      _$ForgotPasswordSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$ForgotPasswordSuccessfulCopyWithImpl<$Res>
    extends _$ForgotPasswordCopyWithImpl<$Res>
    implements $ForgotPasswordSuccessfulCopyWith<$Res> {
  _$ForgotPasswordSuccessfulCopyWithImpl(ForgotPasswordSuccessful _value,
      $Res Function(ForgotPasswordSuccessful) _then)
      : super(_value, (v) => _then(v as ForgotPasswordSuccessful));

  @override
  ForgotPasswordSuccessful get _value =>
      super._value as ForgotPasswordSuccessful;
}

/// @nodoc
class _$ForgotPasswordSuccessful implements ForgotPasswordSuccessful {
  const _$ForgotPasswordSuccessful();

  @override
  String toString() {
    return 'ForgotPassword.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ForgotPasswordSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String email), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String email), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(ForgotPassword$ value), {
    @required Result successful(ForgotPasswordSuccessful value),
    @required Result error(ForgotPasswordError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(ForgotPassword$ value), {
    Result successful(ForgotPasswordSuccessful value),
    Result error(ForgotPasswordError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordSuccessful implements ForgotPassword {
  const factory ForgotPasswordSuccessful() = _$ForgotPasswordSuccessful;
}

/// @nodoc
abstract class $ForgotPasswordErrorCopyWith<$Res> {
  factory $ForgotPasswordErrorCopyWith(
          ForgotPasswordError value, $Res Function(ForgotPasswordError) then) =
      _$ForgotPasswordErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$ForgotPasswordErrorCopyWithImpl<$Res>
    extends _$ForgotPasswordCopyWithImpl<$Res>
    implements $ForgotPasswordErrorCopyWith<$Res> {
  _$ForgotPasswordErrorCopyWithImpl(
      ForgotPasswordError _value, $Res Function(ForgotPasswordError) _then)
      : super(_value, (v) => _then(v as ForgotPasswordError));

  @override
  ForgotPasswordError get _value => super._value as ForgotPasswordError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(ForgotPasswordError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$ForgotPasswordError implements ForgotPasswordError {
  const _$ForgotPasswordError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'ForgotPassword.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ForgotPasswordError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $ForgotPasswordErrorCopyWith<ForgotPasswordError> get copyWith =>
      _$ForgotPasswordErrorCopyWithImpl<ForgotPasswordError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String email), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String email), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(ForgotPassword$ value), {
    @required Result successful(ForgotPasswordSuccessful value),
    @required Result error(ForgotPasswordError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(ForgotPassword$ value), {
    Result successful(ForgotPasswordSuccessful value),
    Result error(ForgotPasswordError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordError implements ForgotPassword, ErrorAction {
  const factory ForgotPasswordError(Object error) = _$ForgotPasswordError;

  Object get error;
  $ForgotPasswordErrorCopyWith<ForgotPasswordError> get copyWith;
}

/// @nodoc
class _$LogoutTearOff {
  const _$LogoutTearOff();

// ignore: unused_element
  Logout$ call() {
    return const Logout$();
  }

// ignore: unused_element
  LogoutSuccessful successful() {
    return const LogoutSuccessful();
  }

// ignore: unused_element
  LogoutError error(Object error) {
    return LogoutError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Logout = _$LogoutTearOff();

/// @nodoc
mixin _$Logout {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Logout$ value), {
    @required Result successful(LogoutSuccessful value),
    @required Result error(LogoutError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Logout$ value), {
    Result successful(LogoutSuccessful value),
    Result error(LogoutError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $LogoutCopyWith<$Res> {
  factory $LogoutCopyWith(Logout value, $Res Function(Logout) then) =
      _$LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogoutCopyWithImpl<$Res> implements $LogoutCopyWith<$Res> {
  _$LogoutCopyWithImpl(this._value, this._then);

  final Logout _value;
  // ignore: unused_field
  final $Res Function(Logout) _then;
}

/// @nodoc
abstract class $Logout$CopyWith<$Res> {
  factory $Logout$CopyWith(Logout$ value, $Res Function(Logout$) then) =
      _$Logout$CopyWithImpl<$Res>;
}

/// @nodoc
class _$Logout$CopyWithImpl<$Res> extends _$LogoutCopyWithImpl<$Res>
    implements $Logout$CopyWith<$Res> {
  _$Logout$CopyWithImpl(Logout$ _value, $Res Function(Logout$) _then)
      : super(_value, (v) => _then(v as Logout$));

  @override
  Logout$ get _value => super._value as Logout$;
}

/// @nodoc
class _$Logout$ implements Logout$ {
  const _$Logout$();

  @override
  String toString() {
    return 'Logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Logout$);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Logout$ value), {
    @required Result successful(LogoutSuccessful value),
    @required Result error(LogoutError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Logout$ value), {
    Result successful(LogoutSuccessful value),
    Result error(LogoutError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class Logout$ implements Logout {
  const factory Logout$() = _$Logout$;
}

/// @nodoc
abstract class $LogoutSuccessfulCopyWith<$Res> {
  factory $LogoutSuccessfulCopyWith(
          LogoutSuccessful value, $Res Function(LogoutSuccessful) then) =
      _$LogoutSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogoutSuccessfulCopyWithImpl<$Res> extends _$LogoutCopyWithImpl<$Res>
    implements $LogoutSuccessfulCopyWith<$Res> {
  _$LogoutSuccessfulCopyWithImpl(
      LogoutSuccessful _value, $Res Function(LogoutSuccessful) _then)
      : super(_value, (v) => _then(v as LogoutSuccessful));

  @override
  LogoutSuccessful get _value => super._value as LogoutSuccessful;
}

/// @nodoc
class _$LogoutSuccessful implements LogoutSuccessful {
  const _$LogoutSuccessful();

  @override
  String toString() {
    return 'Logout.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LogoutSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Logout$ value), {
    @required Result successful(LogoutSuccessful value),
    @required Result error(LogoutError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Logout$ value), {
    Result successful(LogoutSuccessful value),
    Result error(LogoutError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class LogoutSuccessful implements Logout {
  const factory LogoutSuccessful() = _$LogoutSuccessful;
}

/// @nodoc
abstract class $LogoutErrorCopyWith<$Res> {
  factory $LogoutErrorCopyWith(
          LogoutError value, $Res Function(LogoutError) then) =
      _$LogoutErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$LogoutErrorCopyWithImpl<$Res> extends _$LogoutCopyWithImpl<$Res>
    implements $LogoutErrorCopyWith<$Res> {
  _$LogoutErrorCopyWithImpl(
      LogoutError _value, $Res Function(LogoutError) _then)
      : super(_value, (v) => _then(v as LogoutError));

  @override
  LogoutError get _value => super._value as LogoutError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(LogoutError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$LogoutError implements LogoutError {
  const _$LogoutError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'Logout.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LogoutError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $LogoutErrorCopyWith<LogoutError> get copyWith =>
      _$LogoutErrorCopyWithImpl<LogoutError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Logout$ value), {
    @required Result successful(LogoutSuccessful value),
    @required Result error(LogoutError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Logout$ value), {
    Result successful(LogoutSuccessful value),
    Result error(LogoutError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LogoutError implements Logout, ErrorAction {
  const factory LogoutError(Object error) = _$LogoutError;

  Object get error;
  $LogoutErrorCopyWith<LogoutError> get copyWith;
}

/// @nodoc
class _$LoginTearOff {
  const _$LoginTearOff();

// ignore: unused_element
  Login$ call(
      {@required String email,
      @required String password,
      @required void Function(AppAction) response}) {
    return Login$(
      email: email,
      password: password,
      response: response,
    );
  }

// ignore: unused_element
  LoginSuccessful successful(AppUser user) {
    return LoginSuccessful(
      user,
    );
  }

// ignore: unused_element
  LoginError error(Object error) {
    return LoginError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Login = _$LoginTearOff();

/// @nodoc
mixin _$Login {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        String email, String password, void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        String email, String password, void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Login$ value), {
    @required Result successful(LoginSuccessful value),
    @required Result error(LoginError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Login$ value), {
    Result successful(LoginSuccessful value),
    Result error(LoginError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $LoginCopyWith<$Res> {
  factory $LoginCopyWith(Login value, $Res Function(Login) then) =
      _$LoginCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginCopyWithImpl<$Res> implements $LoginCopyWith<$Res> {
  _$LoginCopyWithImpl(this._value, this._then);

  final Login _value;
  // ignore: unused_field
  final $Res Function(Login) _then;
}

/// @nodoc
abstract class $Login$CopyWith<$Res> {
  factory $Login$CopyWith(Login$ value, $Res Function(Login$) then) =
      _$Login$CopyWithImpl<$Res>;
  $Res call({String email, String password, void Function(AppAction) response});
}

/// @nodoc
class _$Login$CopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res>
    implements $Login$CopyWith<$Res> {
  _$Login$CopyWithImpl(Login$ _value, $Res Function(Login$) _then)
      : super(_value, (v) => _then(v as Login$));

  @override
  Login$ get _value => super._value as Login$;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object response = freezed,
  }) {
    return _then(Login$(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      response: response == freezed
          ? _value.response
          : response as void Function(AppAction),
    ));
  }
}

/// @nodoc
class _$Login$ implements Login$ {
  const _$Login$(
      {@required this.email, @required this.password, @required this.response})
      : assert(email != null),
        assert(password != null),
        assert(response != null);

  @override
  final String email;
  @override
  final String password;
  @override
  final void Function(AppAction) response;

  @override
  String toString() {
    return 'Login(email: $email, password: $password, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Login$ &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(response);

  @override
  $Login$CopyWith<Login$> get copyWith =>
      _$Login$CopyWithImpl<Login$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        String email, String password, void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(email, password, response);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        String email, String password, void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(email, password, response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Login$ value), {
    @required Result successful(LoginSuccessful value),
    @required Result error(LoginError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Login$ value), {
    Result successful(LoginSuccessful value),
    Result error(LoginError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class Login$ implements Login {
  const factory Login$(
      {@required String email,
      @required String password,
      @required void Function(AppAction) response}) = _$Login$;

  String get email;
  String get password;
  void Function(AppAction) get response;
  $Login$CopyWith<Login$> get copyWith;
}

/// @nodoc
abstract class $LoginSuccessfulCopyWith<$Res> {
  factory $LoginSuccessfulCopyWith(
          LoginSuccessful value, $Res Function(LoginSuccessful) then) =
      _$LoginSuccessfulCopyWithImpl<$Res>;
  $Res call({AppUser user});
}

/// @nodoc
class _$LoginSuccessfulCopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res>
    implements $LoginSuccessfulCopyWith<$Res> {
  _$LoginSuccessfulCopyWithImpl(
      LoginSuccessful _value, $Res Function(LoginSuccessful) _then)
      : super(_value, (v) => _then(v as LoginSuccessful));

  @override
  LoginSuccessful get _value => super._value as LoginSuccessful;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(LoginSuccessful(
      user == freezed ? _value.user : user as AppUser,
    ));
  }
}

/// @nodoc
class _$LoginSuccessful implements LoginSuccessful {
  const _$LoginSuccessful(this.user) : assert(user != null);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'Login.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginSuccessful &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $LoginSuccessfulCopyWith<LoginSuccessful> get copyWith =>
      _$LoginSuccessfulCopyWithImpl<LoginSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        String email, String password, void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        String email, String password, void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Login$ value), {
    @required Result successful(LoginSuccessful value),
    @required Result error(LoginError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Login$ value), {
    Result successful(LoginSuccessful value),
    Result error(LoginError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class LoginSuccessful implements Login {
  const factory LoginSuccessful(AppUser user) = _$LoginSuccessful;

  AppUser get user;
  $LoginSuccessfulCopyWith<LoginSuccessful> get copyWith;
}

/// @nodoc
abstract class $LoginErrorCopyWith<$Res> {
  factory $LoginErrorCopyWith(
          LoginError value, $Res Function(LoginError) then) =
      _$LoginErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$LoginErrorCopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res>
    implements $LoginErrorCopyWith<$Res> {
  _$LoginErrorCopyWithImpl(LoginError _value, $Res Function(LoginError) _then)
      : super(_value, (v) => _then(v as LoginError));

  @override
  LoginError get _value => super._value as LoginError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(LoginError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$LoginError implements LoginError {
  const _$LoginError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'Login.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $LoginErrorCopyWith<LoginError> get copyWith =>
      _$LoginErrorCopyWithImpl<LoginError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        String email, String password, void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        String email, String password, void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Login$ value), {
    @required Result successful(LoginSuccessful value),
    @required Result error(LoginError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Login$ value), {
    Result successful(LoginSuccessful value),
    Result error(LoginError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LoginError implements Login, ErrorAction {
  const factory LoginError(Object error) = _$LoginError;

  Object get error;
  $LoginErrorCopyWith<LoginError> get copyWith;
}

/// @nodoc
class _$RegisterTearOff {
  const _$RegisterTearOff();

// ignore: unused_element
  Register$ call(void Function(AppAction) response) {
    return Register$(
      response,
    );
  }

// ignore: unused_element
  RegisterSuccessful successful(AppUser user) {
    return RegisterSuccessful(
      user,
    );
  }

// ignore: unused_element
  RegisterError error(Object error) {
    return RegisterError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Register = _$RegisterTearOff();

/// @nodoc
mixin _$Register {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Register$ value), {
    @required Result successful(RegisterSuccessful value),
    @required Result error(RegisterError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Register$ value), {
    Result successful(RegisterSuccessful value),
    Result error(RegisterError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $RegisterCopyWith<$Res> {
  factory $RegisterCopyWith(Register value, $Res Function(Register) then) =
      _$RegisterCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterCopyWithImpl<$Res> implements $RegisterCopyWith<$Res> {
  _$RegisterCopyWithImpl(this._value, this._then);

  final Register _value;
  // ignore: unused_field
  final $Res Function(Register) _then;
}

/// @nodoc
abstract class $Register$CopyWith<$Res> {
  factory $Register$CopyWith(Register$ value, $Res Function(Register$) then) =
      _$Register$CopyWithImpl<$Res>;
  $Res call({void Function(AppAction) response});
}

/// @nodoc
class _$Register$CopyWithImpl<$Res> extends _$RegisterCopyWithImpl<$Res>
    implements $Register$CopyWith<$Res> {
  _$Register$CopyWithImpl(Register$ _value, $Res Function(Register$) _then)
      : super(_value, (v) => _then(v as Register$));

  @override
  Register$ get _value => super._value as Register$;

  @override
  $Res call({
    Object response = freezed,
  }) {
    return _then(Register$(
      response == freezed
          ? _value.response
          : response as void Function(AppAction),
    ));
  }
}

/// @nodoc
class _$Register$ implements Register$ {
  const _$Register$(this.response) : assert(response != null);

  @override
  final void Function(AppAction) response;

  @override
  String toString() {
    return 'Register(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Register$ &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @override
  $Register$CopyWith<Register$> get copyWith =>
      _$Register$CopyWithImpl<Register$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(response);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Register$ value), {
    @required Result successful(RegisterSuccessful value),
    @required Result error(RegisterError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Register$ value), {
    Result successful(RegisterSuccessful value),
    Result error(RegisterError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class Register$ implements Register {
  const factory Register$(void Function(AppAction) response) = _$Register$;

  void Function(AppAction) get response;
  $Register$CopyWith<Register$> get copyWith;
}

/// @nodoc
abstract class $RegisterSuccessfulCopyWith<$Res> {
  factory $RegisterSuccessfulCopyWith(
          RegisterSuccessful value, $Res Function(RegisterSuccessful) then) =
      _$RegisterSuccessfulCopyWithImpl<$Res>;
  $Res call({AppUser user});
}

/// @nodoc
class _$RegisterSuccessfulCopyWithImpl<$Res>
    extends _$RegisterCopyWithImpl<$Res>
    implements $RegisterSuccessfulCopyWith<$Res> {
  _$RegisterSuccessfulCopyWithImpl(
      RegisterSuccessful _value, $Res Function(RegisterSuccessful) _then)
      : super(_value, (v) => _then(v as RegisterSuccessful));

  @override
  RegisterSuccessful get _value => super._value as RegisterSuccessful;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(RegisterSuccessful(
      user == freezed ? _value.user : user as AppUser,
    ));
  }
}

/// @nodoc
class _$RegisterSuccessful implements RegisterSuccessful {
  const _$RegisterSuccessful(this.user) : assert(user != null);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'Register.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterSuccessful &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $RegisterSuccessfulCopyWith<RegisterSuccessful> get copyWith =>
      _$RegisterSuccessfulCopyWithImpl<RegisterSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Register$ value), {
    @required Result successful(RegisterSuccessful value),
    @required Result error(RegisterError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Register$ value), {
    Result successful(RegisterSuccessful value),
    Result error(RegisterError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class RegisterSuccessful implements Register {
  const factory RegisterSuccessful(AppUser user) = _$RegisterSuccessful;

  AppUser get user;
  $RegisterSuccessfulCopyWith<RegisterSuccessful> get copyWith;
}

/// @nodoc
abstract class $RegisterErrorCopyWith<$Res> {
  factory $RegisterErrorCopyWith(
          RegisterError value, $Res Function(RegisterError) then) =
      _$RegisterErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$RegisterErrorCopyWithImpl<$Res> extends _$RegisterCopyWithImpl<$Res>
    implements $RegisterErrorCopyWith<$Res> {
  _$RegisterErrorCopyWithImpl(
      RegisterError _value, $Res Function(RegisterError) _then)
      : super(_value, (v) => _then(v as RegisterError));

  @override
  RegisterError get _value => super._value as RegisterError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(RegisterError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$RegisterError implements RegisterError {
  const _$RegisterError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'Register.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $RegisterErrorCopyWith<RegisterError> get copyWith =>
      _$RegisterErrorCopyWithImpl<RegisterError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Register$ value), {
    @required Result successful(RegisterSuccessful value),
    @required Result error(RegisterError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Register$ value), {
    Result successful(RegisterSuccessful value),
    Result error(RegisterError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RegisterError implements Register, ErrorAction {
  const factory RegisterError(Object error) = _$RegisterError;

  Object get error;
  $RegisterErrorCopyWith<RegisterError> get copyWith;
}

/// @nodoc
class _$UpdateRegisterInfoTearOff {
  const _$UpdateRegisterInfoTearOff();

// ignore: unused_element
  UpdateRegisterInfo$ call(
      {String email,
      String password,
      String username,
      DateTime birthDate,
      String location,
      String cars,
      String photoUrl,
      String firstName,
      String lastName,
      String serviceName,
      String serviceLocation,
      String servicePhone,
      bool isAutoElectricianService,
      bool isCarBodyRepairsService,
      bool isCarDealershipService,
      bool isCarDiagnosticsService,
      bool isCarInssuranceService,
      bool isCarRentalService,
      bool isDetailingService,
      bool isEngineDecarbonizationService,
      bool isParticleFilterCleaningService,
      bool isServiceAndRepairs,
      bool isTowingService,
      bool isTuningService,
      bool isVulcanisingService,
      bool isWrappingService,
      String serviceDescription,
      String mondayServiceHours,
      String tuesdayServiceHours,
      String wednesdayServiceHours,
      String thursdayServiceHours,
      String fridayServiceHours,
      String saturdayServiceHours,
      String sundayServiceHours,
      bool isServiceAvailable,
      String serviceCoverPhotoUrl,
      String serviceProfilePhotoUrl}) {
    return UpdateRegisterInfo$(
      email: email,
      password: password,
      username: username,
      birthDate: birthDate,
      location: location,
      cars: cars,
      photoUrl: photoUrl,
      firstName: firstName,
      lastName: lastName,
      serviceName: serviceName,
      serviceLocation: serviceLocation,
      servicePhone: servicePhone,
      isAutoElectricianService: isAutoElectricianService,
      isCarBodyRepairsService: isCarBodyRepairsService,
      isCarDealershipService: isCarDealershipService,
      isCarDiagnosticsService: isCarDiagnosticsService,
      isCarInssuranceService: isCarInssuranceService,
      isCarRentalService: isCarRentalService,
      isDetailingService: isDetailingService,
      isEngineDecarbonizationService: isEngineDecarbonizationService,
      isParticleFilterCleaningService: isParticleFilterCleaningService,
      isServiceAndRepairs: isServiceAndRepairs,
      isTowingService: isTowingService,
      isTuningService: isTuningService,
      isVulcanisingService: isVulcanisingService,
      isWrappingService: isWrappingService,
      serviceDescription: serviceDescription,
      mondayServiceHours: mondayServiceHours,
      tuesdayServiceHours: tuesdayServiceHours,
      wednesdayServiceHours: wednesdayServiceHours,
      thursdayServiceHours: thursdayServiceHours,
      fridayServiceHours: fridayServiceHours,
      saturdayServiceHours: saturdayServiceHours,
      sundayServiceHours: sundayServiceHours,
      isServiceAvailable: isServiceAvailable,
      serviceCoverPhotoUrl: serviceCoverPhotoUrl,
      serviceProfilePhotoUrl: serviceProfilePhotoUrl,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateRegisterInfo = _$UpdateRegisterInfoTearOff();

/// @nodoc
mixin _$UpdateRegisterInfo {
  String get email;
  String get password;
  String get username;
  DateTime get birthDate;
  String get location;
  String get cars;
  String get photoUrl;
  String get firstName;
  String get lastName;
  String get serviceName;
  String get serviceLocation;
  String get servicePhone;
  bool get isAutoElectricianService;
  bool get isCarBodyRepairsService;
  bool get isCarDealershipService;
  bool get isCarDiagnosticsService;
  bool get isCarInssuranceService;
  bool get isCarRentalService;
  bool get isDetailingService;
  bool get isEngineDecarbonizationService;
  bool get isParticleFilterCleaningService;
  bool get isServiceAndRepairs;
  bool get isTowingService;
  bool get isTuningService;
  bool get isVulcanisingService;
  bool get isWrappingService;
  String get serviceDescription;
  String get mondayServiceHours;
  String get tuesdayServiceHours;
  String get wednesdayServiceHours;
  String get thursdayServiceHours;
  String get fridayServiceHours;
  String get saturdayServiceHours;
  String get sundayServiceHours;
  bool get isServiceAvailable;
  String get serviceCoverPhotoUrl;
  String get serviceProfilePhotoUrl;

  $UpdateRegisterInfoCopyWith<UpdateRegisterInfo> get copyWith;
}

/// @nodoc
abstract class $UpdateRegisterInfoCopyWith<$Res> {
  factory $UpdateRegisterInfoCopyWith(
          UpdateRegisterInfo value, $Res Function(UpdateRegisterInfo) then) =
      _$UpdateRegisterInfoCopyWithImpl<$Res>;
  $Res call(
      {String email,
      String password,
      String username,
      DateTime birthDate,
      String location,
      String cars,
      String photoUrl,
      String firstName,
      String lastName,
      String serviceName,
      String serviceLocation,
      String servicePhone,
      bool isAutoElectricianService,
      bool isCarBodyRepairsService,
      bool isCarDealershipService,
      bool isCarDiagnosticsService,
      bool isCarInssuranceService,
      bool isCarRentalService,
      bool isDetailingService,
      bool isEngineDecarbonizationService,
      bool isParticleFilterCleaningService,
      bool isServiceAndRepairs,
      bool isTowingService,
      bool isTuningService,
      bool isVulcanisingService,
      bool isWrappingService,
      String serviceDescription,
      String mondayServiceHours,
      String tuesdayServiceHours,
      String wednesdayServiceHours,
      String thursdayServiceHours,
      String fridayServiceHours,
      String saturdayServiceHours,
      String sundayServiceHours,
      bool isServiceAvailable,
      String serviceCoverPhotoUrl,
      String serviceProfilePhotoUrl});
}

/// @nodoc
class _$UpdateRegisterInfoCopyWithImpl<$Res>
    implements $UpdateRegisterInfoCopyWith<$Res> {
  _$UpdateRegisterInfoCopyWithImpl(this._value, this._then);

  final UpdateRegisterInfo _value;
  // ignore: unused_field
  final $Res Function(UpdateRegisterInfo) _then;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object username = freezed,
    Object birthDate = freezed,
    Object location = freezed,
    Object cars = freezed,
    Object photoUrl = freezed,
    Object firstName = freezed,
    Object lastName = freezed,
    Object serviceName = freezed,
    Object serviceLocation = freezed,
    Object servicePhone = freezed,
    Object isAutoElectricianService = freezed,
    Object isCarBodyRepairsService = freezed,
    Object isCarDealershipService = freezed,
    Object isCarDiagnosticsService = freezed,
    Object isCarInssuranceService = freezed,
    Object isCarRentalService = freezed,
    Object isDetailingService = freezed,
    Object isEngineDecarbonizationService = freezed,
    Object isParticleFilterCleaningService = freezed,
    Object isServiceAndRepairs = freezed,
    Object isTowingService = freezed,
    Object isTuningService = freezed,
    Object isVulcanisingService = freezed,
    Object isWrappingService = freezed,
    Object serviceDescription = freezed,
    Object mondayServiceHours = freezed,
    Object tuesdayServiceHours = freezed,
    Object wednesdayServiceHours = freezed,
    Object thursdayServiceHours = freezed,
    Object fridayServiceHours = freezed,
    Object saturdayServiceHours = freezed,
    Object sundayServiceHours = freezed,
    Object isServiceAvailable = freezed,
    Object serviceCoverPhotoUrl = freezed,
    Object serviceProfilePhotoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      username: username == freezed ? _value.username : username as String,
      birthDate:
          birthDate == freezed ? _value.birthDate : birthDate as DateTime,
      location: location == freezed ? _value.location : location as String,
      cars: cars == freezed ? _value.cars : cars as String,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      serviceName:
          serviceName == freezed ? _value.serviceName : serviceName as String,
      serviceLocation: serviceLocation == freezed
          ? _value.serviceLocation
          : serviceLocation as String,
      servicePhone: servicePhone == freezed
          ? _value.servicePhone
          : servicePhone as String,
      isAutoElectricianService: isAutoElectricianService == freezed
          ? _value.isAutoElectricianService
          : isAutoElectricianService as bool,
      isCarBodyRepairsService: isCarBodyRepairsService == freezed
          ? _value.isCarBodyRepairsService
          : isCarBodyRepairsService as bool,
      isCarDealershipService: isCarDealershipService == freezed
          ? _value.isCarDealershipService
          : isCarDealershipService as bool,
      isCarDiagnosticsService: isCarDiagnosticsService == freezed
          ? _value.isCarDiagnosticsService
          : isCarDiagnosticsService as bool,
      isCarInssuranceService: isCarInssuranceService == freezed
          ? _value.isCarInssuranceService
          : isCarInssuranceService as bool,
      isCarRentalService: isCarRentalService == freezed
          ? _value.isCarRentalService
          : isCarRentalService as bool,
      isDetailingService: isDetailingService == freezed
          ? _value.isDetailingService
          : isDetailingService as bool,
      isEngineDecarbonizationService: isEngineDecarbonizationService == freezed
          ? _value.isEngineDecarbonizationService
          : isEngineDecarbonizationService as bool,
      isParticleFilterCleaningService:
          isParticleFilterCleaningService == freezed
              ? _value.isParticleFilterCleaningService
              : isParticleFilterCleaningService as bool,
      isServiceAndRepairs: isServiceAndRepairs == freezed
          ? _value.isServiceAndRepairs
          : isServiceAndRepairs as bool,
      isTowingService: isTowingService == freezed
          ? _value.isTowingService
          : isTowingService as bool,
      isTuningService: isTuningService == freezed
          ? _value.isTuningService
          : isTuningService as bool,
      isVulcanisingService: isVulcanisingService == freezed
          ? _value.isVulcanisingService
          : isVulcanisingService as bool,
      isWrappingService: isWrappingService == freezed
          ? _value.isWrappingService
          : isWrappingService as bool,
      serviceDescription: serviceDescription == freezed
          ? _value.serviceDescription
          : serviceDescription as String,
      mondayServiceHours: mondayServiceHours == freezed
          ? _value.mondayServiceHours
          : mondayServiceHours as String,
      tuesdayServiceHours: tuesdayServiceHours == freezed
          ? _value.tuesdayServiceHours
          : tuesdayServiceHours as String,
      wednesdayServiceHours: wednesdayServiceHours == freezed
          ? _value.wednesdayServiceHours
          : wednesdayServiceHours as String,
      thursdayServiceHours: thursdayServiceHours == freezed
          ? _value.thursdayServiceHours
          : thursdayServiceHours as String,
      fridayServiceHours: fridayServiceHours == freezed
          ? _value.fridayServiceHours
          : fridayServiceHours as String,
      saturdayServiceHours: saturdayServiceHours == freezed
          ? _value.saturdayServiceHours
          : saturdayServiceHours as String,
      sundayServiceHours: sundayServiceHours == freezed
          ? _value.sundayServiceHours
          : sundayServiceHours as String,
      isServiceAvailable: isServiceAvailable == freezed
          ? _value.isServiceAvailable
          : isServiceAvailable as bool,
      serviceCoverPhotoUrl: serviceCoverPhotoUrl == freezed
          ? _value.serviceCoverPhotoUrl
          : serviceCoverPhotoUrl as String,
      serviceProfilePhotoUrl: serviceProfilePhotoUrl == freezed
          ? _value.serviceProfilePhotoUrl
          : serviceProfilePhotoUrl as String,
    ));
  }
}

/// @nodoc
abstract class $UpdateRegisterInfo$CopyWith<$Res>
    implements $UpdateRegisterInfoCopyWith<$Res> {
  factory $UpdateRegisterInfo$CopyWith(
          UpdateRegisterInfo$ value, $Res Function(UpdateRegisterInfo$) then) =
      _$UpdateRegisterInfo$CopyWithImpl<$Res>;
  @override
  $Res call(
      {String email,
      String password,
      String username,
      DateTime birthDate,
      String location,
      String cars,
      String photoUrl,
      String firstName,
      String lastName,
      String serviceName,
      String serviceLocation,
      String servicePhone,
      bool isAutoElectricianService,
      bool isCarBodyRepairsService,
      bool isCarDealershipService,
      bool isCarDiagnosticsService,
      bool isCarInssuranceService,
      bool isCarRentalService,
      bool isDetailingService,
      bool isEngineDecarbonizationService,
      bool isParticleFilterCleaningService,
      bool isServiceAndRepairs,
      bool isTowingService,
      bool isTuningService,
      bool isVulcanisingService,
      bool isWrappingService,
      String serviceDescription,
      String mondayServiceHours,
      String tuesdayServiceHours,
      String wednesdayServiceHours,
      String thursdayServiceHours,
      String fridayServiceHours,
      String saturdayServiceHours,
      String sundayServiceHours,
      bool isServiceAvailable,
      String serviceCoverPhotoUrl,
      String serviceProfilePhotoUrl});
}

/// @nodoc
class _$UpdateRegisterInfo$CopyWithImpl<$Res>
    extends _$UpdateRegisterInfoCopyWithImpl<$Res>
    implements $UpdateRegisterInfo$CopyWith<$Res> {
  _$UpdateRegisterInfo$CopyWithImpl(
      UpdateRegisterInfo$ _value, $Res Function(UpdateRegisterInfo$) _then)
      : super(_value, (v) => _then(v as UpdateRegisterInfo$));

  @override
  UpdateRegisterInfo$ get _value => super._value as UpdateRegisterInfo$;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object username = freezed,
    Object birthDate = freezed,
    Object location = freezed,
    Object cars = freezed,
    Object photoUrl = freezed,
    Object firstName = freezed,
    Object lastName = freezed,
    Object serviceName = freezed,
    Object serviceLocation = freezed,
    Object servicePhone = freezed,
    Object isAutoElectricianService = freezed,
    Object isCarBodyRepairsService = freezed,
    Object isCarDealershipService = freezed,
    Object isCarDiagnosticsService = freezed,
    Object isCarInssuranceService = freezed,
    Object isCarRentalService = freezed,
    Object isDetailingService = freezed,
    Object isEngineDecarbonizationService = freezed,
    Object isParticleFilterCleaningService = freezed,
    Object isServiceAndRepairs = freezed,
    Object isTowingService = freezed,
    Object isTuningService = freezed,
    Object isVulcanisingService = freezed,
    Object isWrappingService = freezed,
    Object serviceDescription = freezed,
    Object mondayServiceHours = freezed,
    Object tuesdayServiceHours = freezed,
    Object wednesdayServiceHours = freezed,
    Object thursdayServiceHours = freezed,
    Object fridayServiceHours = freezed,
    Object saturdayServiceHours = freezed,
    Object sundayServiceHours = freezed,
    Object isServiceAvailable = freezed,
    Object serviceCoverPhotoUrl = freezed,
    Object serviceProfilePhotoUrl = freezed,
  }) {
    return _then(UpdateRegisterInfo$(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      username: username == freezed ? _value.username : username as String,
      birthDate:
          birthDate == freezed ? _value.birthDate : birthDate as DateTime,
      location: location == freezed ? _value.location : location as String,
      cars: cars == freezed ? _value.cars : cars as String,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      serviceName:
          serviceName == freezed ? _value.serviceName : serviceName as String,
      serviceLocation: serviceLocation == freezed
          ? _value.serviceLocation
          : serviceLocation as String,
      servicePhone: servicePhone == freezed
          ? _value.servicePhone
          : servicePhone as String,
      isAutoElectricianService: isAutoElectricianService == freezed
          ? _value.isAutoElectricianService
          : isAutoElectricianService as bool,
      isCarBodyRepairsService: isCarBodyRepairsService == freezed
          ? _value.isCarBodyRepairsService
          : isCarBodyRepairsService as bool,
      isCarDealershipService: isCarDealershipService == freezed
          ? _value.isCarDealershipService
          : isCarDealershipService as bool,
      isCarDiagnosticsService: isCarDiagnosticsService == freezed
          ? _value.isCarDiagnosticsService
          : isCarDiagnosticsService as bool,
      isCarInssuranceService: isCarInssuranceService == freezed
          ? _value.isCarInssuranceService
          : isCarInssuranceService as bool,
      isCarRentalService: isCarRentalService == freezed
          ? _value.isCarRentalService
          : isCarRentalService as bool,
      isDetailingService: isDetailingService == freezed
          ? _value.isDetailingService
          : isDetailingService as bool,
      isEngineDecarbonizationService: isEngineDecarbonizationService == freezed
          ? _value.isEngineDecarbonizationService
          : isEngineDecarbonizationService as bool,
      isParticleFilterCleaningService:
          isParticleFilterCleaningService == freezed
              ? _value.isParticleFilterCleaningService
              : isParticleFilterCleaningService as bool,
      isServiceAndRepairs: isServiceAndRepairs == freezed
          ? _value.isServiceAndRepairs
          : isServiceAndRepairs as bool,
      isTowingService: isTowingService == freezed
          ? _value.isTowingService
          : isTowingService as bool,
      isTuningService: isTuningService == freezed
          ? _value.isTuningService
          : isTuningService as bool,
      isVulcanisingService: isVulcanisingService == freezed
          ? _value.isVulcanisingService
          : isVulcanisingService as bool,
      isWrappingService: isWrappingService == freezed
          ? _value.isWrappingService
          : isWrappingService as bool,
      serviceDescription: serviceDescription == freezed
          ? _value.serviceDescription
          : serviceDescription as String,
      mondayServiceHours: mondayServiceHours == freezed
          ? _value.mondayServiceHours
          : mondayServiceHours as String,
      tuesdayServiceHours: tuesdayServiceHours == freezed
          ? _value.tuesdayServiceHours
          : tuesdayServiceHours as String,
      wednesdayServiceHours: wednesdayServiceHours == freezed
          ? _value.wednesdayServiceHours
          : wednesdayServiceHours as String,
      thursdayServiceHours: thursdayServiceHours == freezed
          ? _value.thursdayServiceHours
          : thursdayServiceHours as String,
      fridayServiceHours: fridayServiceHours == freezed
          ? _value.fridayServiceHours
          : fridayServiceHours as String,
      saturdayServiceHours: saturdayServiceHours == freezed
          ? _value.saturdayServiceHours
          : saturdayServiceHours as String,
      sundayServiceHours: sundayServiceHours == freezed
          ? _value.sundayServiceHours
          : sundayServiceHours as String,
      isServiceAvailable: isServiceAvailable == freezed
          ? _value.isServiceAvailable
          : isServiceAvailable as bool,
      serviceCoverPhotoUrl: serviceCoverPhotoUrl == freezed
          ? _value.serviceCoverPhotoUrl
          : serviceCoverPhotoUrl as String,
      serviceProfilePhotoUrl: serviceProfilePhotoUrl == freezed
          ? _value.serviceProfilePhotoUrl
          : serviceProfilePhotoUrl as String,
    ));
  }
}

/// @nodoc
class _$UpdateRegisterInfo$ implements UpdateRegisterInfo$ {
  const _$UpdateRegisterInfo$(
      {this.email,
      this.password,
      this.username,
      this.birthDate,
      this.location,
      this.cars,
      this.photoUrl,
      this.firstName,
      this.lastName,
      this.serviceName,
      this.serviceLocation,
      this.servicePhone,
      this.isAutoElectricianService,
      this.isCarBodyRepairsService,
      this.isCarDealershipService,
      this.isCarDiagnosticsService,
      this.isCarInssuranceService,
      this.isCarRentalService,
      this.isDetailingService,
      this.isEngineDecarbonizationService,
      this.isParticleFilterCleaningService,
      this.isServiceAndRepairs,
      this.isTowingService,
      this.isTuningService,
      this.isVulcanisingService,
      this.isWrappingService,
      this.serviceDescription,
      this.mondayServiceHours,
      this.tuesdayServiceHours,
      this.wednesdayServiceHours,
      this.thursdayServiceHours,
      this.fridayServiceHours,
      this.saturdayServiceHours,
      this.sundayServiceHours,
      this.isServiceAvailable,
      this.serviceCoverPhotoUrl,
      this.serviceProfilePhotoUrl});

  @override
  final String email;
  @override
  final String password;
  @override
  final String username;
  @override
  final DateTime birthDate;
  @override
  final String location;
  @override
  final String cars;
  @override
  final String photoUrl;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String serviceName;
  @override
  final String serviceLocation;
  @override
  final String servicePhone;
  @override
  final bool isAutoElectricianService;
  @override
  final bool isCarBodyRepairsService;
  @override
  final bool isCarDealershipService;
  @override
  final bool isCarDiagnosticsService;
  @override
  final bool isCarInssuranceService;
  @override
  final bool isCarRentalService;
  @override
  final bool isDetailingService;
  @override
  final bool isEngineDecarbonizationService;
  @override
  final bool isParticleFilterCleaningService;
  @override
  final bool isServiceAndRepairs;
  @override
  final bool isTowingService;
  @override
  final bool isTuningService;
  @override
  final bool isVulcanisingService;
  @override
  final bool isWrappingService;
  @override
  final String serviceDescription;
  @override
  final String mondayServiceHours;
  @override
  final String tuesdayServiceHours;
  @override
  final String wednesdayServiceHours;
  @override
  final String thursdayServiceHours;
  @override
  final String fridayServiceHours;
  @override
  final String saturdayServiceHours;
  @override
  final String sundayServiceHours;
  @override
  final bool isServiceAvailable;
  @override
  final String serviceCoverPhotoUrl;
  @override
  final String serviceProfilePhotoUrl;

  @override
  String toString() {
    return 'UpdateRegisterInfo(email: $email, password: $password, username: $username, birthDate: $birthDate, location: $location, cars: $cars, photoUrl: $photoUrl, firstName: $firstName, lastName: $lastName, serviceName: $serviceName, serviceLocation: $serviceLocation, servicePhone: $servicePhone, isAutoElectricianService: $isAutoElectricianService, isCarBodyRepairsService: $isCarBodyRepairsService, isCarDealershipService: $isCarDealershipService, isCarDiagnosticsService: $isCarDiagnosticsService, isCarInssuranceService: $isCarInssuranceService, isCarRentalService: $isCarRentalService, isDetailingService: $isDetailingService, isEngineDecarbonizationService: $isEngineDecarbonizationService, isParticleFilterCleaningService: $isParticleFilterCleaningService, isServiceAndRepairs: $isServiceAndRepairs, isTowingService: $isTowingService, isTuningService: $isTuningService, isVulcanisingService: $isVulcanisingService, isWrappingService: $isWrappingService, serviceDescription: $serviceDescription, mondayServiceHours: $mondayServiceHours, tuesdayServiceHours: $tuesdayServiceHours, wednesdayServiceHours: $wednesdayServiceHours, thursdayServiceHours: $thursdayServiceHours, fridayServiceHours: $fridayServiceHours, saturdayServiceHours: $saturdayServiceHours, sundayServiceHours: $sundayServiceHours, isServiceAvailable: $isServiceAvailable, serviceCoverPhotoUrl: $serviceCoverPhotoUrl, serviceProfilePhotoUrl: $serviceProfilePhotoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateRegisterInfo$ &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.birthDate, birthDate) ||
                const DeepCollectionEquality()
                    .equals(other.birthDate, birthDate)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.cars, cars) ||
                const DeepCollectionEquality().equals(other.cars, cars)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.serviceName, serviceName) ||
                const DeepCollectionEquality()
                    .equals(other.serviceName, serviceName)) &&
            (identical(other.serviceLocation, serviceLocation) ||
                const DeepCollectionEquality()
                    .equals(other.serviceLocation, serviceLocation)) &&
            (identical(other.servicePhone, servicePhone) ||
                const DeepCollectionEquality()
                    .equals(other.servicePhone, servicePhone)) &&
            (identical(other.isAutoElectricianService, isAutoElectricianService) ||
                const DeepCollectionEquality().equals(
                    other.isAutoElectricianService,
                    isAutoElectricianService)) &&
            (identical(other.isCarBodyRepairsService, isCarBodyRepairsService) ||
                const DeepCollectionEquality().equals(
                    other.isCarBodyRepairsService, isCarBodyRepairsService)) &&
            (identical(other.isCarDealershipService, isCarDealershipService) ||
                const DeepCollectionEquality().equals(
                    other.isCarDealershipService, isCarDealershipService)) &&
            (identical(other.isCarDiagnosticsService, isCarDiagnosticsService) ||
                const DeepCollectionEquality().equals(
                    other.isCarDiagnosticsService, isCarDiagnosticsService)) &&
            (identical(other.isCarInssuranceService, isCarInssuranceService) ||
                const DeepCollectionEquality().equals(
                    other.isCarInssuranceService, isCarInssuranceService)) &&
            (identical(other.isCarRentalService, isCarRentalService) ||
                const DeepCollectionEquality()
                    .equals(other.isCarRentalService, isCarRentalService)) &&
            (identical(other.isDetailingService, isDetailingService) ||
                const DeepCollectionEquality().equals(other.isDetailingService, isDetailingService)) &&
            (identical(other.isEngineDecarbonizationService, isEngineDecarbonizationService) || const DeepCollectionEquality().equals(other.isEngineDecarbonizationService, isEngineDecarbonizationService)) &&
            (identical(other.isParticleFilterCleaningService, isParticleFilterCleaningService) || const DeepCollectionEquality().equals(other.isParticleFilterCleaningService, isParticleFilterCleaningService)) &&
            (identical(other.isServiceAndRepairs, isServiceAndRepairs) || const DeepCollectionEquality().equals(other.isServiceAndRepairs, isServiceAndRepairs)) &&
            (identical(other.isTowingService, isTowingService) || const DeepCollectionEquality().equals(other.isTowingService, isTowingService)) &&
            (identical(other.isTuningService, isTuningService) || const DeepCollectionEquality().equals(other.isTuningService, isTuningService)) &&
            (identical(other.isVulcanisingService, isVulcanisingService) || const DeepCollectionEquality().equals(other.isVulcanisingService, isVulcanisingService)) &&
            (identical(other.isWrappingService, isWrappingService) || const DeepCollectionEquality().equals(other.isWrappingService, isWrappingService)) &&
            (identical(other.serviceDescription, serviceDescription) || const DeepCollectionEquality().equals(other.serviceDescription, serviceDescription)) &&
            (identical(other.mondayServiceHours, mondayServiceHours) || const DeepCollectionEquality().equals(other.mondayServiceHours, mondayServiceHours)) &&
            (identical(other.tuesdayServiceHours, tuesdayServiceHours) || const DeepCollectionEquality().equals(other.tuesdayServiceHours, tuesdayServiceHours)) &&
            (identical(other.wednesdayServiceHours, wednesdayServiceHours) || const DeepCollectionEquality().equals(other.wednesdayServiceHours, wednesdayServiceHours)) &&
            (identical(other.thursdayServiceHours, thursdayServiceHours) || const DeepCollectionEquality().equals(other.thursdayServiceHours, thursdayServiceHours)) &&
            (identical(other.fridayServiceHours, fridayServiceHours) || const DeepCollectionEquality().equals(other.fridayServiceHours, fridayServiceHours)) &&
            (identical(other.saturdayServiceHours, saturdayServiceHours) || const DeepCollectionEquality().equals(other.saturdayServiceHours, saturdayServiceHours)) &&
            (identical(other.sundayServiceHours, sundayServiceHours) || const DeepCollectionEquality().equals(other.sundayServiceHours, sundayServiceHours)) &&
            (identical(other.isServiceAvailable, isServiceAvailable) || const DeepCollectionEquality().equals(other.isServiceAvailable, isServiceAvailable)) &&
            (identical(other.serviceCoverPhotoUrl, serviceCoverPhotoUrl) || const DeepCollectionEquality().equals(other.serviceCoverPhotoUrl, serviceCoverPhotoUrl)) &&
            (identical(other.serviceProfilePhotoUrl, serviceProfilePhotoUrl) || const DeepCollectionEquality().equals(other.serviceProfilePhotoUrl, serviceProfilePhotoUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(birthDate) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(cars) ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(serviceName) ^
      const DeepCollectionEquality().hash(serviceLocation) ^
      const DeepCollectionEquality().hash(servicePhone) ^
      const DeepCollectionEquality().hash(isAutoElectricianService) ^
      const DeepCollectionEquality().hash(isCarBodyRepairsService) ^
      const DeepCollectionEquality().hash(isCarDealershipService) ^
      const DeepCollectionEquality().hash(isCarDiagnosticsService) ^
      const DeepCollectionEquality().hash(isCarInssuranceService) ^
      const DeepCollectionEquality().hash(isCarRentalService) ^
      const DeepCollectionEquality().hash(isDetailingService) ^
      const DeepCollectionEquality().hash(isEngineDecarbonizationService) ^
      const DeepCollectionEquality().hash(isParticleFilterCleaningService) ^
      const DeepCollectionEquality().hash(isServiceAndRepairs) ^
      const DeepCollectionEquality().hash(isTowingService) ^
      const DeepCollectionEquality().hash(isTuningService) ^
      const DeepCollectionEquality().hash(isVulcanisingService) ^
      const DeepCollectionEquality().hash(isWrappingService) ^
      const DeepCollectionEquality().hash(serviceDescription) ^
      const DeepCollectionEquality().hash(mondayServiceHours) ^
      const DeepCollectionEquality().hash(tuesdayServiceHours) ^
      const DeepCollectionEquality().hash(wednesdayServiceHours) ^
      const DeepCollectionEquality().hash(thursdayServiceHours) ^
      const DeepCollectionEquality().hash(fridayServiceHours) ^
      const DeepCollectionEquality().hash(saturdayServiceHours) ^
      const DeepCollectionEquality().hash(sundayServiceHours) ^
      const DeepCollectionEquality().hash(isServiceAvailable) ^
      const DeepCollectionEquality().hash(serviceCoverPhotoUrl) ^
      const DeepCollectionEquality().hash(serviceProfilePhotoUrl);

  @override
  $UpdateRegisterInfo$CopyWith<UpdateRegisterInfo$> get copyWith =>
      _$UpdateRegisterInfo$CopyWithImpl<UpdateRegisterInfo$>(this, _$identity);
}

abstract class UpdateRegisterInfo$ implements UpdateRegisterInfo {
  const factory UpdateRegisterInfo$(
      {String email,
      String password,
      String username,
      DateTime birthDate,
      String location,
      String cars,
      String photoUrl,
      String firstName,
      String lastName,
      String serviceName,
      String serviceLocation,
      String servicePhone,
      bool isAutoElectricianService,
      bool isCarBodyRepairsService,
      bool isCarDealershipService,
      bool isCarDiagnosticsService,
      bool isCarInssuranceService,
      bool isCarRentalService,
      bool isDetailingService,
      bool isEngineDecarbonizationService,
      bool isParticleFilterCleaningService,
      bool isServiceAndRepairs,
      bool isTowingService,
      bool isTuningService,
      bool isVulcanisingService,
      bool isWrappingService,
      String serviceDescription,
      String mondayServiceHours,
      String tuesdayServiceHours,
      String wednesdayServiceHours,
      String thursdayServiceHours,
      String fridayServiceHours,
      String saturdayServiceHours,
      String sundayServiceHours,
      bool isServiceAvailable,
      String serviceCoverPhotoUrl,
      String serviceProfilePhotoUrl}) = _$UpdateRegisterInfo$;

  @override
  String get email;
  @override
  String get password;
  @override
  String get username;
  @override
  DateTime get birthDate;
  @override
  String get location;
  @override
  String get cars;
  @override
  String get photoUrl;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get serviceName;
  @override
  String get serviceLocation;
  @override
  String get servicePhone;
  @override
  bool get isAutoElectricianService;
  @override
  bool get isCarBodyRepairsService;
  @override
  bool get isCarDealershipService;
  @override
  bool get isCarDiagnosticsService;
  @override
  bool get isCarInssuranceService;
  @override
  bool get isCarRentalService;
  @override
  bool get isDetailingService;
  @override
  bool get isEngineDecarbonizationService;
  @override
  bool get isParticleFilterCleaningService;
  @override
  bool get isServiceAndRepairs;
  @override
  bool get isTowingService;
  @override
  bool get isTuningService;
  @override
  bool get isVulcanisingService;
  @override
  bool get isWrappingService;
  @override
  String get serviceDescription;
  @override
  String get mondayServiceHours;
  @override
  String get tuesdayServiceHours;
  @override
  String get wednesdayServiceHours;
  @override
  String get thursdayServiceHours;
  @override
  String get fridayServiceHours;
  @override
  String get saturdayServiceHours;
  @override
  String get sundayServiceHours;
  @override
  bool get isServiceAvailable;
  @override
  String get serviceCoverPhotoUrl;
  @override
  String get serviceProfilePhotoUrl;
  @override
  $UpdateRegisterInfo$CopyWith<UpdateRegisterInfo$> get copyWith;
}

/// @nodoc
class _$InitializeAppTearOff {
  const _$InitializeAppTearOff();

// ignore: unused_element
  InitializeApp$ call() {
    return const InitializeApp$();
  }

// ignore: unused_element
  InitializeAppSuccessful successful(AppUser user) {
    return InitializeAppSuccessful(
      user,
    );
  }

// ignore: unused_element
  InitializeAppError error(Object error) {
    return InitializeAppError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $InitializeApp = _$InitializeAppTearOff();

/// @nodoc
mixin _$InitializeApp {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(InitializeApp$ value), {
    @required Result successful(InitializeAppSuccessful value),
    @required Result error(InitializeAppError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(InitializeApp$ value), {
    Result successful(InitializeAppSuccessful value),
    Result error(InitializeAppError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $InitializeAppCopyWith<$Res> {
  factory $InitializeAppCopyWith(
          InitializeApp value, $Res Function(InitializeApp) then) =
      _$InitializeAppCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializeAppCopyWithImpl<$Res>
    implements $InitializeAppCopyWith<$Res> {
  _$InitializeAppCopyWithImpl(this._value, this._then);

  final InitializeApp _value;
  // ignore: unused_field
  final $Res Function(InitializeApp) _then;
}

/// @nodoc
abstract class $InitializeApp$CopyWith<$Res> {
  factory $InitializeApp$CopyWith(
          InitializeApp$ value, $Res Function(InitializeApp$) then) =
      _$InitializeApp$CopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializeApp$CopyWithImpl<$Res>
    extends _$InitializeAppCopyWithImpl<$Res>
    implements $InitializeApp$CopyWith<$Res> {
  _$InitializeApp$CopyWithImpl(
      InitializeApp$ _value, $Res Function(InitializeApp$) _then)
      : super(_value, (v) => _then(v as InitializeApp$));

  @override
  InitializeApp$ get _value => super._value as InitializeApp$;
}

/// @nodoc
class _$InitializeApp$ implements InitializeApp$ {
  const _$InitializeApp$();

  @override
  String toString() {
    return 'InitializeApp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitializeApp$);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(InitializeApp$ value), {
    @required Result successful(InitializeAppSuccessful value),
    @required Result error(InitializeAppError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(InitializeApp$ value), {
    Result successful(InitializeAppSuccessful value),
    Result error(InitializeAppError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class InitializeApp$ implements InitializeApp {
  const factory InitializeApp$() = _$InitializeApp$;
}

/// @nodoc
abstract class $InitializeAppSuccessfulCopyWith<$Res> {
  factory $InitializeAppSuccessfulCopyWith(InitializeAppSuccessful value,
          $Res Function(InitializeAppSuccessful) then) =
      _$InitializeAppSuccessfulCopyWithImpl<$Res>;
  $Res call({AppUser user});
}

/// @nodoc
class _$InitializeAppSuccessfulCopyWithImpl<$Res>
    extends _$InitializeAppCopyWithImpl<$Res>
    implements $InitializeAppSuccessfulCopyWith<$Res> {
  _$InitializeAppSuccessfulCopyWithImpl(InitializeAppSuccessful _value,
      $Res Function(InitializeAppSuccessful) _then)
      : super(_value, (v) => _then(v as InitializeAppSuccessful));

  @override
  InitializeAppSuccessful get _value => super._value as InitializeAppSuccessful;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(InitializeAppSuccessful(
      user == freezed ? _value.user : user as AppUser,
    ));
  }
}

/// @nodoc
class _$InitializeAppSuccessful implements InitializeAppSuccessful {
  const _$InitializeAppSuccessful(this.user) : assert(user != null);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'InitializeApp.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitializeAppSuccessful &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $InitializeAppSuccessfulCopyWith<InitializeAppSuccessful> get copyWith =>
      _$InitializeAppSuccessfulCopyWithImpl<InitializeAppSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(InitializeApp$ value), {
    @required Result successful(InitializeAppSuccessful value),
    @required Result error(InitializeAppError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(InitializeApp$ value), {
    Result successful(InitializeAppSuccessful value),
    Result error(InitializeAppError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class InitializeAppSuccessful implements InitializeApp {
  const factory InitializeAppSuccessful(AppUser user) =
      _$InitializeAppSuccessful;

  AppUser get user;
  $InitializeAppSuccessfulCopyWith<InitializeAppSuccessful> get copyWith;
}

/// @nodoc
abstract class $InitializeAppErrorCopyWith<$Res> {
  factory $InitializeAppErrorCopyWith(
          InitializeAppError value, $Res Function(InitializeAppError) then) =
      _$InitializeAppErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$InitializeAppErrorCopyWithImpl<$Res>
    extends _$InitializeAppCopyWithImpl<$Res>
    implements $InitializeAppErrorCopyWith<$Res> {
  _$InitializeAppErrorCopyWithImpl(
      InitializeAppError _value, $Res Function(InitializeAppError) _then)
      : super(_value, (v) => _then(v as InitializeAppError));

  @override
  InitializeAppError get _value => super._value as InitializeAppError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(InitializeAppError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$InitializeAppError implements InitializeAppError {
  const _$InitializeAppError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'InitializeApp.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitializeAppError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $InitializeAppErrorCopyWith<InitializeAppError> get copyWith =>
      _$InitializeAppErrorCopyWithImpl<InitializeAppError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(InitializeApp$ value), {
    @required Result successful(InitializeAppSuccessful value),
    @required Result error(InitializeAppError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(InitializeApp$ value), {
    Result successful(InitializeAppSuccessful value),
    Result error(InitializeAppError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class InitializeAppError implements InitializeApp, ErrorAction {
  const factory InitializeAppError(Object error) = _$InitializeAppError;

  Object get error;
  $InitializeAppErrorCopyWith<InitializeAppError> get copyWith;
}

/// @nodoc
class _$UpdateProfilePhotoTearOff {
  const _$UpdateProfilePhotoTearOff();

// ignore: unused_element
  UpdateProfilePhoto$ call(String photoUrl) {
    return UpdateProfilePhoto$(
      photoUrl,
    );
  }

// ignore: unused_element
  UpdateProfilePhotoSuccessful successful() {
    return const UpdateProfilePhotoSuccessful();
  }

// ignore: unused_element
  UpdateProfilePhotoError error(Object error) {
    return UpdateProfilePhotoError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateProfilePhoto = _$UpdateProfilePhotoTearOff();

/// @nodoc
mixin _$UpdateProfilePhoto {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String photoUrl), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String photoUrl), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateProfilePhoto$ value), {
    @required Result successful(UpdateProfilePhotoSuccessful value),
    @required Result error(UpdateProfilePhotoError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateProfilePhoto$ value), {
    Result successful(UpdateProfilePhotoSuccessful value),
    Result error(UpdateProfilePhotoError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UpdateProfilePhotoCopyWith<$Res> {
  factory $UpdateProfilePhotoCopyWith(
          UpdateProfilePhoto value, $Res Function(UpdateProfilePhoto) then) =
      _$UpdateProfilePhotoCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateProfilePhotoCopyWithImpl<$Res>
    implements $UpdateProfilePhotoCopyWith<$Res> {
  _$UpdateProfilePhotoCopyWithImpl(this._value, this._then);

  final UpdateProfilePhoto _value;
  // ignore: unused_field
  final $Res Function(UpdateProfilePhoto) _then;
}

/// @nodoc
abstract class $UpdateProfilePhoto$CopyWith<$Res> {
  factory $UpdateProfilePhoto$CopyWith(
          UpdateProfilePhoto$ value, $Res Function(UpdateProfilePhoto$) then) =
      _$UpdateProfilePhoto$CopyWithImpl<$Res>;
  $Res call({String photoUrl});
}

/// @nodoc
class _$UpdateProfilePhoto$CopyWithImpl<$Res>
    extends _$UpdateProfilePhotoCopyWithImpl<$Res>
    implements $UpdateProfilePhoto$CopyWith<$Res> {
  _$UpdateProfilePhoto$CopyWithImpl(
      UpdateProfilePhoto$ _value, $Res Function(UpdateProfilePhoto$) _then)
      : super(_value, (v) => _then(v as UpdateProfilePhoto$));

  @override
  UpdateProfilePhoto$ get _value => super._value as UpdateProfilePhoto$;

  @override
  $Res call({
    Object photoUrl = freezed,
  }) {
    return _then(UpdateProfilePhoto$(
      photoUrl == freezed ? _value.photoUrl : photoUrl as String,
    ));
  }
}

/// @nodoc
class _$UpdateProfilePhoto$ implements UpdateProfilePhoto$ {
  const _$UpdateProfilePhoto$(this.photoUrl) : assert(photoUrl != null);

  @override
  final String photoUrl;

  @override
  String toString() {
    return 'UpdateProfilePhoto(photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateProfilePhoto$ &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(photoUrl);

  @override
  $UpdateProfilePhoto$CopyWith<UpdateProfilePhoto$> get copyWith =>
      _$UpdateProfilePhoto$CopyWithImpl<UpdateProfilePhoto$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String photoUrl), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(photoUrl);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String photoUrl), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(photoUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateProfilePhoto$ value), {
    @required Result successful(UpdateProfilePhotoSuccessful value),
    @required Result error(UpdateProfilePhotoError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateProfilePhoto$ value), {
    Result successful(UpdateProfilePhotoSuccessful value),
    Result error(UpdateProfilePhotoError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateProfilePhoto$ implements UpdateProfilePhoto {
  const factory UpdateProfilePhoto$(String photoUrl) = _$UpdateProfilePhoto$;

  String get photoUrl;
  $UpdateProfilePhoto$CopyWith<UpdateProfilePhoto$> get copyWith;
}

/// @nodoc
abstract class $UpdateProfilePhotoSuccessfulCopyWith<$Res> {
  factory $UpdateProfilePhotoSuccessfulCopyWith(
          UpdateProfilePhotoSuccessful value,
          $Res Function(UpdateProfilePhotoSuccessful) then) =
      _$UpdateProfilePhotoSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateProfilePhotoSuccessfulCopyWithImpl<$Res>
    extends _$UpdateProfilePhotoCopyWithImpl<$Res>
    implements $UpdateProfilePhotoSuccessfulCopyWith<$Res> {
  _$UpdateProfilePhotoSuccessfulCopyWithImpl(
      UpdateProfilePhotoSuccessful _value,
      $Res Function(UpdateProfilePhotoSuccessful) _then)
      : super(_value, (v) => _then(v as UpdateProfilePhotoSuccessful));

  @override
  UpdateProfilePhotoSuccessful get _value =>
      super._value as UpdateProfilePhotoSuccessful;
}

/// @nodoc
class _$UpdateProfilePhotoSuccessful implements UpdateProfilePhotoSuccessful {
  const _$UpdateProfilePhotoSuccessful();

  @override
  String toString() {
    return 'UpdateProfilePhoto.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UpdateProfilePhotoSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String photoUrl), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String photoUrl), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateProfilePhoto$ value), {
    @required Result successful(UpdateProfilePhotoSuccessful value),
    @required Result error(UpdateProfilePhotoError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateProfilePhoto$ value), {
    Result successful(UpdateProfilePhotoSuccessful value),
    Result error(UpdateProfilePhotoError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateProfilePhotoSuccessful implements UpdateProfilePhoto {
  const factory UpdateProfilePhotoSuccessful() = _$UpdateProfilePhotoSuccessful;
}

/// @nodoc
abstract class $UpdateProfilePhotoErrorCopyWith<$Res> {
  factory $UpdateProfilePhotoErrorCopyWith(UpdateProfilePhotoError value,
          $Res Function(UpdateProfilePhotoError) then) =
      _$UpdateProfilePhotoErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$UpdateProfilePhotoErrorCopyWithImpl<$Res>
    extends _$UpdateProfilePhotoCopyWithImpl<$Res>
    implements $UpdateProfilePhotoErrorCopyWith<$Res> {
  _$UpdateProfilePhotoErrorCopyWithImpl(UpdateProfilePhotoError _value,
      $Res Function(UpdateProfilePhotoError) _then)
      : super(_value, (v) => _then(v as UpdateProfilePhotoError));

  @override
  UpdateProfilePhotoError get _value => super._value as UpdateProfilePhotoError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(UpdateProfilePhotoError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$UpdateProfilePhotoError implements UpdateProfilePhotoError {
  const _$UpdateProfilePhotoError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'UpdateProfilePhoto.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateProfilePhotoError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $UpdateProfilePhotoErrorCopyWith<UpdateProfilePhotoError> get copyWith =>
      _$UpdateProfilePhotoErrorCopyWithImpl<UpdateProfilePhotoError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String photoUrl), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String photoUrl), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateProfilePhoto$ value), {
    @required Result successful(UpdateProfilePhotoSuccessful value),
    @required Result error(UpdateProfilePhotoError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateProfilePhoto$ value), {
    Result successful(UpdateProfilePhotoSuccessful value),
    Result error(UpdateProfilePhotoError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateProfilePhotoError
    implements UpdateProfilePhoto, ErrorAction {
  const factory UpdateProfilePhotoError(Object error) =
      _$UpdateProfilePhotoError;

  Object get error;
  $UpdateProfilePhotoErrorCopyWith<UpdateProfilePhotoError> get copyWith;
}

/// @nodoc
class _$UpdateUsernameTearOff {
  const _$UpdateUsernameTearOff();

// ignore: unused_element
  UpdateUsername$ call(String username) {
    return UpdateUsername$(
      username,
    );
  }

// ignore: unused_element
  UpdateUsernameSuccessful successful() {
    return const UpdateUsernameSuccessful();
  }

// ignore: unused_element
  UpdateUsernameError error(Object error) {
    return UpdateUsernameError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateUsername = _$UpdateUsernameTearOff();

/// @nodoc
mixin _$UpdateUsername {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String username), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String username), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateUsername$ value), {
    @required Result successful(UpdateUsernameSuccessful value),
    @required Result error(UpdateUsernameError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateUsername$ value), {
    Result successful(UpdateUsernameSuccessful value),
    Result error(UpdateUsernameError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UpdateUsernameCopyWith<$Res> {
  factory $UpdateUsernameCopyWith(
          UpdateUsername value, $Res Function(UpdateUsername) then) =
      _$UpdateUsernameCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateUsernameCopyWithImpl<$Res>
    implements $UpdateUsernameCopyWith<$Res> {
  _$UpdateUsernameCopyWithImpl(this._value, this._then);

  final UpdateUsername _value;
  // ignore: unused_field
  final $Res Function(UpdateUsername) _then;
}

/// @nodoc
abstract class $UpdateUsername$CopyWith<$Res> {
  factory $UpdateUsername$CopyWith(
          UpdateUsername$ value, $Res Function(UpdateUsername$) then) =
      _$UpdateUsername$CopyWithImpl<$Res>;
  $Res call({String username});
}

/// @nodoc
class _$UpdateUsername$CopyWithImpl<$Res>
    extends _$UpdateUsernameCopyWithImpl<$Res>
    implements $UpdateUsername$CopyWith<$Res> {
  _$UpdateUsername$CopyWithImpl(
      UpdateUsername$ _value, $Res Function(UpdateUsername$) _then)
      : super(_value, (v) => _then(v as UpdateUsername$));

  @override
  UpdateUsername$ get _value => super._value as UpdateUsername$;

  @override
  $Res call({
    Object username = freezed,
  }) {
    return _then(UpdateUsername$(
      username == freezed ? _value.username : username as String,
    ));
  }
}

/// @nodoc
class _$UpdateUsername$ implements UpdateUsername$ {
  const _$UpdateUsername$(this.username) : assert(username != null);

  @override
  final String username;

  @override
  String toString() {
    return 'UpdateUsername(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateUsername$ &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(username);

  @override
  $UpdateUsername$CopyWith<UpdateUsername$> get copyWith =>
      _$UpdateUsername$CopyWithImpl<UpdateUsername$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String username), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(username);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String username), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateUsername$ value), {
    @required Result successful(UpdateUsernameSuccessful value),
    @required Result error(UpdateUsernameError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateUsername$ value), {
    Result successful(UpdateUsernameSuccessful value),
    Result error(UpdateUsernameError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateUsername$ implements UpdateUsername {
  const factory UpdateUsername$(String username) = _$UpdateUsername$;

  String get username;
  $UpdateUsername$CopyWith<UpdateUsername$> get copyWith;
}

/// @nodoc
abstract class $UpdateUsernameSuccessfulCopyWith<$Res> {
  factory $UpdateUsernameSuccessfulCopyWith(UpdateUsernameSuccessful value,
          $Res Function(UpdateUsernameSuccessful) then) =
      _$UpdateUsernameSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateUsernameSuccessfulCopyWithImpl<$Res>
    extends _$UpdateUsernameCopyWithImpl<$Res>
    implements $UpdateUsernameSuccessfulCopyWith<$Res> {
  _$UpdateUsernameSuccessfulCopyWithImpl(UpdateUsernameSuccessful _value,
      $Res Function(UpdateUsernameSuccessful) _then)
      : super(_value, (v) => _then(v as UpdateUsernameSuccessful));

  @override
  UpdateUsernameSuccessful get _value =>
      super._value as UpdateUsernameSuccessful;
}

/// @nodoc
class _$UpdateUsernameSuccessful implements UpdateUsernameSuccessful {
  const _$UpdateUsernameSuccessful();

  @override
  String toString() {
    return 'UpdateUsername.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UpdateUsernameSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String username), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String username), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateUsername$ value), {
    @required Result successful(UpdateUsernameSuccessful value),
    @required Result error(UpdateUsernameError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateUsername$ value), {
    Result successful(UpdateUsernameSuccessful value),
    Result error(UpdateUsernameError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateUsernameSuccessful implements UpdateUsername {
  const factory UpdateUsernameSuccessful() = _$UpdateUsernameSuccessful;
}

/// @nodoc
abstract class $UpdateUsernameErrorCopyWith<$Res> {
  factory $UpdateUsernameErrorCopyWith(
          UpdateUsernameError value, $Res Function(UpdateUsernameError) then) =
      _$UpdateUsernameErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$UpdateUsernameErrorCopyWithImpl<$Res>
    extends _$UpdateUsernameCopyWithImpl<$Res>
    implements $UpdateUsernameErrorCopyWith<$Res> {
  _$UpdateUsernameErrorCopyWithImpl(
      UpdateUsernameError _value, $Res Function(UpdateUsernameError) _then)
      : super(_value, (v) => _then(v as UpdateUsernameError));

  @override
  UpdateUsernameError get _value => super._value as UpdateUsernameError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(UpdateUsernameError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$UpdateUsernameError implements UpdateUsernameError {
  const _$UpdateUsernameError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'UpdateUsername.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateUsernameError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $UpdateUsernameErrorCopyWith<UpdateUsernameError> get copyWith =>
      _$UpdateUsernameErrorCopyWithImpl<UpdateUsernameError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String username), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String username), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateUsername$ value), {
    @required Result successful(UpdateUsernameSuccessful value),
    @required Result error(UpdateUsernameError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateUsername$ value), {
    Result successful(UpdateUsernameSuccessful value),
    Result error(UpdateUsernameError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateUsernameError implements UpdateUsername, ErrorAction {
  const factory UpdateUsernameError(Object error) = _$UpdateUsernameError;

  Object get error;
  $UpdateUsernameErrorCopyWith<UpdateUsernameError> get copyWith;
}

/// @nodoc
class _$UpdateLocationTearOff {
  const _$UpdateLocationTearOff();

// ignore: unused_element
  UpdateLocation$ call(String location) {
    return UpdateLocation$(
      location,
    );
  }

// ignore: unused_element
  UpdateLocationSuccessful successful() {
    return const UpdateLocationSuccessful();
  }

// ignore: unused_element
  UpdateLocationError error(Object error) {
    return UpdateLocationError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateLocation = _$UpdateLocationTearOff();

/// @nodoc
mixin _$UpdateLocation {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String location), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String location), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateLocation$ value), {
    @required Result successful(UpdateLocationSuccessful value),
    @required Result error(UpdateLocationError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateLocation$ value), {
    Result successful(UpdateLocationSuccessful value),
    Result error(UpdateLocationError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UpdateLocationCopyWith<$Res> {
  factory $UpdateLocationCopyWith(
          UpdateLocation value, $Res Function(UpdateLocation) then) =
      _$UpdateLocationCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateLocationCopyWithImpl<$Res>
    implements $UpdateLocationCopyWith<$Res> {
  _$UpdateLocationCopyWithImpl(this._value, this._then);

  final UpdateLocation _value;
  // ignore: unused_field
  final $Res Function(UpdateLocation) _then;
}

/// @nodoc
abstract class $UpdateLocation$CopyWith<$Res> {
  factory $UpdateLocation$CopyWith(
          UpdateLocation$ value, $Res Function(UpdateLocation$) then) =
      _$UpdateLocation$CopyWithImpl<$Res>;
  $Res call({String location});
}

/// @nodoc
class _$UpdateLocation$CopyWithImpl<$Res>
    extends _$UpdateLocationCopyWithImpl<$Res>
    implements $UpdateLocation$CopyWith<$Res> {
  _$UpdateLocation$CopyWithImpl(
      UpdateLocation$ _value, $Res Function(UpdateLocation$) _then)
      : super(_value, (v) => _then(v as UpdateLocation$));

  @override
  UpdateLocation$ get _value => super._value as UpdateLocation$;

  @override
  $Res call({
    Object location = freezed,
  }) {
    return _then(UpdateLocation$(
      location == freezed ? _value.location : location as String,
    ));
  }
}

/// @nodoc
class _$UpdateLocation$ implements UpdateLocation$ {
  const _$UpdateLocation$(this.location) : assert(location != null);

  @override
  final String location;

  @override
  String toString() {
    return 'UpdateLocation(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateLocation$ &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(location);

  @override
  $UpdateLocation$CopyWith<UpdateLocation$> get copyWith =>
      _$UpdateLocation$CopyWithImpl<UpdateLocation$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String location), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(location);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String location), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateLocation$ value), {
    @required Result successful(UpdateLocationSuccessful value),
    @required Result error(UpdateLocationError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateLocation$ value), {
    Result successful(UpdateLocationSuccessful value),
    Result error(UpdateLocationError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateLocation$ implements UpdateLocation {
  const factory UpdateLocation$(String location) = _$UpdateLocation$;

  String get location;
  $UpdateLocation$CopyWith<UpdateLocation$> get copyWith;
}

/// @nodoc
abstract class $UpdateLocationSuccessfulCopyWith<$Res> {
  factory $UpdateLocationSuccessfulCopyWith(UpdateLocationSuccessful value,
          $Res Function(UpdateLocationSuccessful) then) =
      _$UpdateLocationSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateLocationSuccessfulCopyWithImpl<$Res>
    extends _$UpdateLocationCopyWithImpl<$Res>
    implements $UpdateLocationSuccessfulCopyWith<$Res> {
  _$UpdateLocationSuccessfulCopyWithImpl(UpdateLocationSuccessful _value,
      $Res Function(UpdateLocationSuccessful) _then)
      : super(_value, (v) => _then(v as UpdateLocationSuccessful));

  @override
  UpdateLocationSuccessful get _value =>
      super._value as UpdateLocationSuccessful;
}

/// @nodoc
class _$UpdateLocationSuccessful implements UpdateLocationSuccessful {
  const _$UpdateLocationSuccessful();

  @override
  String toString() {
    return 'UpdateLocation.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UpdateLocationSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String location), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String location), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateLocation$ value), {
    @required Result successful(UpdateLocationSuccessful value),
    @required Result error(UpdateLocationError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateLocation$ value), {
    Result successful(UpdateLocationSuccessful value),
    Result error(UpdateLocationError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateLocationSuccessful implements UpdateLocation {
  const factory UpdateLocationSuccessful() = _$UpdateLocationSuccessful;
}

/// @nodoc
abstract class $UpdateLocationErrorCopyWith<$Res> {
  factory $UpdateLocationErrorCopyWith(
          UpdateLocationError value, $Res Function(UpdateLocationError) then) =
      _$UpdateLocationErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$UpdateLocationErrorCopyWithImpl<$Res>
    extends _$UpdateLocationCopyWithImpl<$Res>
    implements $UpdateLocationErrorCopyWith<$Res> {
  _$UpdateLocationErrorCopyWithImpl(
      UpdateLocationError _value, $Res Function(UpdateLocationError) _then)
      : super(_value, (v) => _then(v as UpdateLocationError));

  @override
  UpdateLocationError get _value => super._value as UpdateLocationError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(UpdateLocationError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$UpdateLocationError implements UpdateLocationError {
  const _$UpdateLocationError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'UpdateLocation.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateLocationError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $UpdateLocationErrorCopyWith<UpdateLocationError> get copyWith =>
      _$UpdateLocationErrorCopyWithImpl<UpdateLocationError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String location), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String location), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateLocation$ value), {
    @required Result successful(UpdateLocationSuccessful value),
    @required Result error(UpdateLocationError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateLocation$ value), {
    Result successful(UpdateLocationSuccessful value),
    Result error(UpdateLocationError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateLocationError implements UpdateLocation, ErrorAction {
  const factory UpdateLocationError(Object error) = _$UpdateLocationError;

  Object get error;
  $UpdateLocationErrorCopyWith<UpdateLocationError> get copyWith;
}

/// @nodoc
class _$UpdateCarsTearOff {
  const _$UpdateCarsTearOff();

// ignore: unused_element
  UpdateCars$ call(String cars) {
    return UpdateCars$(
      cars,
    );
  }

// ignore: unused_element
  UpdateCarsSuccessful successful() {
    return const UpdateCarsSuccessful();
  }

// ignore: unused_element
  UpdateCarsError error(Object error) {
    return UpdateCarsError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateCars = _$UpdateCarsTearOff();

/// @nodoc
mixin _$UpdateCars {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String cars), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String cars), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateCars$ value), {
    @required Result successful(UpdateCarsSuccessful value),
    @required Result error(UpdateCarsError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateCars$ value), {
    Result successful(UpdateCarsSuccessful value),
    Result error(UpdateCarsError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UpdateCarsCopyWith<$Res> {
  factory $UpdateCarsCopyWith(
          UpdateCars value, $Res Function(UpdateCars) then) =
      _$UpdateCarsCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateCarsCopyWithImpl<$Res> implements $UpdateCarsCopyWith<$Res> {
  _$UpdateCarsCopyWithImpl(this._value, this._then);

  final UpdateCars _value;
  // ignore: unused_field
  final $Res Function(UpdateCars) _then;
}

/// @nodoc
abstract class $UpdateCars$CopyWith<$Res> {
  factory $UpdateCars$CopyWith(
          UpdateCars$ value, $Res Function(UpdateCars$) then) =
      _$UpdateCars$CopyWithImpl<$Res>;
  $Res call({String cars});
}

/// @nodoc
class _$UpdateCars$CopyWithImpl<$Res> extends _$UpdateCarsCopyWithImpl<$Res>
    implements $UpdateCars$CopyWith<$Res> {
  _$UpdateCars$CopyWithImpl(
      UpdateCars$ _value, $Res Function(UpdateCars$) _then)
      : super(_value, (v) => _then(v as UpdateCars$));

  @override
  UpdateCars$ get _value => super._value as UpdateCars$;

  @override
  $Res call({
    Object cars = freezed,
  }) {
    return _then(UpdateCars$(
      cars == freezed ? _value.cars : cars as String,
    ));
  }
}

/// @nodoc
class _$UpdateCars$ implements UpdateCars$ {
  const _$UpdateCars$(this.cars) : assert(cars != null);

  @override
  final String cars;

  @override
  String toString() {
    return 'UpdateCars(cars: $cars)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateCars$ &&
            (identical(other.cars, cars) ||
                const DeepCollectionEquality().equals(other.cars, cars)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cars);

  @override
  $UpdateCars$CopyWith<UpdateCars$> get copyWith =>
      _$UpdateCars$CopyWithImpl<UpdateCars$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String cars), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(cars);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String cars), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(cars);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateCars$ value), {
    @required Result successful(UpdateCarsSuccessful value),
    @required Result error(UpdateCarsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateCars$ value), {
    Result successful(UpdateCarsSuccessful value),
    Result error(UpdateCarsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateCars$ implements UpdateCars {
  const factory UpdateCars$(String cars) = _$UpdateCars$;

  String get cars;
  $UpdateCars$CopyWith<UpdateCars$> get copyWith;
}

/// @nodoc
abstract class $UpdateCarsSuccessfulCopyWith<$Res> {
  factory $UpdateCarsSuccessfulCopyWith(UpdateCarsSuccessful value,
          $Res Function(UpdateCarsSuccessful) then) =
      _$UpdateCarsSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateCarsSuccessfulCopyWithImpl<$Res>
    extends _$UpdateCarsCopyWithImpl<$Res>
    implements $UpdateCarsSuccessfulCopyWith<$Res> {
  _$UpdateCarsSuccessfulCopyWithImpl(
      UpdateCarsSuccessful _value, $Res Function(UpdateCarsSuccessful) _then)
      : super(_value, (v) => _then(v as UpdateCarsSuccessful));

  @override
  UpdateCarsSuccessful get _value => super._value as UpdateCarsSuccessful;
}

/// @nodoc
class _$UpdateCarsSuccessful implements UpdateCarsSuccessful {
  const _$UpdateCarsSuccessful();

  @override
  String toString() {
    return 'UpdateCars.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UpdateCarsSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String cars), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String cars), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateCars$ value), {
    @required Result successful(UpdateCarsSuccessful value),
    @required Result error(UpdateCarsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateCars$ value), {
    Result successful(UpdateCarsSuccessful value),
    Result error(UpdateCarsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateCarsSuccessful implements UpdateCars {
  const factory UpdateCarsSuccessful() = _$UpdateCarsSuccessful;
}

/// @nodoc
abstract class $UpdateCarsErrorCopyWith<$Res> {
  factory $UpdateCarsErrorCopyWith(
          UpdateCarsError value, $Res Function(UpdateCarsError) then) =
      _$UpdateCarsErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$UpdateCarsErrorCopyWithImpl<$Res> extends _$UpdateCarsCopyWithImpl<$Res>
    implements $UpdateCarsErrorCopyWith<$Res> {
  _$UpdateCarsErrorCopyWithImpl(
      UpdateCarsError _value, $Res Function(UpdateCarsError) _then)
      : super(_value, (v) => _then(v as UpdateCarsError));

  @override
  UpdateCarsError get _value => super._value as UpdateCarsError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(UpdateCarsError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$UpdateCarsError implements UpdateCarsError {
  const _$UpdateCarsError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'UpdateCars.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateCarsError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $UpdateCarsErrorCopyWith<UpdateCarsError> get copyWith =>
      _$UpdateCarsErrorCopyWithImpl<UpdateCarsError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String cars), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String cars), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateCars$ value), {
    @required Result successful(UpdateCarsSuccessful value),
    @required Result error(UpdateCarsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateCars$ value), {
    Result successful(UpdateCarsSuccessful value),
    Result error(UpdateCarsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateCarsError implements UpdateCars, ErrorAction {
  const factory UpdateCarsError(Object error) = _$UpdateCarsError;

  Object get error;
  $UpdateCarsErrorCopyWith<UpdateCarsError> get copyWith;
}

/// @nodoc
class _$SearchUsersTearOff {
  const _$SearchUsersTearOff();

// ignore: unused_element
  SearchUsers$ call(String query) {
    return SearchUsers$(
      query,
    );
  }

// ignore: unused_element
  SearchUsersSuccessful successful(List<AppUser> users) {
    return SearchUsersSuccessful(
      users,
    );
  }

// ignore: unused_element
  SearchUsersError error(Object error) {
    return SearchUsersError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SearchUsers = _$SearchUsersTearOff();

/// @nodoc
mixin _$SearchUsers {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String query), {
    @required Result successful(List<AppUser> users),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String query), {
    Result successful(List<AppUser> users),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SearchUsers$ value), {
    @required Result successful(SearchUsersSuccessful value),
    @required Result error(SearchUsersError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SearchUsers$ value), {
    Result successful(SearchUsersSuccessful value),
    Result error(SearchUsersError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SearchUsersCopyWith<$Res> {
  factory $SearchUsersCopyWith(
          SearchUsers value, $Res Function(SearchUsers) then) =
      _$SearchUsersCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchUsersCopyWithImpl<$Res> implements $SearchUsersCopyWith<$Res> {
  _$SearchUsersCopyWithImpl(this._value, this._then);

  final SearchUsers _value;
  // ignore: unused_field
  final $Res Function(SearchUsers) _then;
}

/// @nodoc
abstract class $SearchUsers$CopyWith<$Res> {
  factory $SearchUsers$CopyWith(
          SearchUsers$ value, $Res Function(SearchUsers$) then) =
      _$SearchUsers$CopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class _$SearchUsers$CopyWithImpl<$Res> extends _$SearchUsersCopyWithImpl<$Res>
    implements $SearchUsers$CopyWith<$Res> {
  _$SearchUsers$CopyWithImpl(
      SearchUsers$ _value, $Res Function(SearchUsers$) _then)
      : super(_value, (v) => _then(v as SearchUsers$));

  @override
  SearchUsers$ get _value => super._value as SearchUsers$;

  @override
  $Res call({
    Object query = freezed,
  }) {
    return _then(SearchUsers$(
      query == freezed ? _value.query : query as String,
    ));
  }
}

/// @nodoc
class _$SearchUsers$ implements SearchUsers$ {
  const _$SearchUsers$(this.query) : assert(query != null);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchUsers(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchUsers$ &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(query);

  @override
  $SearchUsers$CopyWith<SearchUsers$> get copyWith =>
      _$SearchUsers$CopyWithImpl<SearchUsers$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String query), {
    @required Result successful(List<AppUser> users),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(query);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String query), {
    Result successful(List<AppUser> users),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SearchUsers$ value), {
    @required Result successful(SearchUsersSuccessful value),
    @required Result error(SearchUsersError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SearchUsers$ value), {
    Result successful(SearchUsersSuccessful value),
    Result error(SearchUsersError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SearchUsers$ implements SearchUsers {
  const factory SearchUsers$(String query) = _$SearchUsers$;

  String get query;
  $SearchUsers$CopyWith<SearchUsers$> get copyWith;
}

/// @nodoc
abstract class $SearchUsersSuccessfulCopyWith<$Res> {
  factory $SearchUsersSuccessfulCopyWith(SearchUsersSuccessful value,
          $Res Function(SearchUsersSuccessful) then) =
      _$SearchUsersSuccessfulCopyWithImpl<$Res>;
  $Res call({List<AppUser> users});
}

/// @nodoc
class _$SearchUsersSuccessfulCopyWithImpl<$Res>
    extends _$SearchUsersCopyWithImpl<$Res>
    implements $SearchUsersSuccessfulCopyWith<$Res> {
  _$SearchUsersSuccessfulCopyWithImpl(
      SearchUsersSuccessful _value, $Res Function(SearchUsersSuccessful) _then)
      : super(_value, (v) => _then(v as SearchUsersSuccessful));

  @override
  SearchUsersSuccessful get _value => super._value as SearchUsersSuccessful;

  @override
  $Res call({
    Object users = freezed,
  }) {
    return _then(SearchUsersSuccessful(
      users == freezed ? _value.users : users as List<AppUser>,
    ));
  }
}

/// @nodoc
class _$SearchUsersSuccessful implements SearchUsersSuccessful {
  const _$SearchUsersSuccessful(this.users) : assert(users != null);

  @override
  final List<AppUser> users;

  @override
  String toString() {
    return 'SearchUsers.successful(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchUsersSuccessful &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(users);

  @override
  $SearchUsersSuccessfulCopyWith<SearchUsersSuccessful> get copyWith =>
      _$SearchUsersSuccessfulCopyWithImpl<SearchUsersSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String query), {
    @required Result successful(List<AppUser> users),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(users);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String query), {
    Result successful(List<AppUser> users),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SearchUsers$ value), {
    @required Result successful(SearchUsersSuccessful value),
    @required Result error(SearchUsersError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SearchUsers$ value), {
    Result successful(SearchUsersSuccessful value),
    Result error(SearchUsersError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SearchUsersSuccessful implements SearchUsers {
  const factory SearchUsersSuccessful(List<AppUser> users) =
      _$SearchUsersSuccessful;

  List<AppUser> get users;
  $SearchUsersSuccessfulCopyWith<SearchUsersSuccessful> get copyWith;
}

/// @nodoc
abstract class $SearchUsersErrorCopyWith<$Res> {
  factory $SearchUsersErrorCopyWith(
          SearchUsersError value, $Res Function(SearchUsersError) then) =
      _$SearchUsersErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$SearchUsersErrorCopyWithImpl<$Res>
    extends _$SearchUsersCopyWithImpl<$Res>
    implements $SearchUsersErrorCopyWith<$Res> {
  _$SearchUsersErrorCopyWithImpl(
      SearchUsersError _value, $Res Function(SearchUsersError) _then)
      : super(_value, (v) => _then(v as SearchUsersError));

  @override
  SearchUsersError get _value => super._value as SearchUsersError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(SearchUsersError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$SearchUsersError implements SearchUsersError {
  const _$SearchUsersError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'SearchUsers.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchUsersError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $SearchUsersErrorCopyWith<SearchUsersError> get copyWith =>
      _$SearchUsersErrorCopyWithImpl<SearchUsersError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String query), {
    @required Result successful(List<AppUser> users),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String query), {
    Result successful(List<AppUser> users),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SearchUsers$ value), {
    @required Result successful(SearchUsersSuccessful value),
    @required Result error(SearchUsersError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SearchUsers$ value), {
    Result successful(SearchUsersSuccessful value),
    Result error(SearchUsersError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SearchUsersError implements SearchUsers, ErrorAction {
  const factory SearchUsersError(Object error) = _$SearchUsersError;

  Object get error;
  $SearchUsersErrorCopyWith<SearchUsersError> get copyWith;
}

/// @nodoc
class _$UpdateServiceCoverPhotoTearOff {
  const _$UpdateServiceCoverPhotoTearOff();

// ignore: unused_element
  UpdateServiceCoverPhoto$ call(String serviceCoverPhotoUrl) {
    return UpdateServiceCoverPhoto$(
      serviceCoverPhotoUrl,
    );
  }

// ignore: unused_element
  UpdateServiceCoverPhotoSuccessful successful() {
    return const UpdateServiceCoverPhotoSuccessful();
  }

// ignore: unused_element
  UpdateServiceCoverPhotoError error(Object error) {
    return UpdateServiceCoverPhotoError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateServiceCoverPhoto = _$UpdateServiceCoverPhotoTearOff();

/// @nodoc
mixin _$UpdateServiceCoverPhoto {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String serviceCoverPhotoUrl), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String serviceCoverPhotoUrl), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateServiceCoverPhoto$ value), {
    @required Result successful(UpdateServiceCoverPhotoSuccessful value),
    @required Result error(UpdateServiceCoverPhotoError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateServiceCoverPhoto$ value), {
    Result successful(UpdateServiceCoverPhotoSuccessful value),
    Result error(UpdateServiceCoverPhotoError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UpdateServiceCoverPhotoCopyWith<$Res> {
  factory $UpdateServiceCoverPhotoCopyWith(UpdateServiceCoverPhoto value,
          $Res Function(UpdateServiceCoverPhoto) then) =
      _$UpdateServiceCoverPhotoCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateServiceCoverPhotoCopyWithImpl<$Res>
    implements $UpdateServiceCoverPhotoCopyWith<$Res> {
  _$UpdateServiceCoverPhotoCopyWithImpl(this._value, this._then);

  final UpdateServiceCoverPhoto _value;
  // ignore: unused_field
  final $Res Function(UpdateServiceCoverPhoto) _then;
}

/// @nodoc
abstract class $UpdateServiceCoverPhoto$CopyWith<$Res> {
  factory $UpdateServiceCoverPhoto$CopyWith(UpdateServiceCoverPhoto$ value,
          $Res Function(UpdateServiceCoverPhoto$) then) =
      _$UpdateServiceCoverPhoto$CopyWithImpl<$Res>;
  $Res call({String serviceCoverPhotoUrl});
}

/// @nodoc
class _$UpdateServiceCoverPhoto$CopyWithImpl<$Res>
    extends _$UpdateServiceCoverPhotoCopyWithImpl<$Res>
    implements $UpdateServiceCoverPhoto$CopyWith<$Res> {
  _$UpdateServiceCoverPhoto$CopyWithImpl(UpdateServiceCoverPhoto$ _value,
      $Res Function(UpdateServiceCoverPhoto$) _then)
      : super(_value, (v) => _then(v as UpdateServiceCoverPhoto$));

  @override
  UpdateServiceCoverPhoto$ get _value =>
      super._value as UpdateServiceCoverPhoto$;

  @override
  $Res call({
    Object serviceCoverPhotoUrl = freezed,
  }) {
    return _then(UpdateServiceCoverPhoto$(
      serviceCoverPhotoUrl == freezed
          ? _value.serviceCoverPhotoUrl
          : serviceCoverPhotoUrl as String,
    ));
  }
}

/// @nodoc
class _$UpdateServiceCoverPhoto$ implements UpdateServiceCoverPhoto$ {
  const _$UpdateServiceCoverPhoto$(this.serviceCoverPhotoUrl)
      : assert(serviceCoverPhotoUrl != null);

  @override
  final String serviceCoverPhotoUrl;

  @override
  String toString() {
    return 'UpdateServiceCoverPhoto(serviceCoverPhotoUrl: $serviceCoverPhotoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateServiceCoverPhoto$ &&
            (identical(other.serviceCoverPhotoUrl, serviceCoverPhotoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.serviceCoverPhotoUrl, serviceCoverPhotoUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(serviceCoverPhotoUrl);

  @override
  $UpdateServiceCoverPhoto$CopyWith<UpdateServiceCoverPhoto$> get copyWith =>
      _$UpdateServiceCoverPhoto$CopyWithImpl<UpdateServiceCoverPhoto$>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String serviceCoverPhotoUrl), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(serviceCoverPhotoUrl);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String serviceCoverPhotoUrl), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(serviceCoverPhotoUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateServiceCoverPhoto$ value), {
    @required Result successful(UpdateServiceCoverPhotoSuccessful value),
    @required Result error(UpdateServiceCoverPhotoError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateServiceCoverPhoto$ value), {
    Result successful(UpdateServiceCoverPhotoSuccessful value),
    Result error(UpdateServiceCoverPhotoError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateServiceCoverPhoto$ implements UpdateServiceCoverPhoto {
  const factory UpdateServiceCoverPhoto$(String serviceCoverPhotoUrl) =
      _$UpdateServiceCoverPhoto$;

  String get serviceCoverPhotoUrl;
  $UpdateServiceCoverPhoto$CopyWith<UpdateServiceCoverPhoto$> get copyWith;
}

/// @nodoc
abstract class $UpdateServiceCoverPhotoSuccessfulCopyWith<$Res> {
  factory $UpdateServiceCoverPhotoSuccessfulCopyWith(
          UpdateServiceCoverPhotoSuccessful value,
          $Res Function(UpdateServiceCoverPhotoSuccessful) then) =
      _$UpdateServiceCoverPhotoSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateServiceCoverPhotoSuccessfulCopyWithImpl<$Res>
    extends _$UpdateServiceCoverPhotoCopyWithImpl<$Res>
    implements $UpdateServiceCoverPhotoSuccessfulCopyWith<$Res> {
  _$UpdateServiceCoverPhotoSuccessfulCopyWithImpl(
      UpdateServiceCoverPhotoSuccessful _value,
      $Res Function(UpdateServiceCoverPhotoSuccessful) _then)
      : super(_value, (v) => _then(v as UpdateServiceCoverPhotoSuccessful));

  @override
  UpdateServiceCoverPhotoSuccessful get _value =>
      super._value as UpdateServiceCoverPhotoSuccessful;
}

/// @nodoc
class _$UpdateServiceCoverPhotoSuccessful
    implements UpdateServiceCoverPhotoSuccessful {
  const _$UpdateServiceCoverPhotoSuccessful();

  @override
  String toString() {
    return 'UpdateServiceCoverPhoto.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateServiceCoverPhotoSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String serviceCoverPhotoUrl), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String serviceCoverPhotoUrl), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateServiceCoverPhoto$ value), {
    @required Result successful(UpdateServiceCoverPhotoSuccessful value),
    @required Result error(UpdateServiceCoverPhotoError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateServiceCoverPhoto$ value), {
    Result successful(UpdateServiceCoverPhotoSuccessful value),
    Result error(UpdateServiceCoverPhotoError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateServiceCoverPhotoSuccessful
    implements UpdateServiceCoverPhoto {
  const factory UpdateServiceCoverPhotoSuccessful() =
      _$UpdateServiceCoverPhotoSuccessful;
}

/// @nodoc
abstract class $UpdateServiceCoverPhotoErrorCopyWith<$Res> {
  factory $UpdateServiceCoverPhotoErrorCopyWith(
          UpdateServiceCoverPhotoError value,
          $Res Function(UpdateServiceCoverPhotoError) then) =
      _$UpdateServiceCoverPhotoErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$UpdateServiceCoverPhotoErrorCopyWithImpl<$Res>
    extends _$UpdateServiceCoverPhotoCopyWithImpl<$Res>
    implements $UpdateServiceCoverPhotoErrorCopyWith<$Res> {
  _$UpdateServiceCoverPhotoErrorCopyWithImpl(
      UpdateServiceCoverPhotoError _value,
      $Res Function(UpdateServiceCoverPhotoError) _then)
      : super(_value, (v) => _then(v as UpdateServiceCoverPhotoError));

  @override
  UpdateServiceCoverPhotoError get _value =>
      super._value as UpdateServiceCoverPhotoError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(UpdateServiceCoverPhotoError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$UpdateServiceCoverPhotoError implements UpdateServiceCoverPhotoError {
  const _$UpdateServiceCoverPhotoError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'UpdateServiceCoverPhoto.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateServiceCoverPhotoError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $UpdateServiceCoverPhotoErrorCopyWith<UpdateServiceCoverPhotoError>
      get copyWith => _$UpdateServiceCoverPhotoErrorCopyWithImpl<
          UpdateServiceCoverPhotoError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String serviceCoverPhotoUrl), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String serviceCoverPhotoUrl), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateServiceCoverPhoto$ value), {
    @required Result successful(UpdateServiceCoverPhotoSuccessful value),
    @required Result error(UpdateServiceCoverPhotoError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateServiceCoverPhoto$ value), {
    Result successful(UpdateServiceCoverPhotoSuccessful value),
    Result error(UpdateServiceCoverPhotoError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateServiceCoverPhotoError
    implements UpdateServiceCoverPhoto, ErrorAction {
  const factory UpdateServiceCoverPhotoError(Object error) =
      _$UpdateServiceCoverPhotoError;

  Object get error;
  $UpdateServiceCoverPhotoErrorCopyWith<UpdateServiceCoverPhotoError>
      get copyWith;
}

/// @nodoc
class _$UpdateServiceProfilePhotoTearOff {
  const _$UpdateServiceProfilePhotoTearOff();

// ignore: unused_element
  UpdateServiceProfilePhoto$ call(String serviceProfilePhotoUrl) {
    return UpdateServiceProfilePhoto$(
      serviceProfilePhotoUrl,
    );
  }

// ignore: unused_element
  UpdateServiceProfilePhotoSuccessful successful() {
    return const UpdateServiceProfilePhotoSuccessful();
  }

// ignore: unused_element
  UpdateServiceProfilePhotoError error(Object error) {
    return UpdateServiceProfilePhotoError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateServiceProfilePhoto = _$UpdateServiceProfilePhotoTearOff();

/// @nodoc
mixin _$UpdateServiceProfilePhoto {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String serviceProfilePhotoUrl), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String serviceProfilePhotoUrl), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateServiceProfilePhoto$ value), {
    @required Result successful(UpdateServiceProfilePhotoSuccessful value),
    @required Result error(UpdateServiceProfilePhotoError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateServiceProfilePhoto$ value), {
    Result successful(UpdateServiceProfilePhotoSuccessful value),
    Result error(UpdateServiceProfilePhotoError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UpdateServiceProfilePhotoCopyWith<$Res> {
  factory $UpdateServiceProfilePhotoCopyWith(UpdateServiceProfilePhoto value,
          $Res Function(UpdateServiceProfilePhoto) then) =
      _$UpdateServiceProfilePhotoCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateServiceProfilePhotoCopyWithImpl<$Res>
    implements $UpdateServiceProfilePhotoCopyWith<$Res> {
  _$UpdateServiceProfilePhotoCopyWithImpl(this._value, this._then);

  final UpdateServiceProfilePhoto _value;
  // ignore: unused_field
  final $Res Function(UpdateServiceProfilePhoto) _then;
}

/// @nodoc
abstract class $UpdateServiceProfilePhoto$CopyWith<$Res> {
  factory $UpdateServiceProfilePhoto$CopyWith(UpdateServiceProfilePhoto$ value,
          $Res Function(UpdateServiceProfilePhoto$) then) =
      _$UpdateServiceProfilePhoto$CopyWithImpl<$Res>;
  $Res call({String serviceProfilePhotoUrl});
}

/// @nodoc
class _$UpdateServiceProfilePhoto$CopyWithImpl<$Res>
    extends _$UpdateServiceProfilePhotoCopyWithImpl<$Res>
    implements $UpdateServiceProfilePhoto$CopyWith<$Res> {
  _$UpdateServiceProfilePhoto$CopyWithImpl(UpdateServiceProfilePhoto$ _value,
      $Res Function(UpdateServiceProfilePhoto$) _then)
      : super(_value, (v) => _then(v as UpdateServiceProfilePhoto$));

  @override
  UpdateServiceProfilePhoto$ get _value =>
      super._value as UpdateServiceProfilePhoto$;

  @override
  $Res call({
    Object serviceProfilePhotoUrl = freezed,
  }) {
    return _then(UpdateServiceProfilePhoto$(
      serviceProfilePhotoUrl == freezed
          ? _value.serviceProfilePhotoUrl
          : serviceProfilePhotoUrl as String,
    ));
  }
}

/// @nodoc
class _$UpdateServiceProfilePhoto$ implements UpdateServiceProfilePhoto$ {
  const _$UpdateServiceProfilePhoto$(this.serviceProfilePhotoUrl)
      : assert(serviceProfilePhotoUrl != null);

  @override
  final String serviceProfilePhotoUrl;

  @override
  String toString() {
    return 'UpdateServiceProfilePhoto(serviceProfilePhotoUrl: $serviceProfilePhotoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateServiceProfilePhoto$ &&
            (identical(other.serviceProfilePhotoUrl, serviceProfilePhotoUrl) ||
                const DeepCollectionEquality().equals(
                    other.serviceProfilePhotoUrl, serviceProfilePhotoUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(serviceProfilePhotoUrl);

  @override
  $UpdateServiceProfilePhoto$CopyWith<UpdateServiceProfilePhoto$>
      get copyWith =>
          _$UpdateServiceProfilePhoto$CopyWithImpl<UpdateServiceProfilePhoto$>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String serviceProfilePhotoUrl), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(serviceProfilePhotoUrl);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String serviceProfilePhotoUrl), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(serviceProfilePhotoUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateServiceProfilePhoto$ value), {
    @required Result successful(UpdateServiceProfilePhotoSuccessful value),
    @required Result error(UpdateServiceProfilePhotoError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateServiceProfilePhoto$ value), {
    Result successful(UpdateServiceProfilePhotoSuccessful value),
    Result error(UpdateServiceProfilePhotoError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateServiceProfilePhoto$ implements UpdateServiceProfilePhoto {
  const factory UpdateServiceProfilePhoto$(String serviceProfilePhotoUrl) =
      _$UpdateServiceProfilePhoto$;

  String get serviceProfilePhotoUrl;
  $UpdateServiceProfilePhoto$CopyWith<UpdateServiceProfilePhoto$> get copyWith;
}

/// @nodoc
abstract class $UpdateServiceProfilePhotoSuccessfulCopyWith<$Res> {
  factory $UpdateServiceProfilePhotoSuccessfulCopyWith(
          UpdateServiceProfilePhotoSuccessful value,
          $Res Function(UpdateServiceProfilePhotoSuccessful) then) =
      _$UpdateServiceProfilePhotoSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateServiceProfilePhotoSuccessfulCopyWithImpl<$Res>
    extends _$UpdateServiceProfilePhotoCopyWithImpl<$Res>
    implements $UpdateServiceProfilePhotoSuccessfulCopyWith<$Res> {
  _$UpdateServiceProfilePhotoSuccessfulCopyWithImpl(
      UpdateServiceProfilePhotoSuccessful _value,
      $Res Function(UpdateServiceProfilePhotoSuccessful) _then)
      : super(_value, (v) => _then(v as UpdateServiceProfilePhotoSuccessful));

  @override
  UpdateServiceProfilePhotoSuccessful get _value =>
      super._value as UpdateServiceProfilePhotoSuccessful;
}

/// @nodoc
class _$UpdateServiceProfilePhotoSuccessful
    implements UpdateServiceProfilePhotoSuccessful {
  const _$UpdateServiceProfilePhotoSuccessful();

  @override
  String toString() {
    return 'UpdateServiceProfilePhoto.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateServiceProfilePhotoSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String serviceProfilePhotoUrl), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String serviceProfilePhotoUrl), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateServiceProfilePhoto$ value), {
    @required Result successful(UpdateServiceProfilePhotoSuccessful value),
    @required Result error(UpdateServiceProfilePhotoError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateServiceProfilePhoto$ value), {
    Result successful(UpdateServiceProfilePhotoSuccessful value),
    Result error(UpdateServiceProfilePhotoError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateServiceProfilePhotoSuccessful
    implements UpdateServiceProfilePhoto {
  const factory UpdateServiceProfilePhotoSuccessful() =
      _$UpdateServiceProfilePhotoSuccessful;
}

/// @nodoc
abstract class $UpdateServiceProfilePhotoErrorCopyWith<$Res> {
  factory $UpdateServiceProfilePhotoErrorCopyWith(
          UpdateServiceProfilePhotoError value,
          $Res Function(UpdateServiceProfilePhotoError) then) =
      _$UpdateServiceProfilePhotoErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$UpdateServiceProfilePhotoErrorCopyWithImpl<$Res>
    extends _$UpdateServiceProfilePhotoCopyWithImpl<$Res>
    implements $UpdateServiceProfilePhotoErrorCopyWith<$Res> {
  _$UpdateServiceProfilePhotoErrorCopyWithImpl(
      UpdateServiceProfilePhotoError _value,
      $Res Function(UpdateServiceProfilePhotoError) _then)
      : super(_value, (v) => _then(v as UpdateServiceProfilePhotoError));

  @override
  UpdateServiceProfilePhotoError get _value =>
      super._value as UpdateServiceProfilePhotoError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(UpdateServiceProfilePhotoError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$UpdateServiceProfilePhotoError
    implements UpdateServiceProfilePhotoError {
  const _$UpdateServiceProfilePhotoError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'UpdateServiceProfilePhoto.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateServiceProfilePhotoError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $UpdateServiceProfilePhotoErrorCopyWith<UpdateServiceProfilePhotoError>
      get copyWith => _$UpdateServiceProfilePhotoErrorCopyWithImpl<
          UpdateServiceProfilePhotoError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String serviceProfilePhotoUrl), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String serviceProfilePhotoUrl), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateServiceProfilePhoto$ value), {
    @required Result successful(UpdateServiceProfilePhotoSuccessful value),
    @required Result error(UpdateServiceProfilePhotoError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateServiceProfilePhoto$ value), {
    Result successful(UpdateServiceProfilePhotoSuccessful value),
    Result error(UpdateServiceProfilePhotoError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateServiceProfilePhotoError
    implements UpdateServiceProfilePhoto, ErrorAction {
  const factory UpdateServiceProfilePhotoError(Object error) =
      _$UpdateServiceProfilePhotoError;

  Object get error;
  $UpdateServiceProfilePhotoErrorCopyWith<UpdateServiceProfilePhotoError>
      get copyWith;
}

/// @nodoc
class _$UpdateFirstNameTearOff {
  const _$UpdateFirstNameTearOff();

// ignore: unused_element
  UpdateFirstName$ call(String firstName) {
    return UpdateFirstName$(
      firstName,
    );
  }

// ignore: unused_element
  UpdateFirstNameSuccessful successful() {
    return const UpdateFirstNameSuccessful();
  }

// ignore: unused_element
  UpdateFirstNameError error(Object error) {
    return UpdateFirstNameError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateFirstName = _$UpdateFirstNameTearOff();

/// @nodoc
mixin _$UpdateFirstName {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String firstName), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String firstName), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateFirstName$ value), {
    @required Result successful(UpdateFirstNameSuccessful value),
    @required Result error(UpdateFirstNameError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateFirstName$ value), {
    Result successful(UpdateFirstNameSuccessful value),
    Result error(UpdateFirstNameError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UpdateFirstNameCopyWith<$Res> {
  factory $UpdateFirstNameCopyWith(
          UpdateFirstName value, $Res Function(UpdateFirstName) then) =
      _$UpdateFirstNameCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateFirstNameCopyWithImpl<$Res>
    implements $UpdateFirstNameCopyWith<$Res> {
  _$UpdateFirstNameCopyWithImpl(this._value, this._then);

  final UpdateFirstName _value;
  // ignore: unused_field
  final $Res Function(UpdateFirstName) _then;
}

/// @nodoc
abstract class $UpdateFirstName$CopyWith<$Res> {
  factory $UpdateFirstName$CopyWith(
          UpdateFirstName$ value, $Res Function(UpdateFirstName$) then) =
      _$UpdateFirstName$CopyWithImpl<$Res>;
  $Res call({String firstName});
}

/// @nodoc
class _$UpdateFirstName$CopyWithImpl<$Res>
    extends _$UpdateFirstNameCopyWithImpl<$Res>
    implements $UpdateFirstName$CopyWith<$Res> {
  _$UpdateFirstName$CopyWithImpl(
      UpdateFirstName$ _value, $Res Function(UpdateFirstName$) _then)
      : super(_value, (v) => _then(v as UpdateFirstName$));

  @override
  UpdateFirstName$ get _value => super._value as UpdateFirstName$;

  @override
  $Res call({
    Object firstName = freezed,
  }) {
    return _then(UpdateFirstName$(
      firstName == freezed ? _value.firstName : firstName as String,
    ));
  }
}

/// @nodoc
class _$UpdateFirstName$ implements UpdateFirstName$ {
  const _$UpdateFirstName$(this.firstName) : assert(firstName != null);

  @override
  final String firstName;

  @override
  String toString() {
    return 'UpdateFirstName(firstName: $firstName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateFirstName$ &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(firstName);

  @override
  $UpdateFirstName$CopyWith<UpdateFirstName$> get copyWith =>
      _$UpdateFirstName$CopyWithImpl<UpdateFirstName$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String firstName), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(firstName);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String firstName), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(firstName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateFirstName$ value), {
    @required Result successful(UpdateFirstNameSuccessful value),
    @required Result error(UpdateFirstNameError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateFirstName$ value), {
    Result successful(UpdateFirstNameSuccessful value),
    Result error(UpdateFirstNameError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateFirstName$ implements UpdateFirstName {
  const factory UpdateFirstName$(String firstName) = _$UpdateFirstName$;

  String get firstName;
  $UpdateFirstName$CopyWith<UpdateFirstName$> get copyWith;
}

/// @nodoc
abstract class $UpdateFirstNameSuccessfulCopyWith<$Res> {
  factory $UpdateFirstNameSuccessfulCopyWith(UpdateFirstNameSuccessful value,
          $Res Function(UpdateFirstNameSuccessful) then) =
      _$UpdateFirstNameSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateFirstNameSuccessfulCopyWithImpl<$Res>
    extends _$UpdateFirstNameCopyWithImpl<$Res>
    implements $UpdateFirstNameSuccessfulCopyWith<$Res> {
  _$UpdateFirstNameSuccessfulCopyWithImpl(UpdateFirstNameSuccessful _value,
      $Res Function(UpdateFirstNameSuccessful) _then)
      : super(_value, (v) => _then(v as UpdateFirstNameSuccessful));

  @override
  UpdateFirstNameSuccessful get _value =>
      super._value as UpdateFirstNameSuccessful;
}

/// @nodoc
class _$UpdateFirstNameSuccessful implements UpdateFirstNameSuccessful {
  const _$UpdateFirstNameSuccessful();

  @override
  String toString() {
    return 'UpdateFirstName.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UpdateFirstNameSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String firstName), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String firstName), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateFirstName$ value), {
    @required Result successful(UpdateFirstNameSuccessful value),
    @required Result error(UpdateFirstNameError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateFirstName$ value), {
    Result successful(UpdateFirstNameSuccessful value),
    Result error(UpdateFirstNameError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateFirstNameSuccessful implements UpdateFirstName {
  const factory UpdateFirstNameSuccessful() = _$UpdateFirstNameSuccessful;
}

/// @nodoc
abstract class $UpdateFirstNameErrorCopyWith<$Res> {
  factory $UpdateFirstNameErrorCopyWith(UpdateFirstNameError value,
          $Res Function(UpdateFirstNameError) then) =
      _$UpdateFirstNameErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$UpdateFirstNameErrorCopyWithImpl<$Res>
    extends _$UpdateFirstNameCopyWithImpl<$Res>
    implements $UpdateFirstNameErrorCopyWith<$Res> {
  _$UpdateFirstNameErrorCopyWithImpl(
      UpdateFirstNameError _value, $Res Function(UpdateFirstNameError) _then)
      : super(_value, (v) => _then(v as UpdateFirstNameError));

  @override
  UpdateFirstNameError get _value => super._value as UpdateFirstNameError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(UpdateFirstNameError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$UpdateFirstNameError implements UpdateFirstNameError {
  const _$UpdateFirstNameError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'UpdateFirstName.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateFirstNameError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $UpdateFirstNameErrorCopyWith<UpdateFirstNameError> get copyWith =>
      _$UpdateFirstNameErrorCopyWithImpl<UpdateFirstNameError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String firstName), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String firstName), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateFirstName$ value), {
    @required Result successful(UpdateFirstNameSuccessful value),
    @required Result error(UpdateFirstNameError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateFirstName$ value), {
    Result successful(UpdateFirstNameSuccessful value),
    Result error(UpdateFirstNameError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateFirstNameError implements UpdateFirstName, ErrorAction {
  const factory UpdateFirstNameError(Object error) = _$UpdateFirstNameError;

  Object get error;
  $UpdateFirstNameErrorCopyWith<UpdateFirstNameError> get copyWith;
}

/// @nodoc
class _$UpdateLastNameTearOff {
  const _$UpdateLastNameTearOff();

// ignore: unused_element
  UpdateLastName$ call(String lastName) {
    return UpdateLastName$(
      lastName,
    );
  }

// ignore: unused_element
  UpdateLastNameSuccessful successful() {
    return const UpdateLastNameSuccessful();
  }

// ignore: unused_element
  UpdateLastNameError error(Object error) {
    return UpdateLastNameError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateLastName = _$UpdateLastNameTearOff();

/// @nodoc
mixin _$UpdateLastName {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String lastName), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String lastName), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateLastName$ value), {
    @required Result successful(UpdateLastNameSuccessful value),
    @required Result error(UpdateLastNameError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateLastName$ value), {
    Result successful(UpdateLastNameSuccessful value),
    Result error(UpdateLastNameError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UpdateLastNameCopyWith<$Res> {
  factory $UpdateLastNameCopyWith(
          UpdateLastName value, $Res Function(UpdateLastName) then) =
      _$UpdateLastNameCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateLastNameCopyWithImpl<$Res>
    implements $UpdateLastNameCopyWith<$Res> {
  _$UpdateLastNameCopyWithImpl(this._value, this._then);

  final UpdateLastName _value;
  // ignore: unused_field
  final $Res Function(UpdateLastName) _then;
}

/// @nodoc
abstract class $UpdateLastName$CopyWith<$Res> {
  factory $UpdateLastName$CopyWith(
          UpdateLastName$ value, $Res Function(UpdateLastName$) then) =
      _$UpdateLastName$CopyWithImpl<$Res>;
  $Res call({String lastName});
}

/// @nodoc
class _$UpdateLastName$CopyWithImpl<$Res>
    extends _$UpdateLastNameCopyWithImpl<$Res>
    implements $UpdateLastName$CopyWith<$Res> {
  _$UpdateLastName$CopyWithImpl(
      UpdateLastName$ _value, $Res Function(UpdateLastName$) _then)
      : super(_value, (v) => _then(v as UpdateLastName$));

  @override
  UpdateLastName$ get _value => super._value as UpdateLastName$;

  @override
  $Res call({
    Object lastName = freezed,
  }) {
    return _then(UpdateLastName$(
      lastName == freezed ? _value.lastName : lastName as String,
    ));
  }
}

/// @nodoc
class _$UpdateLastName$ implements UpdateLastName$ {
  const _$UpdateLastName$(this.lastName) : assert(lastName != null);

  @override
  final String lastName;

  @override
  String toString() {
    return 'UpdateLastName(lastName: $lastName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateLastName$ &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(lastName);

  @override
  $UpdateLastName$CopyWith<UpdateLastName$> get copyWith =>
      _$UpdateLastName$CopyWithImpl<UpdateLastName$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String lastName), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(lastName);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String lastName), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(lastName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateLastName$ value), {
    @required Result successful(UpdateLastNameSuccessful value),
    @required Result error(UpdateLastNameError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateLastName$ value), {
    Result successful(UpdateLastNameSuccessful value),
    Result error(UpdateLastNameError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateLastName$ implements UpdateLastName {
  const factory UpdateLastName$(String lastName) = _$UpdateLastName$;

  String get lastName;
  $UpdateLastName$CopyWith<UpdateLastName$> get copyWith;
}

/// @nodoc
abstract class $UpdateLastNameSuccessfulCopyWith<$Res> {
  factory $UpdateLastNameSuccessfulCopyWith(UpdateLastNameSuccessful value,
          $Res Function(UpdateLastNameSuccessful) then) =
      _$UpdateLastNameSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateLastNameSuccessfulCopyWithImpl<$Res>
    extends _$UpdateLastNameCopyWithImpl<$Res>
    implements $UpdateLastNameSuccessfulCopyWith<$Res> {
  _$UpdateLastNameSuccessfulCopyWithImpl(UpdateLastNameSuccessful _value,
      $Res Function(UpdateLastNameSuccessful) _then)
      : super(_value, (v) => _then(v as UpdateLastNameSuccessful));

  @override
  UpdateLastNameSuccessful get _value =>
      super._value as UpdateLastNameSuccessful;
}

/// @nodoc
class _$UpdateLastNameSuccessful implements UpdateLastNameSuccessful {
  const _$UpdateLastNameSuccessful();

  @override
  String toString() {
    return 'UpdateLastName.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UpdateLastNameSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String lastName), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String lastName), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateLastName$ value), {
    @required Result successful(UpdateLastNameSuccessful value),
    @required Result error(UpdateLastNameError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateLastName$ value), {
    Result successful(UpdateLastNameSuccessful value),
    Result error(UpdateLastNameError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateLastNameSuccessful implements UpdateLastName {
  const factory UpdateLastNameSuccessful() = _$UpdateLastNameSuccessful;
}

/// @nodoc
abstract class $UpdateLastNameErrorCopyWith<$Res> {
  factory $UpdateLastNameErrorCopyWith(
          UpdateLastNameError value, $Res Function(UpdateLastNameError) then) =
      _$UpdateLastNameErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$UpdateLastNameErrorCopyWithImpl<$Res>
    extends _$UpdateLastNameCopyWithImpl<$Res>
    implements $UpdateLastNameErrorCopyWith<$Res> {
  _$UpdateLastNameErrorCopyWithImpl(
      UpdateLastNameError _value, $Res Function(UpdateLastNameError) _then)
      : super(_value, (v) => _then(v as UpdateLastNameError));

  @override
  UpdateLastNameError get _value => super._value as UpdateLastNameError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(UpdateLastNameError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$UpdateLastNameError implements UpdateLastNameError {
  const _$UpdateLastNameError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'UpdateLastName.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateLastNameError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $UpdateLastNameErrorCopyWith<UpdateLastNameError> get copyWith =>
      _$UpdateLastNameErrorCopyWithImpl<UpdateLastNameError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String lastName), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String lastName), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateLastName$ value), {
    @required Result successful(UpdateLastNameSuccessful value),
    @required Result error(UpdateLastNameError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateLastName$ value), {
    Result successful(UpdateLastNameSuccessful value),
    Result error(UpdateLastNameError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateLastNameError implements UpdateLastName, ErrorAction {
  const factory UpdateLastNameError(Object error) = _$UpdateLastNameError;

  Object get error;
  $UpdateLastNameErrorCopyWith<UpdateLastNameError> get copyWith;
}

/// @nodoc
class _$UpdateServiceNameTearOff {
  const _$UpdateServiceNameTearOff();

// ignore: unused_element
  UpdateServiceName$ call(String serviceName) {
    return UpdateServiceName$(
      serviceName,
    );
  }

// ignore: unused_element
  UpdateServiceNameSuccessful successful() {
    return const UpdateServiceNameSuccessful();
  }

// ignore: unused_element
  UpdateServiceNameError error(Object error) {
    return UpdateServiceNameError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateServiceName = _$UpdateServiceNameTearOff();

/// @nodoc
mixin _$UpdateServiceName {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String serviceName), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String serviceName), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateServiceName$ value), {
    @required Result successful(UpdateServiceNameSuccessful value),
    @required Result error(UpdateServiceNameError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateServiceName$ value), {
    Result successful(UpdateServiceNameSuccessful value),
    Result error(UpdateServiceNameError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UpdateServiceNameCopyWith<$Res> {
  factory $UpdateServiceNameCopyWith(
          UpdateServiceName value, $Res Function(UpdateServiceName) then) =
      _$UpdateServiceNameCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateServiceNameCopyWithImpl<$Res>
    implements $UpdateServiceNameCopyWith<$Res> {
  _$UpdateServiceNameCopyWithImpl(this._value, this._then);

  final UpdateServiceName _value;
  // ignore: unused_field
  final $Res Function(UpdateServiceName) _then;
}

/// @nodoc
abstract class $UpdateServiceName$CopyWith<$Res> {
  factory $UpdateServiceName$CopyWith(
          UpdateServiceName$ value, $Res Function(UpdateServiceName$) then) =
      _$UpdateServiceName$CopyWithImpl<$Res>;
  $Res call({String serviceName});
}

/// @nodoc
class _$UpdateServiceName$CopyWithImpl<$Res>
    extends _$UpdateServiceNameCopyWithImpl<$Res>
    implements $UpdateServiceName$CopyWith<$Res> {
  _$UpdateServiceName$CopyWithImpl(
      UpdateServiceName$ _value, $Res Function(UpdateServiceName$) _then)
      : super(_value, (v) => _then(v as UpdateServiceName$));

  @override
  UpdateServiceName$ get _value => super._value as UpdateServiceName$;

  @override
  $Res call({
    Object serviceName = freezed,
  }) {
    return _then(UpdateServiceName$(
      serviceName == freezed ? _value.serviceName : serviceName as String,
    ));
  }
}

/// @nodoc
class _$UpdateServiceName$ implements UpdateServiceName$ {
  const _$UpdateServiceName$(this.serviceName) : assert(serviceName != null);

  @override
  final String serviceName;

  @override
  String toString() {
    return 'UpdateServiceName(serviceName: $serviceName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateServiceName$ &&
            (identical(other.serviceName, serviceName) ||
                const DeepCollectionEquality()
                    .equals(other.serviceName, serviceName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(serviceName);

  @override
  $UpdateServiceName$CopyWith<UpdateServiceName$> get copyWith =>
      _$UpdateServiceName$CopyWithImpl<UpdateServiceName$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String serviceName), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(serviceName);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String serviceName), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(serviceName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateServiceName$ value), {
    @required Result successful(UpdateServiceNameSuccessful value),
    @required Result error(UpdateServiceNameError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateServiceName$ value), {
    Result successful(UpdateServiceNameSuccessful value),
    Result error(UpdateServiceNameError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateServiceName$ implements UpdateServiceName {
  const factory UpdateServiceName$(String serviceName) = _$UpdateServiceName$;

  String get serviceName;
  $UpdateServiceName$CopyWith<UpdateServiceName$> get copyWith;
}

/// @nodoc
abstract class $UpdateServiceNameSuccessfulCopyWith<$Res> {
  factory $UpdateServiceNameSuccessfulCopyWith(
          UpdateServiceNameSuccessful value,
          $Res Function(UpdateServiceNameSuccessful) then) =
      _$UpdateServiceNameSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateServiceNameSuccessfulCopyWithImpl<$Res>
    extends _$UpdateServiceNameCopyWithImpl<$Res>
    implements $UpdateServiceNameSuccessfulCopyWith<$Res> {
  _$UpdateServiceNameSuccessfulCopyWithImpl(UpdateServiceNameSuccessful _value,
      $Res Function(UpdateServiceNameSuccessful) _then)
      : super(_value, (v) => _then(v as UpdateServiceNameSuccessful));

  @override
  UpdateServiceNameSuccessful get _value =>
      super._value as UpdateServiceNameSuccessful;
}

/// @nodoc
class _$UpdateServiceNameSuccessful implements UpdateServiceNameSuccessful {
  const _$UpdateServiceNameSuccessful();

  @override
  String toString() {
    return 'UpdateServiceName.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UpdateServiceNameSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String serviceName), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String serviceName), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateServiceName$ value), {
    @required Result successful(UpdateServiceNameSuccessful value),
    @required Result error(UpdateServiceNameError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateServiceName$ value), {
    Result successful(UpdateServiceNameSuccessful value),
    Result error(UpdateServiceNameError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateServiceNameSuccessful implements UpdateServiceName {
  const factory UpdateServiceNameSuccessful() = _$UpdateServiceNameSuccessful;
}

/// @nodoc
abstract class $UpdateServiceNameErrorCopyWith<$Res> {
  factory $UpdateServiceNameErrorCopyWith(UpdateServiceNameError value,
          $Res Function(UpdateServiceNameError) then) =
      _$UpdateServiceNameErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$UpdateServiceNameErrorCopyWithImpl<$Res>
    extends _$UpdateServiceNameCopyWithImpl<$Res>
    implements $UpdateServiceNameErrorCopyWith<$Res> {
  _$UpdateServiceNameErrorCopyWithImpl(UpdateServiceNameError _value,
      $Res Function(UpdateServiceNameError) _then)
      : super(_value, (v) => _then(v as UpdateServiceNameError));

  @override
  UpdateServiceNameError get _value => super._value as UpdateServiceNameError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(UpdateServiceNameError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$UpdateServiceNameError implements UpdateServiceNameError {
  const _$UpdateServiceNameError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'UpdateServiceName.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateServiceNameError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $UpdateServiceNameErrorCopyWith<UpdateServiceNameError> get copyWith =>
      _$UpdateServiceNameErrorCopyWithImpl<UpdateServiceNameError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String serviceName), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String serviceName), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateServiceName$ value), {
    @required Result successful(UpdateServiceNameSuccessful value),
    @required Result error(UpdateServiceNameError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateServiceName$ value), {
    Result successful(UpdateServiceNameSuccessful value),
    Result error(UpdateServiceNameError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateServiceNameError
    implements UpdateServiceName, ErrorAction {
  const factory UpdateServiceNameError(Object error) = _$UpdateServiceNameError;

  Object get error;
  $UpdateServiceNameErrorCopyWith<UpdateServiceNameError> get copyWith;
}

/// @nodoc
class _$UpdateServiceLocationTearOff {
  const _$UpdateServiceLocationTearOff();

// ignore: unused_element
  UpdateServiceLocation$ call(String serviceLocation) {
    return UpdateServiceLocation$(
      serviceLocation,
    );
  }

// ignore: unused_element
  UpdateServiceLocationSuccessful successful() {
    return const UpdateServiceLocationSuccessful();
  }

// ignore: unused_element
  UpdateServiceLocationError error(Object error) {
    return UpdateServiceLocationError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateServiceLocation = _$UpdateServiceLocationTearOff();

/// @nodoc
mixin _$UpdateServiceLocation {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String serviceLocation), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String serviceLocation), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateServiceLocation$ value), {
    @required Result successful(UpdateServiceLocationSuccessful value),
    @required Result error(UpdateServiceLocationError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateServiceLocation$ value), {
    Result successful(UpdateServiceLocationSuccessful value),
    Result error(UpdateServiceLocationError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UpdateServiceLocationCopyWith<$Res> {
  factory $UpdateServiceLocationCopyWith(UpdateServiceLocation value,
          $Res Function(UpdateServiceLocation) then) =
      _$UpdateServiceLocationCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateServiceLocationCopyWithImpl<$Res>
    implements $UpdateServiceLocationCopyWith<$Res> {
  _$UpdateServiceLocationCopyWithImpl(this._value, this._then);

  final UpdateServiceLocation _value;
  // ignore: unused_field
  final $Res Function(UpdateServiceLocation) _then;
}

/// @nodoc
abstract class $UpdateServiceLocation$CopyWith<$Res> {
  factory $UpdateServiceLocation$CopyWith(UpdateServiceLocation$ value,
          $Res Function(UpdateServiceLocation$) then) =
      _$UpdateServiceLocation$CopyWithImpl<$Res>;
  $Res call({String serviceLocation});
}

/// @nodoc
class _$UpdateServiceLocation$CopyWithImpl<$Res>
    extends _$UpdateServiceLocationCopyWithImpl<$Res>
    implements $UpdateServiceLocation$CopyWith<$Res> {
  _$UpdateServiceLocation$CopyWithImpl(UpdateServiceLocation$ _value,
      $Res Function(UpdateServiceLocation$) _then)
      : super(_value, (v) => _then(v as UpdateServiceLocation$));

  @override
  UpdateServiceLocation$ get _value => super._value as UpdateServiceLocation$;

  @override
  $Res call({
    Object serviceLocation = freezed,
  }) {
    return _then(UpdateServiceLocation$(
      serviceLocation == freezed
          ? _value.serviceLocation
          : serviceLocation as String,
    ));
  }
}

/// @nodoc
class _$UpdateServiceLocation$ implements UpdateServiceLocation$ {
  const _$UpdateServiceLocation$(this.serviceLocation)
      : assert(serviceLocation != null);

  @override
  final String serviceLocation;

  @override
  String toString() {
    return 'UpdateServiceLocation(serviceLocation: $serviceLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateServiceLocation$ &&
            (identical(other.serviceLocation, serviceLocation) ||
                const DeepCollectionEquality()
                    .equals(other.serviceLocation, serviceLocation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(serviceLocation);

  @override
  $UpdateServiceLocation$CopyWith<UpdateServiceLocation$> get copyWith =>
      _$UpdateServiceLocation$CopyWithImpl<UpdateServiceLocation$>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String serviceLocation), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(serviceLocation);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String serviceLocation), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(serviceLocation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateServiceLocation$ value), {
    @required Result successful(UpdateServiceLocationSuccessful value),
    @required Result error(UpdateServiceLocationError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateServiceLocation$ value), {
    Result successful(UpdateServiceLocationSuccessful value),
    Result error(UpdateServiceLocationError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateServiceLocation$ implements UpdateServiceLocation {
  const factory UpdateServiceLocation$(String serviceLocation) =
      _$UpdateServiceLocation$;

  String get serviceLocation;
  $UpdateServiceLocation$CopyWith<UpdateServiceLocation$> get copyWith;
}

/// @nodoc
abstract class $UpdateServiceLocationSuccessfulCopyWith<$Res> {
  factory $UpdateServiceLocationSuccessfulCopyWith(
          UpdateServiceLocationSuccessful value,
          $Res Function(UpdateServiceLocationSuccessful) then) =
      _$UpdateServiceLocationSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateServiceLocationSuccessfulCopyWithImpl<$Res>
    extends _$UpdateServiceLocationCopyWithImpl<$Res>
    implements $UpdateServiceLocationSuccessfulCopyWith<$Res> {
  _$UpdateServiceLocationSuccessfulCopyWithImpl(
      UpdateServiceLocationSuccessful _value,
      $Res Function(UpdateServiceLocationSuccessful) _then)
      : super(_value, (v) => _then(v as UpdateServiceLocationSuccessful));

  @override
  UpdateServiceLocationSuccessful get _value =>
      super._value as UpdateServiceLocationSuccessful;
}

/// @nodoc
class _$UpdateServiceLocationSuccessful
    implements UpdateServiceLocationSuccessful {
  const _$UpdateServiceLocationSuccessful();

  @override
  String toString() {
    return 'UpdateServiceLocation.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UpdateServiceLocationSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String serviceLocation), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String serviceLocation), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateServiceLocation$ value), {
    @required Result successful(UpdateServiceLocationSuccessful value),
    @required Result error(UpdateServiceLocationError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateServiceLocation$ value), {
    Result successful(UpdateServiceLocationSuccessful value),
    Result error(UpdateServiceLocationError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateServiceLocationSuccessful
    implements UpdateServiceLocation {
  const factory UpdateServiceLocationSuccessful() =
      _$UpdateServiceLocationSuccessful;
}

/// @nodoc
abstract class $UpdateServiceLocationErrorCopyWith<$Res> {
  factory $UpdateServiceLocationErrorCopyWith(UpdateServiceLocationError value,
          $Res Function(UpdateServiceLocationError) then) =
      _$UpdateServiceLocationErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$UpdateServiceLocationErrorCopyWithImpl<$Res>
    extends _$UpdateServiceLocationCopyWithImpl<$Res>
    implements $UpdateServiceLocationErrorCopyWith<$Res> {
  _$UpdateServiceLocationErrorCopyWithImpl(UpdateServiceLocationError _value,
      $Res Function(UpdateServiceLocationError) _then)
      : super(_value, (v) => _then(v as UpdateServiceLocationError));

  @override
  UpdateServiceLocationError get _value =>
      super._value as UpdateServiceLocationError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(UpdateServiceLocationError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$UpdateServiceLocationError implements UpdateServiceLocationError {
  const _$UpdateServiceLocationError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'UpdateServiceLocation.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateServiceLocationError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $UpdateServiceLocationErrorCopyWith<UpdateServiceLocationError>
      get copyWith =>
          _$UpdateServiceLocationErrorCopyWithImpl<UpdateServiceLocationError>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String serviceLocation), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String serviceLocation), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateServiceLocation$ value), {
    @required Result successful(UpdateServiceLocationSuccessful value),
    @required Result error(UpdateServiceLocationError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateServiceLocation$ value), {
    Result successful(UpdateServiceLocationSuccessful value),
    Result error(UpdateServiceLocationError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateServiceLocationError
    implements UpdateServiceLocation, ErrorAction {
  const factory UpdateServiceLocationError(Object error) =
      _$UpdateServiceLocationError;

  Object get error;
  $UpdateServiceLocationErrorCopyWith<UpdateServiceLocationError> get copyWith;
}

/// @nodoc
class _$UpdateServicePhoneTearOff {
  const _$UpdateServicePhoneTearOff();

// ignore: unused_element
  UpdateServicePhone$ call(String servicePhone) {
    return UpdateServicePhone$(
      servicePhone,
    );
  }

// ignore: unused_element
  UpdateServicePhoneSuccessful successful() {
    return const UpdateServicePhoneSuccessful();
  }

// ignore: unused_element
  UpdateServicePhoneError error(Object error) {
    return UpdateServicePhoneError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateServicePhone = _$UpdateServicePhoneTearOff();

/// @nodoc
mixin _$UpdateServicePhone {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String servicePhone), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String servicePhone), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateServicePhone$ value), {
    @required Result successful(UpdateServicePhoneSuccessful value),
    @required Result error(UpdateServicePhoneError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateServicePhone$ value), {
    Result successful(UpdateServicePhoneSuccessful value),
    Result error(UpdateServicePhoneError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UpdateServicePhoneCopyWith<$Res> {
  factory $UpdateServicePhoneCopyWith(
          UpdateServicePhone value, $Res Function(UpdateServicePhone) then) =
      _$UpdateServicePhoneCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateServicePhoneCopyWithImpl<$Res>
    implements $UpdateServicePhoneCopyWith<$Res> {
  _$UpdateServicePhoneCopyWithImpl(this._value, this._then);

  final UpdateServicePhone _value;
  // ignore: unused_field
  final $Res Function(UpdateServicePhone) _then;
}

/// @nodoc
abstract class $UpdateServicePhone$CopyWith<$Res> {
  factory $UpdateServicePhone$CopyWith(
          UpdateServicePhone$ value, $Res Function(UpdateServicePhone$) then) =
      _$UpdateServicePhone$CopyWithImpl<$Res>;
  $Res call({String servicePhone});
}

/// @nodoc
class _$UpdateServicePhone$CopyWithImpl<$Res>
    extends _$UpdateServicePhoneCopyWithImpl<$Res>
    implements $UpdateServicePhone$CopyWith<$Res> {
  _$UpdateServicePhone$CopyWithImpl(
      UpdateServicePhone$ _value, $Res Function(UpdateServicePhone$) _then)
      : super(_value, (v) => _then(v as UpdateServicePhone$));

  @override
  UpdateServicePhone$ get _value => super._value as UpdateServicePhone$;

  @override
  $Res call({
    Object servicePhone = freezed,
  }) {
    return _then(UpdateServicePhone$(
      servicePhone == freezed ? _value.servicePhone : servicePhone as String,
    ));
  }
}

/// @nodoc
class _$UpdateServicePhone$ implements UpdateServicePhone$ {
  const _$UpdateServicePhone$(this.servicePhone) : assert(servicePhone != null);

  @override
  final String servicePhone;

  @override
  String toString() {
    return 'UpdateServicePhone(servicePhone: $servicePhone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateServicePhone$ &&
            (identical(other.servicePhone, servicePhone) ||
                const DeepCollectionEquality()
                    .equals(other.servicePhone, servicePhone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(servicePhone);

  @override
  $UpdateServicePhone$CopyWith<UpdateServicePhone$> get copyWith =>
      _$UpdateServicePhone$CopyWithImpl<UpdateServicePhone$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String servicePhone), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(servicePhone);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String servicePhone), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(servicePhone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateServicePhone$ value), {
    @required Result successful(UpdateServicePhoneSuccessful value),
    @required Result error(UpdateServicePhoneError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateServicePhone$ value), {
    Result successful(UpdateServicePhoneSuccessful value),
    Result error(UpdateServicePhoneError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateServicePhone$ implements UpdateServicePhone {
  const factory UpdateServicePhone$(String servicePhone) =
      _$UpdateServicePhone$;

  String get servicePhone;
  $UpdateServicePhone$CopyWith<UpdateServicePhone$> get copyWith;
}

/// @nodoc
abstract class $UpdateServicePhoneSuccessfulCopyWith<$Res> {
  factory $UpdateServicePhoneSuccessfulCopyWith(
          UpdateServicePhoneSuccessful value,
          $Res Function(UpdateServicePhoneSuccessful) then) =
      _$UpdateServicePhoneSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateServicePhoneSuccessfulCopyWithImpl<$Res>
    extends _$UpdateServicePhoneCopyWithImpl<$Res>
    implements $UpdateServicePhoneSuccessfulCopyWith<$Res> {
  _$UpdateServicePhoneSuccessfulCopyWithImpl(
      UpdateServicePhoneSuccessful _value,
      $Res Function(UpdateServicePhoneSuccessful) _then)
      : super(_value, (v) => _then(v as UpdateServicePhoneSuccessful));

  @override
  UpdateServicePhoneSuccessful get _value =>
      super._value as UpdateServicePhoneSuccessful;
}

/// @nodoc
class _$UpdateServicePhoneSuccessful implements UpdateServicePhoneSuccessful {
  const _$UpdateServicePhoneSuccessful();

  @override
  String toString() {
    return 'UpdateServicePhone.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UpdateServicePhoneSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String servicePhone), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String servicePhone), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateServicePhone$ value), {
    @required Result successful(UpdateServicePhoneSuccessful value),
    @required Result error(UpdateServicePhoneError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateServicePhone$ value), {
    Result successful(UpdateServicePhoneSuccessful value),
    Result error(UpdateServicePhoneError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateServicePhoneSuccessful implements UpdateServicePhone {
  const factory UpdateServicePhoneSuccessful() = _$UpdateServicePhoneSuccessful;
}

/// @nodoc
abstract class $UpdateServicePhoneErrorCopyWith<$Res> {
  factory $UpdateServicePhoneErrorCopyWith(UpdateServicePhoneError value,
          $Res Function(UpdateServicePhoneError) then) =
      _$UpdateServicePhoneErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$UpdateServicePhoneErrorCopyWithImpl<$Res>
    extends _$UpdateServicePhoneCopyWithImpl<$Res>
    implements $UpdateServicePhoneErrorCopyWith<$Res> {
  _$UpdateServicePhoneErrorCopyWithImpl(UpdateServicePhoneError _value,
      $Res Function(UpdateServicePhoneError) _then)
      : super(_value, (v) => _then(v as UpdateServicePhoneError));

  @override
  UpdateServicePhoneError get _value => super._value as UpdateServicePhoneError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(UpdateServicePhoneError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$UpdateServicePhoneError implements UpdateServicePhoneError {
  const _$UpdateServicePhoneError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'UpdateServicePhone.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateServicePhoneError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $UpdateServicePhoneErrorCopyWith<UpdateServicePhoneError> get copyWith =>
      _$UpdateServicePhoneErrorCopyWithImpl<UpdateServicePhoneError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String servicePhone), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String servicePhone), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateServicePhone$ value), {
    @required Result successful(UpdateServicePhoneSuccessful value),
    @required Result error(UpdateServicePhoneError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateServicePhone$ value), {
    Result successful(UpdateServicePhoneSuccessful value),
    Result error(UpdateServicePhoneError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateServicePhoneError
    implements UpdateServicePhone, ErrorAction {
  const factory UpdateServicePhoneError(Object error) =
      _$UpdateServicePhoneError;

  Object get error;
  $UpdateServicePhoneErrorCopyWith<UpdateServicePhoneError> get copyWith;
}

/// @nodoc
class _$UpdateIsAutoElectricianServiceTearOff {
  const _$UpdateIsAutoElectricianServiceTearOff();

// ignore: unused_element
  UpdateIsAutoElectricianService$ call(bool isAutoElectricianService) {
    return UpdateIsAutoElectricianService$(
      isAutoElectricianService,
    );
  }

// ignore: unused_element
  UpdateIsAutoElectricianServiceSuccessful successful() {
    return const UpdateIsAutoElectricianServiceSuccessful();
  }

// ignore: unused_element
  UpdateIsAutoElectricianServiceError error(Object error) {
    return UpdateIsAutoElectricianServiceError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateIsAutoElectricianService =
    _$UpdateIsAutoElectricianServiceTearOff();

/// @nodoc
mixin _$UpdateIsAutoElectricianService {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isAutoElectricianService), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isAutoElectricianService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsAutoElectricianService$ value), {
    @required Result successful(UpdateIsAutoElectricianServiceSuccessful value),
    @required Result error(UpdateIsAutoElectricianServiceError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsAutoElectricianService$ value), {
    Result successful(UpdateIsAutoElectricianServiceSuccessful value),
    Result error(UpdateIsAutoElectricianServiceError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UpdateIsAutoElectricianServiceCopyWith<$Res> {
  factory $UpdateIsAutoElectricianServiceCopyWith(
          UpdateIsAutoElectricianService value,
          $Res Function(UpdateIsAutoElectricianService) then) =
      _$UpdateIsAutoElectricianServiceCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateIsAutoElectricianServiceCopyWithImpl<$Res>
    implements $UpdateIsAutoElectricianServiceCopyWith<$Res> {
  _$UpdateIsAutoElectricianServiceCopyWithImpl(this._value, this._then);

  final UpdateIsAutoElectricianService _value;
  // ignore: unused_field
  final $Res Function(UpdateIsAutoElectricianService) _then;
}

/// @nodoc
abstract class $UpdateIsAutoElectricianService$CopyWith<$Res> {
  factory $UpdateIsAutoElectricianService$CopyWith(
          UpdateIsAutoElectricianService$ value,
          $Res Function(UpdateIsAutoElectricianService$) then) =
      _$UpdateIsAutoElectricianService$CopyWithImpl<$Res>;
  $Res call({bool isAutoElectricianService});
}

/// @nodoc
class _$UpdateIsAutoElectricianService$CopyWithImpl<$Res>
    extends _$UpdateIsAutoElectricianServiceCopyWithImpl<$Res>
    implements $UpdateIsAutoElectricianService$CopyWith<$Res> {
  _$UpdateIsAutoElectricianService$CopyWithImpl(
      UpdateIsAutoElectricianService$ _value,
      $Res Function(UpdateIsAutoElectricianService$) _then)
      : super(_value, (v) => _then(v as UpdateIsAutoElectricianService$));

  @override
  UpdateIsAutoElectricianService$ get _value =>
      super._value as UpdateIsAutoElectricianService$;

  @override
  $Res call({
    Object isAutoElectricianService = freezed,
  }) {
    return _then(UpdateIsAutoElectricianService$(
      isAutoElectricianService == freezed
          ? _value.isAutoElectricianService
          : isAutoElectricianService as bool,
    ));
  }
}

/// @nodoc
class _$UpdateIsAutoElectricianService$
    implements UpdateIsAutoElectricianService$ {
  const _$UpdateIsAutoElectricianService$(this.isAutoElectricianService)
      : assert(isAutoElectricianService != null);

  @override
  final bool isAutoElectricianService;

  @override
  String toString() {
    return 'UpdateIsAutoElectricianService(isAutoElectricianService: $isAutoElectricianService)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateIsAutoElectricianService$ &&
            (identical(
                    other.isAutoElectricianService, isAutoElectricianService) ||
                const DeepCollectionEquality().equals(
                    other.isAutoElectricianService, isAutoElectricianService)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isAutoElectricianService);

  @override
  $UpdateIsAutoElectricianService$CopyWith<UpdateIsAutoElectricianService$>
      get copyWith => _$UpdateIsAutoElectricianService$CopyWithImpl<
          UpdateIsAutoElectricianService$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isAutoElectricianService), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(isAutoElectricianService);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isAutoElectricianService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(isAutoElectricianService);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsAutoElectricianService$ value), {
    @required Result successful(UpdateIsAutoElectricianServiceSuccessful value),
    @required Result error(UpdateIsAutoElectricianServiceError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsAutoElectricianService$ value), {
    Result successful(UpdateIsAutoElectricianServiceSuccessful value),
    Result error(UpdateIsAutoElectricianServiceError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateIsAutoElectricianService$
    implements UpdateIsAutoElectricianService {
  const factory UpdateIsAutoElectricianService$(bool isAutoElectricianService) =
      _$UpdateIsAutoElectricianService$;

  bool get isAutoElectricianService;
  $UpdateIsAutoElectricianService$CopyWith<UpdateIsAutoElectricianService$>
      get copyWith;
}

/// @nodoc
abstract class $UpdateIsAutoElectricianServiceSuccessfulCopyWith<$Res> {
  factory $UpdateIsAutoElectricianServiceSuccessfulCopyWith(
          UpdateIsAutoElectricianServiceSuccessful value,
          $Res Function(UpdateIsAutoElectricianServiceSuccessful) then) =
      _$UpdateIsAutoElectricianServiceSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateIsAutoElectricianServiceSuccessfulCopyWithImpl<$Res>
    extends _$UpdateIsAutoElectricianServiceCopyWithImpl<$Res>
    implements $UpdateIsAutoElectricianServiceSuccessfulCopyWith<$Res> {
  _$UpdateIsAutoElectricianServiceSuccessfulCopyWithImpl(
      UpdateIsAutoElectricianServiceSuccessful _value,
      $Res Function(UpdateIsAutoElectricianServiceSuccessful) _then)
      : super(_value,
            (v) => _then(v as UpdateIsAutoElectricianServiceSuccessful));

  @override
  UpdateIsAutoElectricianServiceSuccessful get _value =>
      super._value as UpdateIsAutoElectricianServiceSuccessful;
}

/// @nodoc
class _$UpdateIsAutoElectricianServiceSuccessful
    implements UpdateIsAutoElectricianServiceSuccessful {
  const _$UpdateIsAutoElectricianServiceSuccessful();

  @override
  String toString() {
    return 'UpdateIsAutoElectricianService.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateIsAutoElectricianServiceSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isAutoElectricianService), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isAutoElectricianService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsAutoElectricianService$ value), {
    @required Result successful(UpdateIsAutoElectricianServiceSuccessful value),
    @required Result error(UpdateIsAutoElectricianServiceError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsAutoElectricianService$ value), {
    Result successful(UpdateIsAutoElectricianServiceSuccessful value),
    Result error(UpdateIsAutoElectricianServiceError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateIsAutoElectricianServiceSuccessful
    implements UpdateIsAutoElectricianService {
  const factory UpdateIsAutoElectricianServiceSuccessful() =
      _$UpdateIsAutoElectricianServiceSuccessful;
}

/// @nodoc
abstract class $UpdateIsAutoElectricianServiceErrorCopyWith<$Res> {
  factory $UpdateIsAutoElectricianServiceErrorCopyWith(
          UpdateIsAutoElectricianServiceError value,
          $Res Function(UpdateIsAutoElectricianServiceError) then) =
      _$UpdateIsAutoElectricianServiceErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$UpdateIsAutoElectricianServiceErrorCopyWithImpl<$Res>
    extends _$UpdateIsAutoElectricianServiceCopyWithImpl<$Res>
    implements $UpdateIsAutoElectricianServiceErrorCopyWith<$Res> {
  _$UpdateIsAutoElectricianServiceErrorCopyWithImpl(
      UpdateIsAutoElectricianServiceError _value,
      $Res Function(UpdateIsAutoElectricianServiceError) _then)
      : super(_value, (v) => _then(v as UpdateIsAutoElectricianServiceError));

  @override
  UpdateIsAutoElectricianServiceError get _value =>
      super._value as UpdateIsAutoElectricianServiceError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(UpdateIsAutoElectricianServiceError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$UpdateIsAutoElectricianServiceError
    implements UpdateIsAutoElectricianServiceError {
  const _$UpdateIsAutoElectricianServiceError(this.error)
      : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'UpdateIsAutoElectricianService.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateIsAutoElectricianServiceError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $UpdateIsAutoElectricianServiceErrorCopyWith<
          UpdateIsAutoElectricianServiceError>
      get copyWith => _$UpdateIsAutoElectricianServiceErrorCopyWithImpl<
          UpdateIsAutoElectricianServiceError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isAutoElectricianService), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isAutoElectricianService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsAutoElectricianService$ value), {
    @required Result successful(UpdateIsAutoElectricianServiceSuccessful value),
    @required Result error(UpdateIsAutoElectricianServiceError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsAutoElectricianService$ value), {
    Result successful(UpdateIsAutoElectricianServiceSuccessful value),
    Result error(UpdateIsAutoElectricianServiceError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateIsAutoElectricianServiceError
    implements UpdateIsAutoElectricianService, ErrorAction {
  const factory UpdateIsAutoElectricianServiceError(Object error) =
      _$UpdateIsAutoElectricianServiceError;

  Object get error;
  $UpdateIsAutoElectricianServiceErrorCopyWith<
      UpdateIsAutoElectricianServiceError> get copyWith;
}

/// @nodoc
class _$UpdateIsCarBodyRepairsServiceTearOff {
  const _$UpdateIsCarBodyRepairsServiceTearOff();

// ignore: unused_element
  UpdateIsCarBodyRepairsService$ call(bool isCarBodyRepairsService) {
    return UpdateIsCarBodyRepairsService$(
      isCarBodyRepairsService,
    );
  }

// ignore: unused_element
  UpdateIsCarBodyRepairsServiceSuccessful successful() {
    return const UpdateIsCarBodyRepairsServiceSuccessful();
  }

// ignore: unused_element
  UpdateIsCarBodyRepairsServiceError error(Object error) {
    return UpdateIsCarBodyRepairsServiceError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateIsCarBodyRepairsService = _$UpdateIsCarBodyRepairsServiceTearOff();

/// @nodoc
mixin _$UpdateIsCarBodyRepairsService {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isCarBodyRepairsService), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isCarBodyRepairsService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsCarBodyRepairsService$ value), {
    @required Result successful(UpdateIsCarBodyRepairsServiceSuccessful value),
    @required Result error(UpdateIsCarBodyRepairsServiceError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsCarBodyRepairsService$ value), {
    Result successful(UpdateIsCarBodyRepairsServiceSuccessful value),
    Result error(UpdateIsCarBodyRepairsServiceError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UpdateIsCarBodyRepairsServiceCopyWith<$Res> {
  factory $UpdateIsCarBodyRepairsServiceCopyWith(
          UpdateIsCarBodyRepairsService value,
          $Res Function(UpdateIsCarBodyRepairsService) then) =
      _$UpdateIsCarBodyRepairsServiceCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateIsCarBodyRepairsServiceCopyWithImpl<$Res>
    implements $UpdateIsCarBodyRepairsServiceCopyWith<$Res> {
  _$UpdateIsCarBodyRepairsServiceCopyWithImpl(this._value, this._then);

  final UpdateIsCarBodyRepairsService _value;
  // ignore: unused_field
  final $Res Function(UpdateIsCarBodyRepairsService) _then;
}

/// @nodoc
abstract class $UpdateIsCarBodyRepairsService$CopyWith<$Res> {
  factory $UpdateIsCarBodyRepairsService$CopyWith(
          UpdateIsCarBodyRepairsService$ value,
          $Res Function(UpdateIsCarBodyRepairsService$) then) =
      _$UpdateIsCarBodyRepairsService$CopyWithImpl<$Res>;
  $Res call({bool isCarBodyRepairsService});
}

/// @nodoc
class _$UpdateIsCarBodyRepairsService$CopyWithImpl<$Res>
    extends _$UpdateIsCarBodyRepairsServiceCopyWithImpl<$Res>
    implements $UpdateIsCarBodyRepairsService$CopyWith<$Res> {
  _$UpdateIsCarBodyRepairsService$CopyWithImpl(
      UpdateIsCarBodyRepairsService$ _value,
      $Res Function(UpdateIsCarBodyRepairsService$) _then)
      : super(_value, (v) => _then(v as UpdateIsCarBodyRepairsService$));

  @override
  UpdateIsCarBodyRepairsService$ get _value =>
      super._value as UpdateIsCarBodyRepairsService$;

  @override
  $Res call({
    Object isCarBodyRepairsService = freezed,
  }) {
    return _then(UpdateIsCarBodyRepairsService$(
      isCarBodyRepairsService == freezed
          ? _value.isCarBodyRepairsService
          : isCarBodyRepairsService as bool,
    ));
  }
}

/// @nodoc
class _$UpdateIsCarBodyRepairsService$
    implements UpdateIsCarBodyRepairsService$ {
  const _$UpdateIsCarBodyRepairsService$(this.isCarBodyRepairsService)
      : assert(isCarBodyRepairsService != null);

  @override
  final bool isCarBodyRepairsService;

  @override
  String toString() {
    return 'UpdateIsCarBodyRepairsService(isCarBodyRepairsService: $isCarBodyRepairsService)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateIsCarBodyRepairsService$ &&
            (identical(
                    other.isCarBodyRepairsService, isCarBodyRepairsService) ||
                const DeepCollectionEquality().equals(
                    other.isCarBodyRepairsService, isCarBodyRepairsService)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isCarBodyRepairsService);

  @override
  $UpdateIsCarBodyRepairsService$CopyWith<UpdateIsCarBodyRepairsService$>
      get copyWith => _$UpdateIsCarBodyRepairsService$CopyWithImpl<
          UpdateIsCarBodyRepairsService$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isCarBodyRepairsService), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(isCarBodyRepairsService);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isCarBodyRepairsService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(isCarBodyRepairsService);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsCarBodyRepairsService$ value), {
    @required Result successful(UpdateIsCarBodyRepairsServiceSuccessful value),
    @required Result error(UpdateIsCarBodyRepairsServiceError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsCarBodyRepairsService$ value), {
    Result successful(UpdateIsCarBodyRepairsServiceSuccessful value),
    Result error(UpdateIsCarBodyRepairsServiceError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateIsCarBodyRepairsService$
    implements UpdateIsCarBodyRepairsService {
  const factory UpdateIsCarBodyRepairsService$(bool isCarBodyRepairsService) =
      _$UpdateIsCarBodyRepairsService$;

  bool get isCarBodyRepairsService;
  $UpdateIsCarBodyRepairsService$CopyWith<UpdateIsCarBodyRepairsService$>
      get copyWith;
}

/// @nodoc
abstract class $UpdateIsCarBodyRepairsServiceSuccessfulCopyWith<$Res> {
  factory $UpdateIsCarBodyRepairsServiceSuccessfulCopyWith(
          UpdateIsCarBodyRepairsServiceSuccessful value,
          $Res Function(UpdateIsCarBodyRepairsServiceSuccessful) then) =
      _$UpdateIsCarBodyRepairsServiceSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateIsCarBodyRepairsServiceSuccessfulCopyWithImpl<$Res>
    extends _$UpdateIsCarBodyRepairsServiceCopyWithImpl<$Res>
    implements $UpdateIsCarBodyRepairsServiceSuccessfulCopyWith<$Res> {
  _$UpdateIsCarBodyRepairsServiceSuccessfulCopyWithImpl(
      UpdateIsCarBodyRepairsServiceSuccessful _value,
      $Res Function(UpdateIsCarBodyRepairsServiceSuccessful) _then)
      : super(
            _value, (v) => _then(v as UpdateIsCarBodyRepairsServiceSuccessful));

  @override
  UpdateIsCarBodyRepairsServiceSuccessful get _value =>
      super._value as UpdateIsCarBodyRepairsServiceSuccessful;
}

/// @nodoc
class _$UpdateIsCarBodyRepairsServiceSuccessful
    implements UpdateIsCarBodyRepairsServiceSuccessful {
  const _$UpdateIsCarBodyRepairsServiceSuccessful();

  @override
  String toString() {
    return 'UpdateIsCarBodyRepairsService.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateIsCarBodyRepairsServiceSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isCarBodyRepairsService), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isCarBodyRepairsService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsCarBodyRepairsService$ value), {
    @required Result successful(UpdateIsCarBodyRepairsServiceSuccessful value),
    @required Result error(UpdateIsCarBodyRepairsServiceError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsCarBodyRepairsService$ value), {
    Result successful(UpdateIsCarBodyRepairsServiceSuccessful value),
    Result error(UpdateIsCarBodyRepairsServiceError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateIsCarBodyRepairsServiceSuccessful
    implements UpdateIsCarBodyRepairsService {
  const factory UpdateIsCarBodyRepairsServiceSuccessful() =
      _$UpdateIsCarBodyRepairsServiceSuccessful;
}

/// @nodoc
abstract class $UpdateIsCarBodyRepairsServiceErrorCopyWith<$Res> {
  factory $UpdateIsCarBodyRepairsServiceErrorCopyWith(
          UpdateIsCarBodyRepairsServiceError value,
          $Res Function(UpdateIsCarBodyRepairsServiceError) then) =
      _$UpdateIsCarBodyRepairsServiceErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$UpdateIsCarBodyRepairsServiceErrorCopyWithImpl<$Res>
    extends _$UpdateIsCarBodyRepairsServiceCopyWithImpl<$Res>
    implements $UpdateIsCarBodyRepairsServiceErrorCopyWith<$Res> {
  _$UpdateIsCarBodyRepairsServiceErrorCopyWithImpl(
      UpdateIsCarBodyRepairsServiceError _value,
      $Res Function(UpdateIsCarBodyRepairsServiceError) _then)
      : super(_value, (v) => _then(v as UpdateIsCarBodyRepairsServiceError));

  @override
  UpdateIsCarBodyRepairsServiceError get _value =>
      super._value as UpdateIsCarBodyRepairsServiceError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(UpdateIsCarBodyRepairsServiceError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$UpdateIsCarBodyRepairsServiceError
    implements UpdateIsCarBodyRepairsServiceError {
  const _$UpdateIsCarBodyRepairsServiceError(this.error)
      : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'UpdateIsCarBodyRepairsService.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateIsCarBodyRepairsServiceError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $UpdateIsCarBodyRepairsServiceErrorCopyWith<
          UpdateIsCarBodyRepairsServiceError>
      get copyWith => _$UpdateIsCarBodyRepairsServiceErrorCopyWithImpl<
          UpdateIsCarBodyRepairsServiceError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isCarBodyRepairsService), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isCarBodyRepairsService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsCarBodyRepairsService$ value), {
    @required Result successful(UpdateIsCarBodyRepairsServiceSuccessful value),
    @required Result error(UpdateIsCarBodyRepairsServiceError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsCarBodyRepairsService$ value), {
    Result successful(UpdateIsCarBodyRepairsServiceSuccessful value),
    Result error(UpdateIsCarBodyRepairsServiceError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateIsCarBodyRepairsServiceError
    implements UpdateIsCarBodyRepairsService, ErrorAction {
  const factory UpdateIsCarBodyRepairsServiceError(Object error) =
      _$UpdateIsCarBodyRepairsServiceError;

  Object get error;
  $UpdateIsCarBodyRepairsServiceErrorCopyWith<
      UpdateIsCarBodyRepairsServiceError> get copyWith;
}

/// @nodoc
class _$UpdateIsCarDealershipServiceTearOff {
  const _$UpdateIsCarDealershipServiceTearOff();

// ignore: unused_element
  UpdateIsCarDealershipService$ call(bool isCarDealershipService) {
    return UpdateIsCarDealershipService$(
      isCarDealershipService,
    );
  }

// ignore: unused_element
  UpdateIsCarDealershipServiceSuccessful successful() {
    return const UpdateIsCarDealershipServiceSuccessful();
  }

// ignore: unused_element
  UpdateIsCarDealershipServiceError error(Object error) {
    return UpdateIsCarDealershipServiceError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateIsCarDealershipService = _$UpdateIsCarDealershipServiceTearOff();

/// @nodoc
mixin _$UpdateIsCarDealershipService {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isCarDealershipService), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isCarDealershipService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsCarDealershipService$ value), {
    @required Result successful(UpdateIsCarDealershipServiceSuccessful value),
    @required Result error(UpdateIsCarDealershipServiceError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsCarDealershipService$ value), {
    Result successful(UpdateIsCarDealershipServiceSuccessful value),
    Result error(UpdateIsCarDealershipServiceError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UpdateIsCarDealershipServiceCopyWith<$Res> {
  factory $UpdateIsCarDealershipServiceCopyWith(
          UpdateIsCarDealershipService value,
          $Res Function(UpdateIsCarDealershipService) then) =
      _$UpdateIsCarDealershipServiceCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateIsCarDealershipServiceCopyWithImpl<$Res>
    implements $UpdateIsCarDealershipServiceCopyWith<$Res> {
  _$UpdateIsCarDealershipServiceCopyWithImpl(this._value, this._then);

  final UpdateIsCarDealershipService _value;
  // ignore: unused_field
  final $Res Function(UpdateIsCarDealershipService) _then;
}

/// @nodoc
abstract class $UpdateIsCarDealershipService$CopyWith<$Res> {
  factory $UpdateIsCarDealershipService$CopyWith(
          UpdateIsCarDealershipService$ value,
          $Res Function(UpdateIsCarDealershipService$) then) =
      _$UpdateIsCarDealershipService$CopyWithImpl<$Res>;
  $Res call({bool isCarDealershipService});
}

/// @nodoc
class _$UpdateIsCarDealershipService$CopyWithImpl<$Res>
    extends _$UpdateIsCarDealershipServiceCopyWithImpl<$Res>
    implements $UpdateIsCarDealershipService$CopyWith<$Res> {
  _$UpdateIsCarDealershipService$CopyWithImpl(
      UpdateIsCarDealershipService$ _value,
      $Res Function(UpdateIsCarDealershipService$) _then)
      : super(_value, (v) => _then(v as UpdateIsCarDealershipService$));

  @override
  UpdateIsCarDealershipService$ get _value =>
      super._value as UpdateIsCarDealershipService$;

  @override
  $Res call({
    Object isCarDealershipService = freezed,
  }) {
    return _then(UpdateIsCarDealershipService$(
      isCarDealershipService == freezed
          ? _value.isCarDealershipService
          : isCarDealershipService as bool,
    ));
  }
}

/// @nodoc
class _$UpdateIsCarDealershipService$ implements UpdateIsCarDealershipService$ {
  const _$UpdateIsCarDealershipService$(this.isCarDealershipService)
      : assert(isCarDealershipService != null);

  @override
  final bool isCarDealershipService;

  @override
  String toString() {
    return 'UpdateIsCarDealershipService(isCarDealershipService: $isCarDealershipService)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateIsCarDealershipService$ &&
            (identical(other.isCarDealershipService, isCarDealershipService) ||
                const DeepCollectionEquality().equals(
                    other.isCarDealershipService, isCarDealershipService)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isCarDealershipService);

  @override
  $UpdateIsCarDealershipService$CopyWith<UpdateIsCarDealershipService$>
      get copyWith => _$UpdateIsCarDealershipService$CopyWithImpl<
          UpdateIsCarDealershipService$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isCarDealershipService), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(isCarDealershipService);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isCarDealershipService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(isCarDealershipService);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsCarDealershipService$ value), {
    @required Result successful(UpdateIsCarDealershipServiceSuccessful value),
    @required Result error(UpdateIsCarDealershipServiceError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsCarDealershipService$ value), {
    Result successful(UpdateIsCarDealershipServiceSuccessful value),
    Result error(UpdateIsCarDealershipServiceError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateIsCarDealershipService$
    implements UpdateIsCarDealershipService {
  const factory UpdateIsCarDealershipService$(bool isCarDealershipService) =
      _$UpdateIsCarDealershipService$;

  bool get isCarDealershipService;
  $UpdateIsCarDealershipService$CopyWith<UpdateIsCarDealershipService$>
      get copyWith;
}

/// @nodoc
abstract class $UpdateIsCarDealershipServiceSuccessfulCopyWith<$Res> {
  factory $UpdateIsCarDealershipServiceSuccessfulCopyWith(
          UpdateIsCarDealershipServiceSuccessful value,
          $Res Function(UpdateIsCarDealershipServiceSuccessful) then) =
      _$UpdateIsCarDealershipServiceSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateIsCarDealershipServiceSuccessfulCopyWithImpl<$Res>
    extends _$UpdateIsCarDealershipServiceCopyWithImpl<$Res>
    implements $UpdateIsCarDealershipServiceSuccessfulCopyWith<$Res> {
  _$UpdateIsCarDealershipServiceSuccessfulCopyWithImpl(
      UpdateIsCarDealershipServiceSuccessful _value,
      $Res Function(UpdateIsCarDealershipServiceSuccessful) _then)
      : super(
            _value, (v) => _then(v as UpdateIsCarDealershipServiceSuccessful));

  @override
  UpdateIsCarDealershipServiceSuccessful get _value =>
      super._value as UpdateIsCarDealershipServiceSuccessful;
}

/// @nodoc
class _$UpdateIsCarDealershipServiceSuccessful
    implements UpdateIsCarDealershipServiceSuccessful {
  const _$UpdateIsCarDealershipServiceSuccessful();

  @override
  String toString() {
    return 'UpdateIsCarDealershipService.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateIsCarDealershipServiceSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isCarDealershipService), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isCarDealershipService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsCarDealershipService$ value), {
    @required Result successful(UpdateIsCarDealershipServiceSuccessful value),
    @required Result error(UpdateIsCarDealershipServiceError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsCarDealershipService$ value), {
    Result successful(UpdateIsCarDealershipServiceSuccessful value),
    Result error(UpdateIsCarDealershipServiceError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateIsCarDealershipServiceSuccessful
    implements UpdateIsCarDealershipService {
  const factory UpdateIsCarDealershipServiceSuccessful() =
      _$UpdateIsCarDealershipServiceSuccessful;
}

/// @nodoc
abstract class $UpdateIsCarDealershipServiceErrorCopyWith<$Res> {
  factory $UpdateIsCarDealershipServiceErrorCopyWith(
          UpdateIsCarDealershipServiceError value,
          $Res Function(UpdateIsCarDealershipServiceError) then) =
      _$UpdateIsCarDealershipServiceErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$UpdateIsCarDealershipServiceErrorCopyWithImpl<$Res>
    extends _$UpdateIsCarDealershipServiceCopyWithImpl<$Res>
    implements $UpdateIsCarDealershipServiceErrorCopyWith<$Res> {
  _$UpdateIsCarDealershipServiceErrorCopyWithImpl(
      UpdateIsCarDealershipServiceError _value,
      $Res Function(UpdateIsCarDealershipServiceError) _then)
      : super(_value, (v) => _then(v as UpdateIsCarDealershipServiceError));

  @override
  UpdateIsCarDealershipServiceError get _value =>
      super._value as UpdateIsCarDealershipServiceError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(UpdateIsCarDealershipServiceError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$UpdateIsCarDealershipServiceError
    implements UpdateIsCarDealershipServiceError {
  const _$UpdateIsCarDealershipServiceError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'UpdateIsCarDealershipService.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateIsCarDealershipServiceError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $UpdateIsCarDealershipServiceErrorCopyWith<UpdateIsCarDealershipServiceError>
      get copyWith => _$UpdateIsCarDealershipServiceErrorCopyWithImpl<
          UpdateIsCarDealershipServiceError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isCarDealershipService), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isCarDealershipService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsCarDealershipService$ value), {
    @required Result successful(UpdateIsCarDealershipServiceSuccessful value),
    @required Result error(UpdateIsCarDealershipServiceError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsCarDealershipService$ value), {
    Result successful(UpdateIsCarDealershipServiceSuccessful value),
    Result error(UpdateIsCarDealershipServiceError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateIsCarDealershipServiceError
    implements UpdateIsCarDealershipService, ErrorAction {
  const factory UpdateIsCarDealershipServiceError(Object error) =
      _$UpdateIsCarDealershipServiceError;

  Object get error;
  $UpdateIsCarDealershipServiceErrorCopyWith<UpdateIsCarDealershipServiceError>
      get copyWith;
}

/// @nodoc
class _$UpdateIsCarDiagnosticsServiceTearOff {
  const _$UpdateIsCarDiagnosticsServiceTearOff();

// ignore: unused_element
  UpdateIsCarDiagnosticsService$ call(bool isCarDiagnosticsService) {
    return UpdateIsCarDiagnosticsService$(
      isCarDiagnosticsService,
    );
  }

// ignore: unused_element
  UpdateIsCarDiagnosticsServiceSuccessful successful() {
    return const UpdateIsCarDiagnosticsServiceSuccessful();
  }

// ignore: unused_element
  UpdateIsCarDiagnosticsServiceError error(Object error) {
    return UpdateIsCarDiagnosticsServiceError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateIsCarDiagnosticsService = _$UpdateIsCarDiagnosticsServiceTearOff();

/// @nodoc
mixin _$UpdateIsCarDiagnosticsService {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isCarDiagnosticsService), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isCarDiagnosticsService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsCarDiagnosticsService$ value), {
    @required Result successful(UpdateIsCarDiagnosticsServiceSuccessful value),
    @required Result error(UpdateIsCarDiagnosticsServiceError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsCarDiagnosticsService$ value), {
    Result successful(UpdateIsCarDiagnosticsServiceSuccessful value),
    Result error(UpdateIsCarDiagnosticsServiceError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UpdateIsCarDiagnosticsServiceCopyWith<$Res> {
  factory $UpdateIsCarDiagnosticsServiceCopyWith(
          UpdateIsCarDiagnosticsService value,
          $Res Function(UpdateIsCarDiagnosticsService) then) =
      _$UpdateIsCarDiagnosticsServiceCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateIsCarDiagnosticsServiceCopyWithImpl<$Res>
    implements $UpdateIsCarDiagnosticsServiceCopyWith<$Res> {
  _$UpdateIsCarDiagnosticsServiceCopyWithImpl(this._value, this._then);

  final UpdateIsCarDiagnosticsService _value;
  // ignore: unused_field
  final $Res Function(UpdateIsCarDiagnosticsService) _then;
}

/// @nodoc
abstract class $UpdateIsCarDiagnosticsService$CopyWith<$Res> {
  factory $UpdateIsCarDiagnosticsService$CopyWith(
          UpdateIsCarDiagnosticsService$ value,
          $Res Function(UpdateIsCarDiagnosticsService$) then) =
      _$UpdateIsCarDiagnosticsService$CopyWithImpl<$Res>;
  $Res call({bool isCarDiagnosticsService});
}

/// @nodoc
class _$UpdateIsCarDiagnosticsService$CopyWithImpl<$Res>
    extends _$UpdateIsCarDiagnosticsServiceCopyWithImpl<$Res>
    implements $UpdateIsCarDiagnosticsService$CopyWith<$Res> {
  _$UpdateIsCarDiagnosticsService$CopyWithImpl(
      UpdateIsCarDiagnosticsService$ _value,
      $Res Function(UpdateIsCarDiagnosticsService$) _then)
      : super(_value, (v) => _then(v as UpdateIsCarDiagnosticsService$));

  @override
  UpdateIsCarDiagnosticsService$ get _value =>
      super._value as UpdateIsCarDiagnosticsService$;

  @override
  $Res call({
    Object isCarDiagnosticsService = freezed,
  }) {
    return _then(UpdateIsCarDiagnosticsService$(
      isCarDiagnosticsService == freezed
          ? _value.isCarDiagnosticsService
          : isCarDiagnosticsService as bool,
    ));
  }
}

/// @nodoc
class _$UpdateIsCarDiagnosticsService$
    implements UpdateIsCarDiagnosticsService$ {
  const _$UpdateIsCarDiagnosticsService$(this.isCarDiagnosticsService)
      : assert(isCarDiagnosticsService != null);

  @override
  final bool isCarDiagnosticsService;

  @override
  String toString() {
    return 'UpdateIsCarDiagnosticsService(isCarDiagnosticsService: $isCarDiagnosticsService)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateIsCarDiagnosticsService$ &&
            (identical(
                    other.isCarDiagnosticsService, isCarDiagnosticsService) ||
                const DeepCollectionEquality().equals(
                    other.isCarDiagnosticsService, isCarDiagnosticsService)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isCarDiagnosticsService);

  @override
  $UpdateIsCarDiagnosticsService$CopyWith<UpdateIsCarDiagnosticsService$>
      get copyWith => _$UpdateIsCarDiagnosticsService$CopyWithImpl<
          UpdateIsCarDiagnosticsService$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isCarDiagnosticsService), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(isCarDiagnosticsService);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isCarDiagnosticsService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(isCarDiagnosticsService);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsCarDiagnosticsService$ value), {
    @required Result successful(UpdateIsCarDiagnosticsServiceSuccessful value),
    @required Result error(UpdateIsCarDiagnosticsServiceError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsCarDiagnosticsService$ value), {
    Result successful(UpdateIsCarDiagnosticsServiceSuccessful value),
    Result error(UpdateIsCarDiagnosticsServiceError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateIsCarDiagnosticsService$
    implements UpdateIsCarDiagnosticsService {
  const factory UpdateIsCarDiagnosticsService$(bool isCarDiagnosticsService) =
      _$UpdateIsCarDiagnosticsService$;

  bool get isCarDiagnosticsService;
  $UpdateIsCarDiagnosticsService$CopyWith<UpdateIsCarDiagnosticsService$>
      get copyWith;
}

/// @nodoc
abstract class $UpdateIsCarDiagnosticsServiceSuccessfulCopyWith<$Res> {
  factory $UpdateIsCarDiagnosticsServiceSuccessfulCopyWith(
          UpdateIsCarDiagnosticsServiceSuccessful value,
          $Res Function(UpdateIsCarDiagnosticsServiceSuccessful) then) =
      _$UpdateIsCarDiagnosticsServiceSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateIsCarDiagnosticsServiceSuccessfulCopyWithImpl<$Res>
    extends _$UpdateIsCarDiagnosticsServiceCopyWithImpl<$Res>
    implements $UpdateIsCarDiagnosticsServiceSuccessfulCopyWith<$Res> {
  _$UpdateIsCarDiagnosticsServiceSuccessfulCopyWithImpl(
      UpdateIsCarDiagnosticsServiceSuccessful _value,
      $Res Function(UpdateIsCarDiagnosticsServiceSuccessful) _then)
      : super(
            _value, (v) => _then(v as UpdateIsCarDiagnosticsServiceSuccessful));

  @override
  UpdateIsCarDiagnosticsServiceSuccessful get _value =>
      super._value as UpdateIsCarDiagnosticsServiceSuccessful;
}

/// @nodoc
class _$UpdateIsCarDiagnosticsServiceSuccessful
    implements UpdateIsCarDiagnosticsServiceSuccessful {
  const _$UpdateIsCarDiagnosticsServiceSuccessful();

  @override
  String toString() {
    return 'UpdateIsCarDiagnosticsService.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateIsCarDiagnosticsServiceSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isCarDiagnosticsService), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isCarDiagnosticsService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsCarDiagnosticsService$ value), {
    @required Result successful(UpdateIsCarDiagnosticsServiceSuccessful value),
    @required Result error(UpdateIsCarDiagnosticsServiceError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsCarDiagnosticsService$ value), {
    Result successful(UpdateIsCarDiagnosticsServiceSuccessful value),
    Result error(UpdateIsCarDiagnosticsServiceError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateIsCarDiagnosticsServiceSuccessful
    implements UpdateIsCarDiagnosticsService {
  const factory UpdateIsCarDiagnosticsServiceSuccessful() =
      _$UpdateIsCarDiagnosticsServiceSuccessful;
}

/// @nodoc
abstract class $UpdateIsCarDiagnosticsServiceErrorCopyWith<$Res> {
  factory $UpdateIsCarDiagnosticsServiceErrorCopyWith(
          UpdateIsCarDiagnosticsServiceError value,
          $Res Function(UpdateIsCarDiagnosticsServiceError) then) =
      _$UpdateIsCarDiagnosticsServiceErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$UpdateIsCarDiagnosticsServiceErrorCopyWithImpl<$Res>
    extends _$UpdateIsCarDiagnosticsServiceCopyWithImpl<$Res>
    implements $UpdateIsCarDiagnosticsServiceErrorCopyWith<$Res> {
  _$UpdateIsCarDiagnosticsServiceErrorCopyWithImpl(
      UpdateIsCarDiagnosticsServiceError _value,
      $Res Function(UpdateIsCarDiagnosticsServiceError) _then)
      : super(_value, (v) => _then(v as UpdateIsCarDiagnosticsServiceError));

  @override
  UpdateIsCarDiagnosticsServiceError get _value =>
      super._value as UpdateIsCarDiagnosticsServiceError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(UpdateIsCarDiagnosticsServiceError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$UpdateIsCarDiagnosticsServiceError
    implements UpdateIsCarDiagnosticsServiceError {
  const _$UpdateIsCarDiagnosticsServiceError(this.error)
      : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'UpdateIsCarDiagnosticsService.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateIsCarDiagnosticsServiceError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $UpdateIsCarDiagnosticsServiceErrorCopyWith<
          UpdateIsCarDiagnosticsServiceError>
      get copyWith => _$UpdateIsCarDiagnosticsServiceErrorCopyWithImpl<
          UpdateIsCarDiagnosticsServiceError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isCarDiagnosticsService), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isCarDiagnosticsService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsCarDiagnosticsService$ value), {
    @required Result successful(UpdateIsCarDiagnosticsServiceSuccessful value),
    @required Result error(UpdateIsCarDiagnosticsServiceError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsCarDiagnosticsService$ value), {
    Result successful(UpdateIsCarDiagnosticsServiceSuccessful value),
    Result error(UpdateIsCarDiagnosticsServiceError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateIsCarDiagnosticsServiceError
    implements UpdateIsCarDiagnosticsService, ErrorAction {
  const factory UpdateIsCarDiagnosticsServiceError(Object error) =
      _$UpdateIsCarDiagnosticsServiceError;

  Object get error;
  $UpdateIsCarDiagnosticsServiceErrorCopyWith<
      UpdateIsCarDiagnosticsServiceError> get copyWith;
}

/// @nodoc
class _$UpdateIsCarInssuranceServiceTearOff {
  const _$UpdateIsCarInssuranceServiceTearOff();

// ignore: unused_element
  UpdateIsCarInssuranceService$ call(bool isCarInssuranceService) {
    return UpdateIsCarInssuranceService$(
      isCarInssuranceService,
    );
  }

// ignore: unused_element
  UpdateIsCarInssuranceServiceSuccessful successful() {
    return const UpdateIsCarInssuranceServiceSuccessful();
  }

// ignore: unused_element
  UpdateIsCarInssuranceServiceError error(Object error) {
    return UpdateIsCarInssuranceServiceError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateIsCarInssuranceService = _$UpdateIsCarInssuranceServiceTearOff();

/// @nodoc
mixin _$UpdateIsCarInssuranceService {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isCarInssuranceService), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isCarInssuranceService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsCarInssuranceService$ value), {
    @required Result successful(UpdateIsCarInssuranceServiceSuccessful value),
    @required Result error(UpdateIsCarInssuranceServiceError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsCarInssuranceService$ value), {
    Result successful(UpdateIsCarInssuranceServiceSuccessful value),
    Result error(UpdateIsCarInssuranceServiceError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UpdateIsCarInssuranceServiceCopyWith<$Res> {
  factory $UpdateIsCarInssuranceServiceCopyWith(
          UpdateIsCarInssuranceService value,
          $Res Function(UpdateIsCarInssuranceService) then) =
      _$UpdateIsCarInssuranceServiceCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateIsCarInssuranceServiceCopyWithImpl<$Res>
    implements $UpdateIsCarInssuranceServiceCopyWith<$Res> {
  _$UpdateIsCarInssuranceServiceCopyWithImpl(this._value, this._then);

  final UpdateIsCarInssuranceService _value;
  // ignore: unused_field
  final $Res Function(UpdateIsCarInssuranceService) _then;
}

/// @nodoc
abstract class $UpdateIsCarInssuranceService$CopyWith<$Res> {
  factory $UpdateIsCarInssuranceService$CopyWith(
          UpdateIsCarInssuranceService$ value,
          $Res Function(UpdateIsCarInssuranceService$) then) =
      _$UpdateIsCarInssuranceService$CopyWithImpl<$Res>;
  $Res call({bool isCarInssuranceService});
}

/// @nodoc
class _$UpdateIsCarInssuranceService$CopyWithImpl<$Res>
    extends _$UpdateIsCarInssuranceServiceCopyWithImpl<$Res>
    implements $UpdateIsCarInssuranceService$CopyWith<$Res> {
  _$UpdateIsCarInssuranceService$CopyWithImpl(
      UpdateIsCarInssuranceService$ _value,
      $Res Function(UpdateIsCarInssuranceService$) _then)
      : super(_value, (v) => _then(v as UpdateIsCarInssuranceService$));

  @override
  UpdateIsCarInssuranceService$ get _value =>
      super._value as UpdateIsCarInssuranceService$;

  @override
  $Res call({
    Object isCarInssuranceService = freezed,
  }) {
    return _then(UpdateIsCarInssuranceService$(
      isCarInssuranceService == freezed
          ? _value.isCarInssuranceService
          : isCarInssuranceService as bool,
    ));
  }
}

/// @nodoc
class _$UpdateIsCarInssuranceService$ implements UpdateIsCarInssuranceService$ {
  const _$UpdateIsCarInssuranceService$(this.isCarInssuranceService)
      : assert(isCarInssuranceService != null);

  @override
  final bool isCarInssuranceService;

  @override
  String toString() {
    return 'UpdateIsCarInssuranceService(isCarInssuranceService: $isCarInssuranceService)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateIsCarInssuranceService$ &&
            (identical(other.isCarInssuranceService, isCarInssuranceService) ||
                const DeepCollectionEquality().equals(
                    other.isCarInssuranceService, isCarInssuranceService)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isCarInssuranceService);

  @override
  $UpdateIsCarInssuranceService$CopyWith<UpdateIsCarInssuranceService$>
      get copyWith => _$UpdateIsCarInssuranceService$CopyWithImpl<
          UpdateIsCarInssuranceService$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isCarInssuranceService), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(isCarInssuranceService);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isCarInssuranceService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(isCarInssuranceService);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsCarInssuranceService$ value), {
    @required Result successful(UpdateIsCarInssuranceServiceSuccessful value),
    @required Result error(UpdateIsCarInssuranceServiceError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsCarInssuranceService$ value), {
    Result successful(UpdateIsCarInssuranceServiceSuccessful value),
    Result error(UpdateIsCarInssuranceServiceError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateIsCarInssuranceService$
    implements UpdateIsCarInssuranceService {
  const factory UpdateIsCarInssuranceService$(bool isCarInssuranceService) =
      _$UpdateIsCarInssuranceService$;

  bool get isCarInssuranceService;
  $UpdateIsCarInssuranceService$CopyWith<UpdateIsCarInssuranceService$>
      get copyWith;
}

/// @nodoc
abstract class $UpdateIsCarInssuranceServiceSuccessfulCopyWith<$Res> {
  factory $UpdateIsCarInssuranceServiceSuccessfulCopyWith(
          UpdateIsCarInssuranceServiceSuccessful value,
          $Res Function(UpdateIsCarInssuranceServiceSuccessful) then) =
      _$UpdateIsCarInssuranceServiceSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateIsCarInssuranceServiceSuccessfulCopyWithImpl<$Res>
    extends _$UpdateIsCarInssuranceServiceCopyWithImpl<$Res>
    implements $UpdateIsCarInssuranceServiceSuccessfulCopyWith<$Res> {
  _$UpdateIsCarInssuranceServiceSuccessfulCopyWithImpl(
      UpdateIsCarInssuranceServiceSuccessful _value,
      $Res Function(UpdateIsCarInssuranceServiceSuccessful) _then)
      : super(
            _value, (v) => _then(v as UpdateIsCarInssuranceServiceSuccessful));

  @override
  UpdateIsCarInssuranceServiceSuccessful get _value =>
      super._value as UpdateIsCarInssuranceServiceSuccessful;
}

/// @nodoc
class _$UpdateIsCarInssuranceServiceSuccessful
    implements UpdateIsCarInssuranceServiceSuccessful {
  const _$UpdateIsCarInssuranceServiceSuccessful();

  @override
  String toString() {
    return 'UpdateIsCarInssuranceService.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateIsCarInssuranceServiceSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isCarInssuranceService), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isCarInssuranceService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsCarInssuranceService$ value), {
    @required Result successful(UpdateIsCarInssuranceServiceSuccessful value),
    @required Result error(UpdateIsCarInssuranceServiceError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsCarInssuranceService$ value), {
    Result successful(UpdateIsCarInssuranceServiceSuccessful value),
    Result error(UpdateIsCarInssuranceServiceError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateIsCarInssuranceServiceSuccessful
    implements UpdateIsCarInssuranceService {
  const factory UpdateIsCarInssuranceServiceSuccessful() =
      _$UpdateIsCarInssuranceServiceSuccessful;
}

/// @nodoc
abstract class $UpdateIsCarInssuranceServiceErrorCopyWith<$Res> {
  factory $UpdateIsCarInssuranceServiceErrorCopyWith(
          UpdateIsCarInssuranceServiceError value,
          $Res Function(UpdateIsCarInssuranceServiceError) then) =
      _$UpdateIsCarInssuranceServiceErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$UpdateIsCarInssuranceServiceErrorCopyWithImpl<$Res>
    extends _$UpdateIsCarInssuranceServiceCopyWithImpl<$Res>
    implements $UpdateIsCarInssuranceServiceErrorCopyWith<$Res> {
  _$UpdateIsCarInssuranceServiceErrorCopyWithImpl(
      UpdateIsCarInssuranceServiceError _value,
      $Res Function(UpdateIsCarInssuranceServiceError) _then)
      : super(_value, (v) => _then(v as UpdateIsCarInssuranceServiceError));

  @override
  UpdateIsCarInssuranceServiceError get _value =>
      super._value as UpdateIsCarInssuranceServiceError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(UpdateIsCarInssuranceServiceError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$UpdateIsCarInssuranceServiceError
    implements UpdateIsCarInssuranceServiceError {
  const _$UpdateIsCarInssuranceServiceError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'UpdateIsCarInssuranceService.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateIsCarInssuranceServiceError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $UpdateIsCarInssuranceServiceErrorCopyWith<UpdateIsCarInssuranceServiceError>
      get copyWith => _$UpdateIsCarInssuranceServiceErrorCopyWithImpl<
          UpdateIsCarInssuranceServiceError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isCarInssuranceService), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isCarInssuranceService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsCarInssuranceService$ value), {
    @required Result successful(UpdateIsCarInssuranceServiceSuccessful value),
    @required Result error(UpdateIsCarInssuranceServiceError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsCarInssuranceService$ value), {
    Result successful(UpdateIsCarInssuranceServiceSuccessful value),
    Result error(UpdateIsCarInssuranceServiceError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateIsCarInssuranceServiceError
    implements UpdateIsCarInssuranceService, ErrorAction {
  const factory UpdateIsCarInssuranceServiceError(Object error) =
      _$UpdateIsCarInssuranceServiceError;

  Object get error;
  $UpdateIsCarInssuranceServiceErrorCopyWith<UpdateIsCarInssuranceServiceError>
      get copyWith;
}

/// @nodoc
class _$UpdateIsCarRentalServiceTearOff {
  const _$UpdateIsCarRentalServiceTearOff();

// ignore: unused_element
  UpdateIsCarRentalService$ call(bool isCarRentalService) {
    return UpdateIsCarRentalService$(
      isCarRentalService,
    );
  }

// ignore: unused_element
  UpdateIsCarRentalServiceSuccessful successful() {
    return const UpdateIsCarRentalServiceSuccessful();
  }

// ignore: unused_element
  UpdateIsCarRentalServiceError error(Object error) {
    return UpdateIsCarRentalServiceError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateIsCarRentalService = _$UpdateIsCarRentalServiceTearOff();

/// @nodoc
mixin _$UpdateIsCarRentalService {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isCarRentalService), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isCarRentalService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsCarRentalService$ value), {
    @required Result successful(UpdateIsCarRentalServiceSuccessful value),
    @required Result error(UpdateIsCarRentalServiceError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsCarRentalService$ value), {
    Result successful(UpdateIsCarRentalServiceSuccessful value),
    Result error(UpdateIsCarRentalServiceError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UpdateIsCarRentalServiceCopyWith<$Res> {
  factory $UpdateIsCarRentalServiceCopyWith(UpdateIsCarRentalService value,
          $Res Function(UpdateIsCarRentalService) then) =
      _$UpdateIsCarRentalServiceCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateIsCarRentalServiceCopyWithImpl<$Res>
    implements $UpdateIsCarRentalServiceCopyWith<$Res> {
  _$UpdateIsCarRentalServiceCopyWithImpl(this._value, this._then);

  final UpdateIsCarRentalService _value;
  // ignore: unused_field
  final $Res Function(UpdateIsCarRentalService) _then;
}

/// @nodoc
abstract class $UpdateIsCarRentalService$CopyWith<$Res> {
  factory $UpdateIsCarRentalService$CopyWith(UpdateIsCarRentalService$ value,
          $Res Function(UpdateIsCarRentalService$) then) =
      _$UpdateIsCarRentalService$CopyWithImpl<$Res>;
  $Res call({bool isCarRentalService});
}

/// @nodoc
class _$UpdateIsCarRentalService$CopyWithImpl<$Res>
    extends _$UpdateIsCarRentalServiceCopyWithImpl<$Res>
    implements $UpdateIsCarRentalService$CopyWith<$Res> {
  _$UpdateIsCarRentalService$CopyWithImpl(UpdateIsCarRentalService$ _value,
      $Res Function(UpdateIsCarRentalService$) _then)
      : super(_value, (v) => _then(v as UpdateIsCarRentalService$));

  @override
  UpdateIsCarRentalService$ get _value =>
      super._value as UpdateIsCarRentalService$;

  @override
  $Res call({
    Object isCarRentalService = freezed,
  }) {
    return _then(UpdateIsCarRentalService$(
      isCarRentalService == freezed
          ? _value.isCarRentalService
          : isCarRentalService as bool,
    ));
  }
}

/// @nodoc
class _$UpdateIsCarRentalService$ implements UpdateIsCarRentalService$ {
  const _$UpdateIsCarRentalService$(this.isCarRentalService)
      : assert(isCarRentalService != null);

  @override
  final bool isCarRentalService;

  @override
  String toString() {
    return 'UpdateIsCarRentalService(isCarRentalService: $isCarRentalService)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateIsCarRentalService$ &&
            (identical(other.isCarRentalService, isCarRentalService) ||
                const DeepCollectionEquality()
                    .equals(other.isCarRentalService, isCarRentalService)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isCarRentalService);

  @override
  $UpdateIsCarRentalService$CopyWith<UpdateIsCarRentalService$> get copyWith =>
      _$UpdateIsCarRentalService$CopyWithImpl<UpdateIsCarRentalService$>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isCarRentalService), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(isCarRentalService);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isCarRentalService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(isCarRentalService);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsCarRentalService$ value), {
    @required Result successful(UpdateIsCarRentalServiceSuccessful value),
    @required Result error(UpdateIsCarRentalServiceError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsCarRentalService$ value), {
    Result successful(UpdateIsCarRentalServiceSuccessful value),
    Result error(UpdateIsCarRentalServiceError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateIsCarRentalService$ implements UpdateIsCarRentalService {
  const factory UpdateIsCarRentalService$(bool isCarRentalService) =
      _$UpdateIsCarRentalService$;

  bool get isCarRentalService;
  $UpdateIsCarRentalService$CopyWith<UpdateIsCarRentalService$> get copyWith;
}

/// @nodoc
abstract class $UpdateIsCarRentalServiceSuccessfulCopyWith<$Res> {
  factory $UpdateIsCarRentalServiceSuccessfulCopyWith(
          UpdateIsCarRentalServiceSuccessful value,
          $Res Function(UpdateIsCarRentalServiceSuccessful) then) =
      _$UpdateIsCarRentalServiceSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateIsCarRentalServiceSuccessfulCopyWithImpl<$Res>
    extends _$UpdateIsCarRentalServiceCopyWithImpl<$Res>
    implements $UpdateIsCarRentalServiceSuccessfulCopyWith<$Res> {
  _$UpdateIsCarRentalServiceSuccessfulCopyWithImpl(
      UpdateIsCarRentalServiceSuccessful _value,
      $Res Function(UpdateIsCarRentalServiceSuccessful) _then)
      : super(_value, (v) => _then(v as UpdateIsCarRentalServiceSuccessful));

  @override
  UpdateIsCarRentalServiceSuccessful get _value =>
      super._value as UpdateIsCarRentalServiceSuccessful;
}

/// @nodoc
class _$UpdateIsCarRentalServiceSuccessful
    implements UpdateIsCarRentalServiceSuccessful {
  const _$UpdateIsCarRentalServiceSuccessful();

  @override
  String toString() {
    return 'UpdateIsCarRentalService.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateIsCarRentalServiceSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isCarRentalService), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isCarRentalService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsCarRentalService$ value), {
    @required Result successful(UpdateIsCarRentalServiceSuccessful value),
    @required Result error(UpdateIsCarRentalServiceError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsCarRentalService$ value), {
    Result successful(UpdateIsCarRentalServiceSuccessful value),
    Result error(UpdateIsCarRentalServiceError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateIsCarRentalServiceSuccessful
    implements UpdateIsCarRentalService {
  const factory UpdateIsCarRentalServiceSuccessful() =
      _$UpdateIsCarRentalServiceSuccessful;
}

/// @nodoc
abstract class $UpdateIsCarRentalServiceErrorCopyWith<$Res> {
  factory $UpdateIsCarRentalServiceErrorCopyWith(
          UpdateIsCarRentalServiceError value,
          $Res Function(UpdateIsCarRentalServiceError) then) =
      _$UpdateIsCarRentalServiceErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$UpdateIsCarRentalServiceErrorCopyWithImpl<$Res>
    extends _$UpdateIsCarRentalServiceCopyWithImpl<$Res>
    implements $UpdateIsCarRentalServiceErrorCopyWith<$Res> {
  _$UpdateIsCarRentalServiceErrorCopyWithImpl(
      UpdateIsCarRentalServiceError _value,
      $Res Function(UpdateIsCarRentalServiceError) _then)
      : super(_value, (v) => _then(v as UpdateIsCarRentalServiceError));

  @override
  UpdateIsCarRentalServiceError get _value =>
      super._value as UpdateIsCarRentalServiceError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(UpdateIsCarRentalServiceError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$UpdateIsCarRentalServiceError implements UpdateIsCarRentalServiceError {
  const _$UpdateIsCarRentalServiceError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'UpdateIsCarRentalService.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateIsCarRentalServiceError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $UpdateIsCarRentalServiceErrorCopyWith<UpdateIsCarRentalServiceError>
      get copyWith => _$UpdateIsCarRentalServiceErrorCopyWithImpl<
          UpdateIsCarRentalServiceError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isCarRentalService), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isCarRentalService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsCarRentalService$ value), {
    @required Result successful(UpdateIsCarRentalServiceSuccessful value),
    @required Result error(UpdateIsCarRentalServiceError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsCarRentalService$ value), {
    Result successful(UpdateIsCarRentalServiceSuccessful value),
    Result error(UpdateIsCarRentalServiceError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateIsCarRentalServiceError
    implements UpdateIsCarRentalService, ErrorAction {
  const factory UpdateIsCarRentalServiceError(Object error) =
      _$UpdateIsCarRentalServiceError;

  Object get error;
  $UpdateIsCarRentalServiceErrorCopyWith<UpdateIsCarRentalServiceError>
      get copyWith;
}

/// @nodoc
class _$UpdateIsDetailingServiceTearOff {
  const _$UpdateIsDetailingServiceTearOff();

// ignore: unused_element
  UpdateIsDetailingService$ call(bool isDetailingService) {
    return UpdateIsDetailingService$(
      isDetailingService,
    );
  }

// ignore: unused_element
  UpdateIsDetailingServiceSuccessful successful() {
    return const UpdateIsDetailingServiceSuccessful();
  }

// ignore: unused_element
  UpdateIsDetailingServiceError error(Object error) {
    return UpdateIsDetailingServiceError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateIsDetailingService = _$UpdateIsDetailingServiceTearOff();

/// @nodoc
mixin _$UpdateIsDetailingService {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isDetailingService), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isDetailingService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsDetailingService$ value), {
    @required Result successful(UpdateIsDetailingServiceSuccessful value),
    @required Result error(UpdateIsDetailingServiceError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsDetailingService$ value), {
    Result successful(UpdateIsDetailingServiceSuccessful value),
    Result error(UpdateIsDetailingServiceError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UpdateIsDetailingServiceCopyWith<$Res> {
  factory $UpdateIsDetailingServiceCopyWith(UpdateIsDetailingService value,
          $Res Function(UpdateIsDetailingService) then) =
      _$UpdateIsDetailingServiceCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateIsDetailingServiceCopyWithImpl<$Res>
    implements $UpdateIsDetailingServiceCopyWith<$Res> {
  _$UpdateIsDetailingServiceCopyWithImpl(this._value, this._then);

  final UpdateIsDetailingService _value;
  // ignore: unused_field
  final $Res Function(UpdateIsDetailingService) _then;
}

/// @nodoc
abstract class $UpdateIsDetailingService$CopyWith<$Res> {
  factory $UpdateIsDetailingService$CopyWith(UpdateIsDetailingService$ value,
          $Res Function(UpdateIsDetailingService$) then) =
      _$UpdateIsDetailingService$CopyWithImpl<$Res>;
  $Res call({bool isDetailingService});
}

/// @nodoc
class _$UpdateIsDetailingService$CopyWithImpl<$Res>
    extends _$UpdateIsDetailingServiceCopyWithImpl<$Res>
    implements $UpdateIsDetailingService$CopyWith<$Res> {
  _$UpdateIsDetailingService$CopyWithImpl(UpdateIsDetailingService$ _value,
      $Res Function(UpdateIsDetailingService$) _then)
      : super(_value, (v) => _then(v as UpdateIsDetailingService$));

  @override
  UpdateIsDetailingService$ get _value =>
      super._value as UpdateIsDetailingService$;

  @override
  $Res call({
    Object isDetailingService = freezed,
  }) {
    return _then(UpdateIsDetailingService$(
      isDetailingService == freezed
          ? _value.isDetailingService
          : isDetailingService as bool,
    ));
  }
}

/// @nodoc
class _$UpdateIsDetailingService$ implements UpdateIsDetailingService$ {
  const _$UpdateIsDetailingService$(this.isDetailingService)
      : assert(isDetailingService != null);

  @override
  final bool isDetailingService;

  @override
  String toString() {
    return 'UpdateIsDetailingService(isDetailingService: $isDetailingService)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateIsDetailingService$ &&
            (identical(other.isDetailingService, isDetailingService) ||
                const DeepCollectionEquality()
                    .equals(other.isDetailingService, isDetailingService)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isDetailingService);

  @override
  $UpdateIsDetailingService$CopyWith<UpdateIsDetailingService$> get copyWith =>
      _$UpdateIsDetailingService$CopyWithImpl<UpdateIsDetailingService$>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isDetailingService), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(isDetailingService);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isDetailingService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(isDetailingService);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsDetailingService$ value), {
    @required Result successful(UpdateIsDetailingServiceSuccessful value),
    @required Result error(UpdateIsDetailingServiceError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsDetailingService$ value), {
    Result successful(UpdateIsDetailingServiceSuccessful value),
    Result error(UpdateIsDetailingServiceError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateIsDetailingService$ implements UpdateIsDetailingService {
  const factory UpdateIsDetailingService$(bool isDetailingService) =
      _$UpdateIsDetailingService$;

  bool get isDetailingService;
  $UpdateIsDetailingService$CopyWith<UpdateIsDetailingService$> get copyWith;
}

/// @nodoc
abstract class $UpdateIsDetailingServiceSuccessfulCopyWith<$Res> {
  factory $UpdateIsDetailingServiceSuccessfulCopyWith(
          UpdateIsDetailingServiceSuccessful value,
          $Res Function(UpdateIsDetailingServiceSuccessful) then) =
      _$UpdateIsDetailingServiceSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateIsDetailingServiceSuccessfulCopyWithImpl<$Res>
    extends _$UpdateIsDetailingServiceCopyWithImpl<$Res>
    implements $UpdateIsDetailingServiceSuccessfulCopyWith<$Res> {
  _$UpdateIsDetailingServiceSuccessfulCopyWithImpl(
      UpdateIsDetailingServiceSuccessful _value,
      $Res Function(UpdateIsDetailingServiceSuccessful) _then)
      : super(_value, (v) => _then(v as UpdateIsDetailingServiceSuccessful));

  @override
  UpdateIsDetailingServiceSuccessful get _value =>
      super._value as UpdateIsDetailingServiceSuccessful;
}

/// @nodoc
class _$UpdateIsDetailingServiceSuccessful
    implements UpdateIsDetailingServiceSuccessful {
  const _$UpdateIsDetailingServiceSuccessful();

  @override
  String toString() {
    return 'UpdateIsDetailingService.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateIsDetailingServiceSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isDetailingService), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isDetailingService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsDetailingService$ value), {
    @required Result successful(UpdateIsDetailingServiceSuccessful value),
    @required Result error(UpdateIsDetailingServiceError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsDetailingService$ value), {
    Result successful(UpdateIsDetailingServiceSuccessful value),
    Result error(UpdateIsDetailingServiceError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateIsDetailingServiceSuccessful
    implements UpdateIsDetailingService {
  const factory UpdateIsDetailingServiceSuccessful() =
      _$UpdateIsDetailingServiceSuccessful;
}

/// @nodoc
abstract class $UpdateIsDetailingServiceErrorCopyWith<$Res> {
  factory $UpdateIsDetailingServiceErrorCopyWith(
          UpdateIsDetailingServiceError value,
          $Res Function(UpdateIsDetailingServiceError) then) =
      _$UpdateIsDetailingServiceErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$UpdateIsDetailingServiceErrorCopyWithImpl<$Res>
    extends _$UpdateIsDetailingServiceCopyWithImpl<$Res>
    implements $UpdateIsDetailingServiceErrorCopyWith<$Res> {
  _$UpdateIsDetailingServiceErrorCopyWithImpl(
      UpdateIsDetailingServiceError _value,
      $Res Function(UpdateIsDetailingServiceError) _then)
      : super(_value, (v) => _then(v as UpdateIsDetailingServiceError));

  @override
  UpdateIsDetailingServiceError get _value =>
      super._value as UpdateIsDetailingServiceError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(UpdateIsDetailingServiceError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$UpdateIsDetailingServiceError implements UpdateIsDetailingServiceError {
  const _$UpdateIsDetailingServiceError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'UpdateIsDetailingService.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateIsDetailingServiceError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $UpdateIsDetailingServiceErrorCopyWith<UpdateIsDetailingServiceError>
      get copyWith => _$UpdateIsDetailingServiceErrorCopyWithImpl<
          UpdateIsDetailingServiceError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isDetailingService), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isDetailingService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsDetailingService$ value), {
    @required Result successful(UpdateIsDetailingServiceSuccessful value),
    @required Result error(UpdateIsDetailingServiceError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsDetailingService$ value), {
    Result successful(UpdateIsDetailingServiceSuccessful value),
    Result error(UpdateIsDetailingServiceError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateIsDetailingServiceError
    implements UpdateIsDetailingService, ErrorAction {
  const factory UpdateIsDetailingServiceError(Object error) =
      _$UpdateIsDetailingServiceError;

  Object get error;
  $UpdateIsDetailingServiceErrorCopyWith<UpdateIsDetailingServiceError>
      get copyWith;
}

/// @nodoc
class _$UpdateIsEngineDecarbonizationServiceTearOff {
  const _$UpdateIsEngineDecarbonizationServiceTearOff();

// ignore: unused_element
  UpdateIsEngineDecarbonizationService$ call(
      bool isEngineDecarbonizationService) {
    return UpdateIsEngineDecarbonizationService$(
      isEngineDecarbonizationService,
    );
  }

// ignore: unused_element
  UpdateIsEngineDecarbonizationServiceSuccessful successful() {
    return const UpdateIsEngineDecarbonizationServiceSuccessful();
  }

// ignore: unused_element
  UpdateIsEngineDecarbonizationServiceError error(Object error) {
    return UpdateIsEngineDecarbonizationServiceError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateIsEngineDecarbonizationService =
    _$UpdateIsEngineDecarbonizationServiceTearOff();

/// @nodoc
mixin _$UpdateIsEngineDecarbonizationService {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isEngineDecarbonizationService), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isEngineDecarbonizationService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsEngineDecarbonizationService$ value), {
    @required
        Result successful(UpdateIsEngineDecarbonizationServiceSuccessful value),
    @required Result error(UpdateIsEngineDecarbonizationServiceError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsEngineDecarbonizationService$ value), {
    Result successful(UpdateIsEngineDecarbonizationServiceSuccessful value),
    Result error(UpdateIsEngineDecarbonizationServiceError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UpdateIsEngineDecarbonizationServiceCopyWith<$Res> {
  factory $UpdateIsEngineDecarbonizationServiceCopyWith(
          UpdateIsEngineDecarbonizationService value,
          $Res Function(UpdateIsEngineDecarbonizationService) then) =
      _$UpdateIsEngineDecarbonizationServiceCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateIsEngineDecarbonizationServiceCopyWithImpl<$Res>
    implements $UpdateIsEngineDecarbonizationServiceCopyWith<$Res> {
  _$UpdateIsEngineDecarbonizationServiceCopyWithImpl(this._value, this._then);

  final UpdateIsEngineDecarbonizationService _value;
  // ignore: unused_field
  final $Res Function(UpdateIsEngineDecarbonizationService) _then;
}

/// @nodoc
abstract class $UpdateIsEngineDecarbonizationService$CopyWith<$Res> {
  factory $UpdateIsEngineDecarbonizationService$CopyWith(
          UpdateIsEngineDecarbonizationService$ value,
          $Res Function(UpdateIsEngineDecarbonizationService$) then) =
      _$UpdateIsEngineDecarbonizationService$CopyWithImpl<$Res>;
  $Res call({bool isEngineDecarbonizationService});
}

/// @nodoc
class _$UpdateIsEngineDecarbonizationService$CopyWithImpl<$Res>
    extends _$UpdateIsEngineDecarbonizationServiceCopyWithImpl<$Res>
    implements $UpdateIsEngineDecarbonizationService$CopyWith<$Res> {
  _$UpdateIsEngineDecarbonizationService$CopyWithImpl(
      UpdateIsEngineDecarbonizationService$ _value,
      $Res Function(UpdateIsEngineDecarbonizationService$) _then)
      : super(_value, (v) => _then(v as UpdateIsEngineDecarbonizationService$));

  @override
  UpdateIsEngineDecarbonizationService$ get _value =>
      super._value as UpdateIsEngineDecarbonizationService$;

  @override
  $Res call({
    Object isEngineDecarbonizationService = freezed,
  }) {
    return _then(UpdateIsEngineDecarbonizationService$(
      isEngineDecarbonizationService == freezed
          ? _value.isEngineDecarbonizationService
          : isEngineDecarbonizationService as bool,
    ));
  }
}

/// @nodoc
class _$UpdateIsEngineDecarbonizationService$
    implements UpdateIsEngineDecarbonizationService$ {
  const _$UpdateIsEngineDecarbonizationService$(
      this.isEngineDecarbonizationService)
      : assert(isEngineDecarbonizationService != null);

  @override
  final bool isEngineDecarbonizationService;

  @override
  String toString() {
    return 'UpdateIsEngineDecarbonizationService(isEngineDecarbonizationService: $isEngineDecarbonizationService)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateIsEngineDecarbonizationService$ &&
            (identical(other.isEngineDecarbonizationService,
                    isEngineDecarbonizationService) ||
                const DeepCollectionEquality().equals(
                    other.isEngineDecarbonizationService,
                    isEngineDecarbonizationService)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isEngineDecarbonizationService);

  @override
  $UpdateIsEngineDecarbonizationService$CopyWith<
          UpdateIsEngineDecarbonizationService$>
      get copyWith => _$UpdateIsEngineDecarbonizationService$CopyWithImpl<
          UpdateIsEngineDecarbonizationService$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isEngineDecarbonizationService), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(isEngineDecarbonizationService);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isEngineDecarbonizationService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(isEngineDecarbonizationService);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsEngineDecarbonizationService$ value), {
    @required
        Result successful(UpdateIsEngineDecarbonizationServiceSuccessful value),
    @required Result error(UpdateIsEngineDecarbonizationServiceError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsEngineDecarbonizationService$ value), {
    Result successful(UpdateIsEngineDecarbonizationServiceSuccessful value),
    Result error(UpdateIsEngineDecarbonizationServiceError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateIsEngineDecarbonizationService$
    implements UpdateIsEngineDecarbonizationService {
  const factory UpdateIsEngineDecarbonizationService$(
          bool isEngineDecarbonizationService) =
      _$UpdateIsEngineDecarbonizationService$;

  bool get isEngineDecarbonizationService;
  $UpdateIsEngineDecarbonizationService$CopyWith<
      UpdateIsEngineDecarbonizationService$> get copyWith;
}

/// @nodoc
abstract class $UpdateIsEngineDecarbonizationServiceSuccessfulCopyWith<$Res> {
  factory $UpdateIsEngineDecarbonizationServiceSuccessfulCopyWith(
          UpdateIsEngineDecarbonizationServiceSuccessful value,
          $Res Function(UpdateIsEngineDecarbonizationServiceSuccessful) then) =
      _$UpdateIsEngineDecarbonizationServiceSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateIsEngineDecarbonizationServiceSuccessfulCopyWithImpl<$Res>
    extends _$UpdateIsEngineDecarbonizationServiceCopyWithImpl<$Res>
    implements $UpdateIsEngineDecarbonizationServiceSuccessfulCopyWith<$Res> {
  _$UpdateIsEngineDecarbonizationServiceSuccessfulCopyWithImpl(
      UpdateIsEngineDecarbonizationServiceSuccessful _value,
      $Res Function(UpdateIsEngineDecarbonizationServiceSuccessful) _then)
      : super(_value,
            (v) => _then(v as UpdateIsEngineDecarbonizationServiceSuccessful));

  @override
  UpdateIsEngineDecarbonizationServiceSuccessful get _value =>
      super._value as UpdateIsEngineDecarbonizationServiceSuccessful;
}

/// @nodoc
class _$UpdateIsEngineDecarbonizationServiceSuccessful
    implements UpdateIsEngineDecarbonizationServiceSuccessful {
  const _$UpdateIsEngineDecarbonizationServiceSuccessful();

  @override
  String toString() {
    return 'UpdateIsEngineDecarbonizationService.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateIsEngineDecarbonizationServiceSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isEngineDecarbonizationService), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isEngineDecarbonizationService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsEngineDecarbonizationService$ value), {
    @required
        Result successful(UpdateIsEngineDecarbonizationServiceSuccessful value),
    @required Result error(UpdateIsEngineDecarbonizationServiceError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsEngineDecarbonizationService$ value), {
    Result successful(UpdateIsEngineDecarbonizationServiceSuccessful value),
    Result error(UpdateIsEngineDecarbonizationServiceError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateIsEngineDecarbonizationServiceSuccessful
    implements UpdateIsEngineDecarbonizationService {
  const factory UpdateIsEngineDecarbonizationServiceSuccessful() =
      _$UpdateIsEngineDecarbonizationServiceSuccessful;
}

/// @nodoc
abstract class $UpdateIsEngineDecarbonizationServiceErrorCopyWith<$Res> {
  factory $UpdateIsEngineDecarbonizationServiceErrorCopyWith(
          UpdateIsEngineDecarbonizationServiceError value,
          $Res Function(UpdateIsEngineDecarbonizationServiceError) then) =
      _$UpdateIsEngineDecarbonizationServiceErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$UpdateIsEngineDecarbonizationServiceErrorCopyWithImpl<$Res>
    extends _$UpdateIsEngineDecarbonizationServiceCopyWithImpl<$Res>
    implements $UpdateIsEngineDecarbonizationServiceErrorCopyWith<$Res> {
  _$UpdateIsEngineDecarbonizationServiceErrorCopyWithImpl(
      UpdateIsEngineDecarbonizationServiceError _value,
      $Res Function(UpdateIsEngineDecarbonizationServiceError) _then)
      : super(_value,
            (v) => _then(v as UpdateIsEngineDecarbonizationServiceError));

  @override
  UpdateIsEngineDecarbonizationServiceError get _value =>
      super._value as UpdateIsEngineDecarbonizationServiceError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(UpdateIsEngineDecarbonizationServiceError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$UpdateIsEngineDecarbonizationServiceError
    implements UpdateIsEngineDecarbonizationServiceError {
  const _$UpdateIsEngineDecarbonizationServiceError(this.error)
      : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'UpdateIsEngineDecarbonizationService.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateIsEngineDecarbonizationServiceError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $UpdateIsEngineDecarbonizationServiceErrorCopyWith<
          UpdateIsEngineDecarbonizationServiceError>
      get copyWith => _$UpdateIsEngineDecarbonizationServiceErrorCopyWithImpl<
          UpdateIsEngineDecarbonizationServiceError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isEngineDecarbonizationService), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isEngineDecarbonizationService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsEngineDecarbonizationService$ value), {
    @required
        Result successful(UpdateIsEngineDecarbonizationServiceSuccessful value),
    @required Result error(UpdateIsEngineDecarbonizationServiceError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsEngineDecarbonizationService$ value), {
    Result successful(UpdateIsEngineDecarbonizationServiceSuccessful value),
    Result error(UpdateIsEngineDecarbonizationServiceError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateIsEngineDecarbonizationServiceError
    implements UpdateIsEngineDecarbonizationService, ErrorAction {
  const factory UpdateIsEngineDecarbonizationServiceError(Object error) =
      _$UpdateIsEngineDecarbonizationServiceError;

  Object get error;
  $UpdateIsEngineDecarbonizationServiceErrorCopyWith<
      UpdateIsEngineDecarbonizationServiceError> get copyWith;
}

/// @nodoc
class _$UpdateIsParticleFilterCleaningServiceTearOff {
  const _$UpdateIsParticleFilterCleaningServiceTearOff();

// ignore: unused_element
  UpdateIsParticleFilterCleaningService$ call(
      bool isParticleFilterCleaningService) {
    return UpdateIsParticleFilterCleaningService$(
      isParticleFilterCleaningService,
    );
  }

// ignore: unused_element
  UpdateIsParticleFilterCleaningServiceSuccessful successful() {
    return const UpdateIsParticleFilterCleaningServiceSuccessful();
  }

// ignore: unused_element
  UpdateIsParticleFilterCleaningServiceError error(Object error) {
    return UpdateIsParticleFilterCleaningServiceError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateIsParticleFilterCleaningService =
    _$UpdateIsParticleFilterCleaningServiceTearOff();

/// @nodoc
mixin _$UpdateIsParticleFilterCleaningService {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isParticleFilterCleaningService), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isParticleFilterCleaningService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsParticleFilterCleaningService$ value), {
    @required
        Result successful(
            UpdateIsParticleFilterCleaningServiceSuccessful value),
    @required Result error(UpdateIsParticleFilterCleaningServiceError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsParticleFilterCleaningService$ value), {
    Result successful(UpdateIsParticleFilterCleaningServiceSuccessful value),
    Result error(UpdateIsParticleFilterCleaningServiceError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UpdateIsParticleFilterCleaningServiceCopyWith<$Res> {
  factory $UpdateIsParticleFilterCleaningServiceCopyWith(
          UpdateIsParticleFilterCleaningService value,
          $Res Function(UpdateIsParticleFilterCleaningService) then) =
      _$UpdateIsParticleFilterCleaningServiceCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateIsParticleFilterCleaningServiceCopyWithImpl<$Res>
    implements $UpdateIsParticleFilterCleaningServiceCopyWith<$Res> {
  _$UpdateIsParticleFilterCleaningServiceCopyWithImpl(this._value, this._then);

  final UpdateIsParticleFilterCleaningService _value;
  // ignore: unused_field
  final $Res Function(UpdateIsParticleFilterCleaningService) _then;
}

/// @nodoc
abstract class $UpdateIsParticleFilterCleaningService$CopyWith<$Res> {
  factory $UpdateIsParticleFilterCleaningService$CopyWith(
          UpdateIsParticleFilterCleaningService$ value,
          $Res Function(UpdateIsParticleFilterCleaningService$) then) =
      _$UpdateIsParticleFilterCleaningService$CopyWithImpl<$Res>;
  $Res call({bool isParticleFilterCleaningService});
}

/// @nodoc
class _$UpdateIsParticleFilterCleaningService$CopyWithImpl<$Res>
    extends _$UpdateIsParticleFilterCleaningServiceCopyWithImpl<$Res>
    implements $UpdateIsParticleFilterCleaningService$CopyWith<$Res> {
  _$UpdateIsParticleFilterCleaningService$CopyWithImpl(
      UpdateIsParticleFilterCleaningService$ _value,
      $Res Function(UpdateIsParticleFilterCleaningService$) _then)
      : super(
            _value, (v) => _then(v as UpdateIsParticleFilterCleaningService$));

  @override
  UpdateIsParticleFilterCleaningService$ get _value =>
      super._value as UpdateIsParticleFilterCleaningService$;

  @override
  $Res call({
    Object isParticleFilterCleaningService = freezed,
  }) {
    return _then(UpdateIsParticleFilterCleaningService$(
      isParticleFilterCleaningService == freezed
          ? _value.isParticleFilterCleaningService
          : isParticleFilterCleaningService as bool,
    ));
  }
}

/// @nodoc
class _$UpdateIsParticleFilterCleaningService$
    implements UpdateIsParticleFilterCleaningService$ {
  const _$UpdateIsParticleFilterCleaningService$(
      this.isParticleFilterCleaningService)
      : assert(isParticleFilterCleaningService != null);

  @override
  final bool isParticleFilterCleaningService;

  @override
  String toString() {
    return 'UpdateIsParticleFilterCleaningService(isParticleFilterCleaningService: $isParticleFilterCleaningService)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateIsParticleFilterCleaningService$ &&
            (identical(other.isParticleFilterCleaningService,
                    isParticleFilterCleaningService) ||
                const DeepCollectionEquality().equals(
                    other.isParticleFilterCleaningService,
                    isParticleFilterCleaningService)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isParticleFilterCleaningService);

  @override
  $UpdateIsParticleFilterCleaningService$CopyWith<
          UpdateIsParticleFilterCleaningService$>
      get copyWith => _$UpdateIsParticleFilterCleaningService$CopyWithImpl<
          UpdateIsParticleFilterCleaningService$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isParticleFilterCleaningService), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(isParticleFilterCleaningService);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isParticleFilterCleaningService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(isParticleFilterCleaningService);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsParticleFilterCleaningService$ value), {
    @required
        Result successful(
            UpdateIsParticleFilterCleaningServiceSuccessful value),
    @required Result error(UpdateIsParticleFilterCleaningServiceError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsParticleFilterCleaningService$ value), {
    Result successful(UpdateIsParticleFilterCleaningServiceSuccessful value),
    Result error(UpdateIsParticleFilterCleaningServiceError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateIsParticleFilterCleaningService$
    implements UpdateIsParticleFilterCleaningService {
  const factory UpdateIsParticleFilterCleaningService$(
          bool isParticleFilterCleaningService) =
      _$UpdateIsParticleFilterCleaningService$;

  bool get isParticleFilterCleaningService;
  $UpdateIsParticleFilterCleaningService$CopyWith<
      UpdateIsParticleFilterCleaningService$> get copyWith;
}

/// @nodoc
abstract class $UpdateIsParticleFilterCleaningServiceSuccessfulCopyWith<$Res> {
  factory $UpdateIsParticleFilterCleaningServiceSuccessfulCopyWith(
          UpdateIsParticleFilterCleaningServiceSuccessful value,
          $Res Function(UpdateIsParticleFilterCleaningServiceSuccessful) then) =
      _$UpdateIsParticleFilterCleaningServiceSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateIsParticleFilterCleaningServiceSuccessfulCopyWithImpl<$Res>
    extends _$UpdateIsParticleFilterCleaningServiceCopyWithImpl<$Res>
    implements $UpdateIsParticleFilterCleaningServiceSuccessfulCopyWith<$Res> {
  _$UpdateIsParticleFilterCleaningServiceSuccessfulCopyWithImpl(
      UpdateIsParticleFilterCleaningServiceSuccessful _value,
      $Res Function(UpdateIsParticleFilterCleaningServiceSuccessful) _then)
      : super(_value,
            (v) => _then(v as UpdateIsParticleFilterCleaningServiceSuccessful));

  @override
  UpdateIsParticleFilterCleaningServiceSuccessful get _value =>
      super._value as UpdateIsParticleFilterCleaningServiceSuccessful;
}

/// @nodoc
class _$UpdateIsParticleFilterCleaningServiceSuccessful
    implements UpdateIsParticleFilterCleaningServiceSuccessful {
  const _$UpdateIsParticleFilterCleaningServiceSuccessful();

  @override
  String toString() {
    return 'UpdateIsParticleFilterCleaningService.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateIsParticleFilterCleaningServiceSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isParticleFilterCleaningService), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isParticleFilterCleaningService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsParticleFilterCleaningService$ value), {
    @required
        Result successful(
            UpdateIsParticleFilterCleaningServiceSuccessful value),
    @required Result error(UpdateIsParticleFilterCleaningServiceError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsParticleFilterCleaningService$ value), {
    Result successful(UpdateIsParticleFilterCleaningServiceSuccessful value),
    Result error(UpdateIsParticleFilterCleaningServiceError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateIsParticleFilterCleaningServiceSuccessful
    implements UpdateIsParticleFilterCleaningService {
  const factory UpdateIsParticleFilterCleaningServiceSuccessful() =
      _$UpdateIsParticleFilterCleaningServiceSuccessful;
}

/// @nodoc
abstract class $UpdateIsParticleFilterCleaningServiceErrorCopyWith<$Res> {
  factory $UpdateIsParticleFilterCleaningServiceErrorCopyWith(
          UpdateIsParticleFilterCleaningServiceError value,
          $Res Function(UpdateIsParticleFilterCleaningServiceError) then) =
      _$UpdateIsParticleFilterCleaningServiceErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$UpdateIsParticleFilterCleaningServiceErrorCopyWithImpl<$Res>
    extends _$UpdateIsParticleFilterCleaningServiceCopyWithImpl<$Res>
    implements $UpdateIsParticleFilterCleaningServiceErrorCopyWith<$Res> {
  _$UpdateIsParticleFilterCleaningServiceErrorCopyWithImpl(
      UpdateIsParticleFilterCleaningServiceError _value,
      $Res Function(UpdateIsParticleFilterCleaningServiceError) _then)
      : super(_value,
            (v) => _then(v as UpdateIsParticleFilterCleaningServiceError));

  @override
  UpdateIsParticleFilterCleaningServiceError get _value =>
      super._value as UpdateIsParticleFilterCleaningServiceError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(UpdateIsParticleFilterCleaningServiceError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$UpdateIsParticleFilterCleaningServiceError
    implements UpdateIsParticleFilterCleaningServiceError {
  const _$UpdateIsParticleFilterCleaningServiceError(this.error)
      : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'UpdateIsParticleFilterCleaningService.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateIsParticleFilterCleaningServiceError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $UpdateIsParticleFilterCleaningServiceErrorCopyWith<
          UpdateIsParticleFilterCleaningServiceError>
      get copyWith => _$UpdateIsParticleFilterCleaningServiceErrorCopyWithImpl<
          UpdateIsParticleFilterCleaningServiceError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isParticleFilterCleaningService), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isParticleFilterCleaningService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsParticleFilterCleaningService$ value), {
    @required
        Result successful(
            UpdateIsParticleFilterCleaningServiceSuccessful value),
    @required Result error(UpdateIsParticleFilterCleaningServiceError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsParticleFilterCleaningService$ value), {
    Result successful(UpdateIsParticleFilterCleaningServiceSuccessful value),
    Result error(UpdateIsParticleFilterCleaningServiceError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateIsParticleFilterCleaningServiceError
    implements UpdateIsParticleFilterCleaningService, ErrorAction {
  const factory UpdateIsParticleFilterCleaningServiceError(Object error) =
      _$UpdateIsParticleFilterCleaningServiceError;

  Object get error;
  $UpdateIsParticleFilterCleaningServiceErrorCopyWith<
      UpdateIsParticleFilterCleaningServiceError> get copyWith;
}

/// @nodoc
class _$UpdateIsServiceAndRepairsTearOff {
  const _$UpdateIsServiceAndRepairsTearOff();

// ignore: unused_element
  UpdateIsServiceAndRepairs$ call(bool isServiceAndRepairs) {
    return UpdateIsServiceAndRepairs$(
      isServiceAndRepairs,
    );
  }

// ignore: unused_element
  UpdateIsServiceAndRepairsSuccessful successful() {
    return const UpdateIsServiceAndRepairsSuccessful();
  }

// ignore: unused_element
  UpdateIsServiceAndRepairsError error(Object error) {
    return UpdateIsServiceAndRepairsError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateIsServiceAndRepairs = _$UpdateIsServiceAndRepairsTearOff();

/// @nodoc
mixin _$UpdateIsServiceAndRepairs {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isServiceAndRepairs), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isServiceAndRepairs), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsServiceAndRepairs$ value), {
    @required Result successful(UpdateIsServiceAndRepairsSuccessful value),
    @required Result error(UpdateIsServiceAndRepairsError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsServiceAndRepairs$ value), {
    Result successful(UpdateIsServiceAndRepairsSuccessful value),
    Result error(UpdateIsServiceAndRepairsError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UpdateIsServiceAndRepairsCopyWith<$Res> {
  factory $UpdateIsServiceAndRepairsCopyWith(UpdateIsServiceAndRepairs value,
          $Res Function(UpdateIsServiceAndRepairs) then) =
      _$UpdateIsServiceAndRepairsCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateIsServiceAndRepairsCopyWithImpl<$Res>
    implements $UpdateIsServiceAndRepairsCopyWith<$Res> {
  _$UpdateIsServiceAndRepairsCopyWithImpl(this._value, this._then);

  final UpdateIsServiceAndRepairs _value;
  // ignore: unused_field
  final $Res Function(UpdateIsServiceAndRepairs) _then;
}

/// @nodoc
abstract class $UpdateIsServiceAndRepairs$CopyWith<$Res> {
  factory $UpdateIsServiceAndRepairs$CopyWith(UpdateIsServiceAndRepairs$ value,
          $Res Function(UpdateIsServiceAndRepairs$) then) =
      _$UpdateIsServiceAndRepairs$CopyWithImpl<$Res>;
  $Res call({bool isServiceAndRepairs});
}

/// @nodoc
class _$UpdateIsServiceAndRepairs$CopyWithImpl<$Res>
    extends _$UpdateIsServiceAndRepairsCopyWithImpl<$Res>
    implements $UpdateIsServiceAndRepairs$CopyWith<$Res> {
  _$UpdateIsServiceAndRepairs$CopyWithImpl(UpdateIsServiceAndRepairs$ _value,
      $Res Function(UpdateIsServiceAndRepairs$) _then)
      : super(_value, (v) => _then(v as UpdateIsServiceAndRepairs$));

  @override
  UpdateIsServiceAndRepairs$ get _value =>
      super._value as UpdateIsServiceAndRepairs$;

  @override
  $Res call({
    Object isServiceAndRepairs = freezed,
  }) {
    return _then(UpdateIsServiceAndRepairs$(
      isServiceAndRepairs == freezed
          ? _value.isServiceAndRepairs
          : isServiceAndRepairs as bool,
    ));
  }
}

/// @nodoc
class _$UpdateIsServiceAndRepairs$ implements UpdateIsServiceAndRepairs$ {
  const _$UpdateIsServiceAndRepairs$(this.isServiceAndRepairs)
      : assert(isServiceAndRepairs != null);

  @override
  final bool isServiceAndRepairs;

  @override
  String toString() {
    return 'UpdateIsServiceAndRepairs(isServiceAndRepairs: $isServiceAndRepairs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateIsServiceAndRepairs$ &&
            (identical(other.isServiceAndRepairs, isServiceAndRepairs) ||
                const DeepCollectionEquality()
                    .equals(other.isServiceAndRepairs, isServiceAndRepairs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isServiceAndRepairs);

  @override
  $UpdateIsServiceAndRepairs$CopyWith<UpdateIsServiceAndRepairs$>
      get copyWith =>
          _$UpdateIsServiceAndRepairs$CopyWithImpl<UpdateIsServiceAndRepairs$>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isServiceAndRepairs), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(isServiceAndRepairs);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isServiceAndRepairs), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(isServiceAndRepairs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsServiceAndRepairs$ value), {
    @required Result successful(UpdateIsServiceAndRepairsSuccessful value),
    @required Result error(UpdateIsServiceAndRepairsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsServiceAndRepairs$ value), {
    Result successful(UpdateIsServiceAndRepairsSuccessful value),
    Result error(UpdateIsServiceAndRepairsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateIsServiceAndRepairs$ implements UpdateIsServiceAndRepairs {
  const factory UpdateIsServiceAndRepairs$(bool isServiceAndRepairs) =
      _$UpdateIsServiceAndRepairs$;

  bool get isServiceAndRepairs;
  $UpdateIsServiceAndRepairs$CopyWith<UpdateIsServiceAndRepairs$> get copyWith;
}

/// @nodoc
abstract class $UpdateIsServiceAndRepairsSuccessfulCopyWith<$Res> {
  factory $UpdateIsServiceAndRepairsSuccessfulCopyWith(
          UpdateIsServiceAndRepairsSuccessful value,
          $Res Function(UpdateIsServiceAndRepairsSuccessful) then) =
      _$UpdateIsServiceAndRepairsSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateIsServiceAndRepairsSuccessfulCopyWithImpl<$Res>
    extends _$UpdateIsServiceAndRepairsCopyWithImpl<$Res>
    implements $UpdateIsServiceAndRepairsSuccessfulCopyWith<$Res> {
  _$UpdateIsServiceAndRepairsSuccessfulCopyWithImpl(
      UpdateIsServiceAndRepairsSuccessful _value,
      $Res Function(UpdateIsServiceAndRepairsSuccessful) _then)
      : super(_value, (v) => _then(v as UpdateIsServiceAndRepairsSuccessful));

  @override
  UpdateIsServiceAndRepairsSuccessful get _value =>
      super._value as UpdateIsServiceAndRepairsSuccessful;
}

/// @nodoc
class _$UpdateIsServiceAndRepairsSuccessful
    implements UpdateIsServiceAndRepairsSuccessful {
  const _$UpdateIsServiceAndRepairsSuccessful();

  @override
  String toString() {
    return 'UpdateIsServiceAndRepairs.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateIsServiceAndRepairsSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isServiceAndRepairs), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isServiceAndRepairs), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsServiceAndRepairs$ value), {
    @required Result successful(UpdateIsServiceAndRepairsSuccessful value),
    @required Result error(UpdateIsServiceAndRepairsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsServiceAndRepairs$ value), {
    Result successful(UpdateIsServiceAndRepairsSuccessful value),
    Result error(UpdateIsServiceAndRepairsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateIsServiceAndRepairsSuccessful
    implements UpdateIsServiceAndRepairs {
  const factory UpdateIsServiceAndRepairsSuccessful() =
      _$UpdateIsServiceAndRepairsSuccessful;
}

/// @nodoc
abstract class $UpdateIsServiceAndRepairsErrorCopyWith<$Res> {
  factory $UpdateIsServiceAndRepairsErrorCopyWith(
          UpdateIsServiceAndRepairsError value,
          $Res Function(UpdateIsServiceAndRepairsError) then) =
      _$UpdateIsServiceAndRepairsErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$UpdateIsServiceAndRepairsErrorCopyWithImpl<$Res>
    extends _$UpdateIsServiceAndRepairsCopyWithImpl<$Res>
    implements $UpdateIsServiceAndRepairsErrorCopyWith<$Res> {
  _$UpdateIsServiceAndRepairsErrorCopyWithImpl(
      UpdateIsServiceAndRepairsError _value,
      $Res Function(UpdateIsServiceAndRepairsError) _then)
      : super(_value, (v) => _then(v as UpdateIsServiceAndRepairsError));

  @override
  UpdateIsServiceAndRepairsError get _value =>
      super._value as UpdateIsServiceAndRepairsError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(UpdateIsServiceAndRepairsError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$UpdateIsServiceAndRepairsError
    implements UpdateIsServiceAndRepairsError {
  const _$UpdateIsServiceAndRepairsError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'UpdateIsServiceAndRepairs.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateIsServiceAndRepairsError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $UpdateIsServiceAndRepairsErrorCopyWith<UpdateIsServiceAndRepairsError>
      get copyWith => _$UpdateIsServiceAndRepairsErrorCopyWithImpl<
          UpdateIsServiceAndRepairsError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isServiceAndRepairs), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isServiceAndRepairs), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsServiceAndRepairs$ value), {
    @required Result successful(UpdateIsServiceAndRepairsSuccessful value),
    @required Result error(UpdateIsServiceAndRepairsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsServiceAndRepairs$ value), {
    Result successful(UpdateIsServiceAndRepairsSuccessful value),
    Result error(UpdateIsServiceAndRepairsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateIsServiceAndRepairsError
    implements UpdateIsServiceAndRepairs, ErrorAction {
  const factory UpdateIsServiceAndRepairsError(Object error) =
      _$UpdateIsServiceAndRepairsError;

  Object get error;
  $UpdateIsServiceAndRepairsErrorCopyWith<UpdateIsServiceAndRepairsError>
      get copyWith;
}

/// @nodoc
class _$UpdateIsTowingServiceTearOff {
  const _$UpdateIsTowingServiceTearOff();

// ignore: unused_element
  UpdateIsTowingService$ call(bool isTowingService) {
    return UpdateIsTowingService$(
      isTowingService,
    );
  }

// ignore: unused_element
  UpdateIsTowingServiceSuccessful successful() {
    return const UpdateIsTowingServiceSuccessful();
  }

// ignore: unused_element
  UpdateIsTowingServiceError error(Object error) {
    return UpdateIsTowingServiceError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateIsTowingService = _$UpdateIsTowingServiceTearOff();

/// @nodoc
mixin _$UpdateIsTowingService {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isTowingService), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isTowingService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsTowingService$ value), {
    @required Result successful(UpdateIsTowingServiceSuccessful value),
    @required Result error(UpdateIsTowingServiceError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsTowingService$ value), {
    Result successful(UpdateIsTowingServiceSuccessful value),
    Result error(UpdateIsTowingServiceError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UpdateIsTowingServiceCopyWith<$Res> {
  factory $UpdateIsTowingServiceCopyWith(UpdateIsTowingService value,
          $Res Function(UpdateIsTowingService) then) =
      _$UpdateIsTowingServiceCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateIsTowingServiceCopyWithImpl<$Res>
    implements $UpdateIsTowingServiceCopyWith<$Res> {
  _$UpdateIsTowingServiceCopyWithImpl(this._value, this._then);

  final UpdateIsTowingService _value;
  // ignore: unused_field
  final $Res Function(UpdateIsTowingService) _then;
}

/// @nodoc
abstract class $UpdateIsTowingService$CopyWith<$Res> {
  factory $UpdateIsTowingService$CopyWith(UpdateIsTowingService$ value,
          $Res Function(UpdateIsTowingService$) then) =
      _$UpdateIsTowingService$CopyWithImpl<$Res>;
  $Res call({bool isTowingService});
}

/// @nodoc
class _$UpdateIsTowingService$CopyWithImpl<$Res>
    extends _$UpdateIsTowingServiceCopyWithImpl<$Res>
    implements $UpdateIsTowingService$CopyWith<$Res> {
  _$UpdateIsTowingService$CopyWithImpl(UpdateIsTowingService$ _value,
      $Res Function(UpdateIsTowingService$) _then)
      : super(_value, (v) => _then(v as UpdateIsTowingService$));

  @override
  UpdateIsTowingService$ get _value => super._value as UpdateIsTowingService$;

  @override
  $Res call({
    Object isTowingService = freezed,
  }) {
    return _then(UpdateIsTowingService$(
      isTowingService == freezed
          ? _value.isTowingService
          : isTowingService as bool,
    ));
  }
}

/// @nodoc
class _$UpdateIsTowingService$ implements UpdateIsTowingService$ {
  const _$UpdateIsTowingService$(this.isTowingService)
      : assert(isTowingService != null);

  @override
  final bool isTowingService;

  @override
  String toString() {
    return 'UpdateIsTowingService(isTowingService: $isTowingService)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateIsTowingService$ &&
            (identical(other.isTowingService, isTowingService) ||
                const DeepCollectionEquality()
                    .equals(other.isTowingService, isTowingService)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isTowingService);

  @override
  $UpdateIsTowingService$CopyWith<UpdateIsTowingService$> get copyWith =>
      _$UpdateIsTowingService$CopyWithImpl<UpdateIsTowingService$>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isTowingService), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(isTowingService);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isTowingService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(isTowingService);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsTowingService$ value), {
    @required Result successful(UpdateIsTowingServiceSuccessful value),
    @required Result error(UpdateIsTowingServiceError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsTowingService$ value), {
    Result successful(UpdateIsTowingServiceSuccessful value),
    Result error(UpdateIsTowingServiceError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateIsTowingService$ implements UpdateIsTowingService {
  const factory UpdateIsTowingService$(bool isTowingService) =
      _$UpdateIsTowingService$;

  bool get isTowingService;
  $UpdateIsTowingService$CopyWith<UpdateIsTowingService$> get copyWith;
}

/// @nodoc
abstract class $UpdateIsTowingServiceSuccessfulCopyWith<$Res> {
  factory $UpdateIsTowingServiceSuccessfulCopyWith(
          UpdateIsTowingServiceSuccessful value,
          $Res Function(UpdateIsTowingServiceSuccessful) then) =
      _$UpdateIsTowingServiceSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateIsTowingServiceSuccessfulCopyWithImpl<$Res>
    extends _$UpdateIsTowingServiceCopyWithImpl<$Res>
    implements $UpdateIsTowingServiceSuccessfulCopyWith<$Res> {
  _$UpdateIsTowingServiceSuccessfulCopyWithImpl(
      UpdateIsTowingServiceSuccessful _value,
      $Res Function(UpdateIsTowingServiceSuccessful) _then)
      : super(_value, (v) => _then(v as UpdateIsTowingServiceSuccessful));

  @override
  UpdateIsTowingServiceSuccessful get _value =>
      super._value as UpdateIsTowingServiceSuccessful;
}

/// @nodoc
class _$UpdateIsTowingServiceSuccessful
    implements UpdateIsTowingServiceSuccessful {
  const _$UpdateIsTowingServiceSuccessful();

  @override
  String toString() {
    return 'UpdateIsTowingService.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UpdateIsTowingServiceSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isTowingService), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isTowingService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsTowingService$ value), {
    @required Result successful(UpdateIsTowingServiceSuccessful value),
    @required Result error(UpdateIsTowingServiceError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsTowingService$ value), {
    Result successful(UpdateIsTowingServiceSuccessful value),
    Result error(UpdateIsTowingServiceError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateIsTowingServiceSuccessful
    implements UpdateIsTowingService {
  const factory UpdateIsTowingServiceSuccessful() =
      _$UpdateIsTowingServiceSuccessful;
}

/// @nodoc
abstract class $UpdateIsTowingServiceErrorCopyWith<$Res> {
  factory $UpdateIsTowingServiceErrorCopyWith(UpdateIsTowingServiceError value,
          $Res Function(UpdateIsTowingServiceError) then) =
      _$UpdateIsTowingServiceErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$UpdateIsTowingServiceErrorCopyWithImpl<$Res>
    extends _$UpdateIsTowingServiceCopyWithImpl<$Res>
    implements $UpdateIsTowingServiceErrorCopyWith<$Res> {
  _$UpdateIsTowingServiceErrorCopyWithImpl(UpdateIsTowingServiceError _value,
      $Res Function(UpdateIsTowingServiceError) _then)
      : super(_value, (v) => _then(v as UpdateIsTowingServiceError));

  @override
  UpdateIsTowingServiceError get _value =>
      super._value as UpdateIsTowingServiceError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(UpdateIsTowingServiceError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$UpdateIsTowingServiceError implements UpdateIsTowingServiceError {
  const _$UpdateIsTowingServiceError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'UpdateIsTowingService.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateIsTowingServiceError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $UpdateIsTowingServiceErrorCopyWith<UpdateIsTowingServiceError>
      get copyWith =>
          _$UpdateIsTowingServiceErrorCopyWithImpl<UpdateIsTowingServiceError>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isTowingService), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isTowingService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsTowingService$ value), {
    @required Result successful(UpdateIsTowingServiceSuccessful value),
    @required Result error(UpdateIsTowingServiceError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsTowingService$ value), {
    Result successful(UpdateIsTowingServiceSuccessful value),
    Result error(UpdateIsTowingServiceError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateIsTowingServiceError
    implements UpdateIsTowingService, ErrorAction {
  const factory UpdateIsTowingServiceError(Object error) =
      _$UpdateIsTowingServiceError;

  Object get error;
  $UpdateIsTowingServiceErrorCopyWith<UpdateIsTowingServiceError> get copyWith;
}

/// @nodoc
class _$UpdateIsTuningServiceTearOff {
  const _$UpdateIsTuningServiceTearOff();

// ignore: unused_element
  UpdateIsTuningService$ call(bool isTuningService) {
    return UpdateIsTuningService$(
      isTuningService,
    );
  }

// ignore: unused_element
  UpdateIsTuningServiceSuccessful successful() {
    return const UpdateIsTuningServiceSuccessful();
  }

// ignore: unused_element
  UpdateIsTuningServiceError error(Object error) {
    return UpdateIsTuningServiceError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateIsTuningService = _$UpdateIsTuningServiceTearOff();

/// @nodoc
mixin _$UpdateIsTuningService {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isTuningService), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isTuningService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsTuningService$ value), {
    @required Result successful(UpdateIsTuningServiceSuccessful value),
    @required Result error(UpdateIsTuningServiceError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsTuningService$ value), {
    Result successful(UpdateIsTuningServiceSuccessful value),
    Result error(UpdateIsTuningServiceError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UpdateIsTuningServiceCopyWith<$Res> {
  factory $UpdateIsTuningServiceCopyWith(UpdateIsTuningService value,
          $Res Function(UpdateIsTuningService) then) =
      _$UpdateIsTuningServiceCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateIsTuningServiceCopyWithImpl<$Res>
    implements $UpdateIsTuningServiceCopyWith<$Res> {
  _$UpdateIsTuningServiceCopyWithImpl(this._value, this._then);

  final UpdateIsTuningService _value;
  // ignore: unused_field
  final $Res Function(UpdateIsTuningService) _then;
}

/// @nodoc
abstract class $UpdateIsTuningService$CopyWith<$Res> {
  factory $UpdateIsTuningService$CopyWith(UpdateIsTuningService$ value,
          $Res Function(UpdateIsTuningService$) then) =
      _$UpdateIsTuningService$CopyWithImpl<$Res>;
  $Res call({bool isTuningService});
}

/// @nodoc
class _$UpdateIsTuningService$CopyWithImpl<$Res>
    extends _$UpdateIsTuningServiceCopyWithImpl<$Res>
    implements $UpdateIsTuningService$CopyWith<$Res> {
  _$UpdateIsTuningService$CopyWithImpl(UpdateIsTuningService$ _value,
      $Res Function(UpdateIsTuningService$) _then)
      : super(_value, (v) => _then(v as UpdateIsTuningService$));

  @override
  UpdateIsTuningService$ get _value => super._value as UpdateIsTuningService$;

  @override
  $Res call({
    Object isTuningService = freezed,
  }) {
    return _then(UpdateIsTuningService$(
      isTuningService == freezed
          ? _value.isTuningService
          : isTuningService as bool,
    ));
  }
}

/// @nodoc
class _$UpdateIsTuningService$ implements UpdateIsTuningService$ {
  const _$UpdateIsTuningService$(this.isTuningService)
      : assert(isTuningService != null);

  @override
  final bool isTuningService;

  @override
  String toString() {
    return 'UpdateIsTuningService(isTuningService: $isTuningService)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateIsTuningService$ &&
            (identical(other.isTuningService, isTuningService) ||
                const DeepCollectionEquality()
                    .equals(other.isTuningService, isTuningService)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isTuningService);

  @override
  $UpdateIsTuningService$CopyWith<UpdateIsTuningService$> get copyWith =>
      _$UpdateIsTuningService$CopyWithImpl<UpdateIsTuningService$>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isTuningService), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(isTuningService);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isTuningService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(isTuningService);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsTuningService$ value), {
    @required Result successful(UpdateIsTuningServiceSuccessful value),
    @required Result error(UpdateIsTuningServiceError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsTuningService$ value), {
    Result successful(UpdateIsTuningServiceSuccessful value),
    Result error(UpdateIsTuningServiceError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateIsTuningService$ implements UpdateIsTuningService {
  const factory UpdateIsTuningService$(bool isTuningService) =
      _$UpdateIsTuningService$;

  bool get isTuningService;
  $UpdateIsTuningService$CopyWith<UpdateIsTuningService$> get copyWith;
}

/// @nodoc
abstract class $UpdateIsTuningServiceSuccessfulCopyWith<$Res> {
  factory $UpdateIsTuningServiceSuccessfulCopyWith(
          UpdateIsTuningServiceSuccessful value,
          $Res Function(UpdateIsTuningServiceSuccessful) then) =
      _$UpdateIsTuningServiceSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateIsTuningServiceSuccessfulCopyWithImpl<$Res>
    extends _$UpdateIsTuningServiceCopyWithImpl<$Res>
    implements $UpdateIsTuningServiceSuccessfulCopyWith<$Res> {
  _$UpdateIsTuningServiceSuccessfulCopyWithImpl(
      UpdateIsTuningServiceSuccessful _value,
      $Res Function(UpdateIsTuningServiceSuccessful) _then)
      : super(_value, (v) => _then(v as UpdateIsTuningServiceSuccessful));

  @override
  UpdateIsTuningServiceSuccessful get _value =>
      super._value as UpdateIsTuningServiceSuccessful;
}

/// @nodoc
class _$UpdateIsTuningServiceSuccessful
    implements UpdateIsTuningServiceSuccessful {
  const _$UpdateIsTuningServiceSuccessful();

  @override
  String toString() {
    return 'UpdateIsTuningService.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UpdateIsTuningServiceSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isTuningService), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isTuningService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsTuningService$ value), {
    @required Result successful(UpdateIsTuningServiceSuccessful value),
    @required Result error(UpdateIsTuningServiceError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsTuningService$ value), {
    Result successful(UpdateIsTuningServiceSuccessful value),
    Result error(UpdateIsTuningServiceError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateIsTuningServiceSuccessful
    implements UpdateIsTuningService {
  const factory UpdateIsTuningServiceSuccessful() =
      _$UpdateIsTuningServiceSuccessful;
}

/// @nodoc
abstract class $UpdateIsTuningServiceErrorCopyWith<$Res> {
  factory $UpdateIsTuningServiceErrorCopyWith(UpdateIsTuningServiceError value,
          $Res Function(UpdateIsTuningServiceError) then) =
      _$UpdateIsTuningServiceErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$UpdateIsTuningServiceErrorCopyWithImpl<$Res>
    extends _$UpdateIsTuningServiceCopyWithImpl<$Res>
    implements $UpdateIsTuningServiceErrorCopyWith<$Res> {
  _$UpdateIsTuningServiceErrorCopyWithImpl(UpdateIsTuningServiceError _value,
      $Res Function(UpdateIsTuningServiceError) _then)
      : super(_value, (v) => _then(v as UpdateIsTuningServiceError));

  @override
  UpdateIsTuningServiceError get _value =>
      super._value as UpdateIsTuningServiceError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(UpdateIsTuningServiceError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$UpdateIsTuningServiceError implements UpdateIsTuningServiceError {
  const _$UpdateIsTuningServiceError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'UpdateIsTuningService.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateIsTuningServiceError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $UpdateIsTuningServiceErrorCopyWith<UpdateIsTuningServiceError>
      get copyWith =>
          _$UpdateIsTuningServiceErrorCopyWithImpl<UpdateIsTuningServiceError>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isTuningService), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isTuningService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsTuningService$ value), {
    @required Result successful(UpdateIsTuningServiceSuccessful value),
    @required Result error(UpdateIsTuningServiceError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsTuningService$ value), {
    Result successful(UpdateIsTuningServiceSuccessful value),
    Result error(UpdateIsTuningServiceError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateIsTuningServiceError
    implements UpdateIsTuningService, ErrorAction {
  const factory UpdateIsTuningServiceError(Object error) =
      _$UpdateIsTuningServiceError;

  Object get error;
  $UpdateIsTuningServiceErrorCopyWith<UpdateIsTuningServiceError> get copyWith;
}

/// @nodoc
class _$UpdateIsVulcanisingServiceTearOff {
  const _$UpdateIsVulcanisingServiceTearOff();

// ignore: unused_element
  UpdateIsVulcanisingService$ call(bool isVulcanisingService) {
    return UpdateIsVulcanisingService$(
      isVulcanisingService,
    );
  }

// ignore: unused_element
  UpdateIsVulcanisingServiceSuccessful successful() {
    return const UpdateIsVulcanisingServiceSuccessful();
  }

// ignore: unused_element
  UpdateIsVulcanisingServiceError error(Object error) {
    return UpdateIsVulcanisingServiceError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateIsVulcanisingService = _$UpdateIsVulcanisingServiceTearOff();

/// @nodoc
mixin _$UpdateIsVulcanisingService {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isVulcanisingService), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isVulcanisingService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsVulcanisingService$ value), {
    @required Result successful(UpdateIsVulcanisingServiceSuccessful value),
    @required Result error(UpdateIsVulcanisingServiceError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsVulcanisingService$ value), {
    Result successful(UpdateIsVulcanisingServiceSuccessful value),
    Result error(UpdateIsVulcanisingServiceError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UpdateIsVulcanisingServiceCopyWith<$Res> {
  factory $UpdateIsVulcanisingServiceCopyWith(UpdateIsVulcanisingService value,
          $Res Function(UpdateIsVulcanisingService) then) =
      _$UpdateIsVulcanisingServiceCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateIsVulcanisingServiceCopyWithImpl<$Res>
    implements $UpdateIsVulcanisingServiceCopyWith<$Res> {
  _$UpdateIsVulcanisingServiceCopyWithImpl(this._value, this._then);

  final UpdateIsVulcanisingService _value;
  // ignore: unused_field
  final $Res Function(UpdateIsVulcanisingService) _then;
}

/// @nodoc
abstract class $UpdateIsVulcanisingService$CopyWith<$Res> {
  factory $UpdateIsVulcanisingService$CopyWith(
          UpdateIsVulcanisingService$ value,
          $Res Function(UpdateIsVulcanisingService$) then) =
      _$UpdateIsVulcanisingService$CopyWithImpl<$Res>;
  $Res call({bool isVulcanisingService});
}

/// @nodoc
class _$UpdateIsVulcanisingService$CopyWithImpl<$Res>
    extends _$UpdateIsVulcanisingServiceCopyWithImpl<$Res>
    implements $UpdateIsVulcanisingService$CopyWith<$Res> {
  _$UpdateIsVulcanisingService$CopyWithImpl(UpdateIsVulcanisingService$ _value,
      $Res Function(UpdateIsVulcanisingService$) _then)
      : super(_value, (v) => _then(v as UpdateIsVulcanisingService$));

  @override
  UpdateIsVulcanisingService$ get _value =>
      super._value as UpdateIsVulcanisingService$;

  @override
  $Res call({
    Object isVulcanisingService = freezed,
  }) {
    return _then(UpdateIsVulcanisingService$(
      isVulcanisingService == freezed
          ? _value.isVulcanisingService
          : isVulcanisingService as bool,
    ));
  }
}

/// @nodoc
class _$UpdateIsVulcanisingService$ implements UpdateIsVulcanisingService$ {
  const _$UpdateIsVulcanisingService$(this.isVulcanisingService)
      : assert(isVulcanisingService != null);

  @override
  final bool isVulcanisingService;

  @override
  String toString() {
    return 'UpdateIsVulcanisingService(isVulcanisingService: $isVulcanisingService)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateIsVulcanisingService$ &&
            (identical(other.isVulcanisingService, isVulcanisingService) ||
                const DeepCollectionEquality()
                    .equals(other.isVulcanisingService, isVulcanisingService)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isVulcanisingService);

  @override
  $UpdateIsVulcanisingService$CopyWith<UpdateIsVulcanisingService$>
      get copyWith => _$UpdateIsVulcanisingService$CopyWithImpl<
          UpdateIsVulcanisingService$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isVulcanisingService), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(isVulcanisingService);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isVulcanisingService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(isVulcanisingService);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsVulcanisingService$ value), {
    @required Result successful(UpdateIsVulcanisingServiceSuccessful value),
    @required Result error(UpdateIsVulcanisingServiceError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsVulcanisingService$ value), {
    Result successful(UpdateIsVulcanisingServiceSuccessful value),
    Result error(UpdateIsVulcanisingServiceError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateIsVulcanisingService$
    implements UpdateIsVulcanisingService {
  const factory UpdateIsVulcanisingService$(bool isVulcanisingService) =
      _$UpdateIsVulcanisingService$;

  bool get isVulcanisingService;
  $UpdateIsVulcanisingService$CopyWith<UpdateIsVulcanisingService$>
      get copyWith;
}

/// @nodoc
abstract class $UpdateIsVulcanisingServiceSuccessfulCopyWith<$Res> {
  factory $UpdateIsVulcanisingServiceSuccessfulCopyWith(
          UpdateIsVulcanisingServiceSuccessful value,
          $Res Function(UpdateIsVulcanisingServiceSuccessful) then) =
      _$UpdateIsVulcanisingServiceSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateIsVulcanisingServiceSuccessfulCopyWithImpl<$Res>
    extends _$UpdateIsVulcanisingServiceCopyWithImpl<$Res>
    implements $UpdateIsVulcanisingServiceSuccessfulCopyWith<$Res> {
  _$UpdateIsVulcanisingServiceSuccessfulCopyWithImpl(
      UpdateIsVulcanisingServiceSuccessful _value,
      $Res Function(UpdateIsVulcanisingServiceSuccessful) _then)
      : super(_value, (v) => _then(v as UpdateIsVulcanisingServiceSuccessful));

  @override
  UpdateIsVulcanisingServiceSuccessful get _value =>
      super._value as UpdateIsVulcanisingServiceSuccessful;
}

/// @nodoc
class _$UpdateIsVulcanisingServiceSuccessful
    implements UpdateIsVulcanisingServiceSuccessful {
  const _$UpdateIsVulcanisingServiceSuccessful();

  @override
  String toString() {
    return 'UpdateIsVulcanisingService.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateIsVulcanisingServiceSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isVulcanisingService), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isVulcanisingService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsVulcanisingService$ value), {
    @required Result successful(UpdateIsVulcanisingServiceSuccessful value),
    @required Result error(UpdateIsVulcanisingServiceError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsVulcanisingService$ value), {
    Result successful(UpdateIsVulcanisingServiceSuccessful value),
    Result error(UpdateIsVulcanisingServiceError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateIsVulcanisingServiceSuccessful
    implements UpdateIsVulcanisingService {
  const factory UpdateIsVulcanisingServiceSuccessful() =
      _$UpdateIsVulcanisingServiceSuccessful;
}

/// @nodoc
abstract class $UpdateIsVulcanisingServiceErrorCopyWith<$Res> {
  factory $UpdateIsVulcanisingServiceErrorCopyWith(
          UpdateIsVulcanisingServiceError value,
          $Res Function(UpdateIsVulcanisingServiceError) then) =
      _$UpdateIsVulcanisingServiceErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$UpdateIsVulcanisingServiceErrorCopyWithImpl<$Res>
    extends _$UpdateIsVulcanisingServiceCopyWithImpl<$Res>
    implements $UpdateIsVulcanisingServiceErrorCopyWith<$Res> {
  _$UpdateIsVulcanisingServiceErrorCopyWithImpl(
      UpdateIsVulcanisingServiceError _value,
      $Res Function(UpdateIsVulcanisingServiceError) _then)
      : super(_value, (v) => _then(v as UpdateIsVulcanisingServiceError));

  @override
  UpdateIsVulcanisingServiceError get _value =>
      super._value as UpdateIsVulcanisingServiceError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(UpdateIsVulcanisingServiceError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$UpdateIsVulcanisingServiceError
    implements UpdateIsVulcanisingServiceError {
  const _$UpdateIsVulcanisingServiceError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'UpdateIsVulcanisingService.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateIsVulcanisingServiceError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $UpdateIsVulcanisingServiceErrorCopyWith<UpdateIsVulcanisingServiceError>
      get copyWith => _$UpdateIsVulcanisingServiceErrorCopyWithImpl<
          UpdateIsVulcanisingServiceError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isVulcanisingService), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isVulcanisingService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsVulcanisingService$ value), {
    @required Result successful(UpdateIsVulcanisingServiceSuccessful value),
    @required Result error(UpdateIsVulcanisingServiceError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsVulcanisingService$ value), {
    Result successful(UpdateIsVulcanisingServiceSuccessful value),
    Result error(UpdateIsVulcanisingServiceError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateIsVulcanisingServiceError
    implements UpdateIsVulcanisingService, ErrorAction {
  const factory UpdateIsVulcanisingServiceError(Object error) =
      _$UpdateIsVulcanisingServiceError;

  Object get error;
  $UpdateIsVulcanisingServiceErrorCopyWith<UpdateIsVulcanisingServiceError>
      get copyWith;
}

/// @nodoc
class _$UpdateIsWrappingServiceTearOff {
  const _$UpdateIsWrappingServiceTearOff();

// ignore: unused_element
  UpdateIsWrappingService$ call(bool isWrappingService) {
    return UpdateIsWrappingService$(
      isWrappingService,
    );
  }

// ignore: unused_element
  UpdateIsWrappingServiceSuccessful successful() {
    return const UpdateIsWrappingServiceSuccessful();
  }

// ignore: unused_element
  UpdateIsWrappingServiceError error(Object error) {
    return UpdateIsWrappingServiceError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateIsWrappingService = _$UpdateIsWrappingServiceTearOff();

/// @nodoc
mixin _$UpdateIsWrappingService {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isWrappingService), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isWrappingService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsWrappingService$ value), {
    @required Result successful(UpdateIsWrappingServiceSuccessful value),
    @required Result error(UpdateIsWrappingServiceError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsWrappingService$ value), {
    Result successful(UpdateIsWrappingServiceSuccessful value),
    Result error(UpdateIsWrappingServiceError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UpdateIsWrappingServiceCopyWith<$Res> {
  factory $UpdateIsWrappingServiceCopyWith(UpdateIsWrappingService value,
          $Res Function(UpdateIsWrappingService) then) =
      _$UpdateIsWrappingServiceCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateIsWrappingServiceCopyWithImpl<$Res>
    implements $UpdateIsWrappingServiceCopyWith<$Res> {
  _$UpdateIsWrappingServiceCopyWithImpl(this._value, this._then);

  final UpdateIsWrappingService _value;
  // ignore: unused_field
  final $Res Function(UpdateIsWrappingService) _then;
}

/// @nodoc
abstract class $UpdateIsWrappingService$CopyWith<$Res> {
  factory $UpdateIsWrappingService$CopyWith(UpdateIsWrappingService$ value,
          $Res Function(UpdateIsWrappingService$) then) =
      _$UpdateIsWrappingService$CopyWithImpl<$Res>;
  $Res call({bool isWrappingService});
}

/// @nodoc
class _$UpdateIsWrappingService$CopyWithImpl<$Res>
    extends _$UpdateIsWrappingServiceCopyWithImpl<$Res>
    implements $UpdateIsWrappingService$CopyWith<$Res> {
  _$UpdateIsWrappingService$CopyWithImpl(UpdateIsWrappingService$ _value,
      $Res Function(UpdateIsWrappingService$) _then)
      : super(_value, (v) => _then(v as UpdateIsWrappingService$));

  @override
  UpdateIsWrappingService$ get _value =>
      super._value as UpdateIsWrappingService$;

  @override
  $Res call({
    Object isWrappingService = freezed,
  }) {
    return _then(UpdateIsWrappingService$(
      isWrappingService == freezed
          ? _value.isWrappingService
          : isWrappingService as bool,
    ));
  }
}

/// @nodoc
class _$UpdateIsWrappingService$ implements UpdateIsWrappingService$ {
  const _$UpdateIsWrappingService$(this.isWrappingService)
      : assert(isWrappingService != null);

  @override
  final bool isWrappingService;

  @override
  String toString() {
    return 'UpdateIsWrappingService(isWrappingService: $isWrappingService)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateIsWrappingService$ &&
            (identical(other.isWrappingService, isWrappingService) ||
                const DeepCollectionEquality()
                    .equals(other.isWrappingService, isWrappingService)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isWrappingService);

  @override
  $UpdateIsWrappingService$CopyWith<UpdateIsWrappingService$> get copyWith =>
      _$UpdateIsWrappingService$CopyWithImpl<UpdateIsWrappingService$>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isWrappingService), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(isWrappingService);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isWrappingService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(isWrappingService);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsWrappingService$ value), {
    @required Result successful(UpdateIsWrappingServiceSuccessful value),
    @required Result error(UpdateIsWrappingServiceError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsWrappingService$ value), {
    Result successful(UpdateIsWrappingServiceSuccessful value),
    Result error(UpdateIsWrappingServiceError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateIsWrappingService$ implements UpdateIsWrappingService {
  const factory UpdateIsWrappingService$(bool isWrappingService) =
      _$UpdateIsWrappingService$;

  bool get isWrappingService;
  $UpdateIsWrappingService$CopyWith<UpdateIsWrappingService$> get copyWith;
}

/// @nodoc
abstract class $UpdateIsWrappingServiceSuccessfulCopyWith<$Res> {
  factory $UpdateIsWrappingServiceSuccessfulCopyWith(
          UpdateIsWrappingServiceSuccessful value,
          $Res Function(UpdateIsWrappingServiceSuccessful) then) =
      _$UpdateIsWrappingServiceSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateIsWrappingServiceSuccessfulCopyWithImpl<$Res>
    extends _$UpdateIsWrappingServiceCopyWithImpl<$Res>
    implements $UpdateIsWrappingServiceSuccessfulCopyWith<$Res> {
  _$UpdateIsWrappingServiceSuccessfulCopyWithImpl(
      UpdateIsWrappingServiceSuccessful _value,
      $Res Function(UpdateIsWrappingServiceSuccessful) _then)
      : super(_value, (v) => _then(v as UpdateIsWrappingServiceSuccessful));

  @override
  UpdateIsWrappingServiceSuccessful get _value =>
      super._value as UpdateIsWrappingServiceSuccessful;
}

/// @nodoc
class _$UpdateIsWrappingServiceSuccessful
    implements UpdateIsWrappingServiceSuccessful {
  const _$UpdateIsWrappingServiceSuccessful();

  @override
  String toString() {
    return 'UpdateIsWrappingService.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateIsWrappingServiceSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isWrappingService), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isWrappingService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsWrappingService$ value), {
    @required Result successful(UpdateIsWrappingServiceSuccessful value),
    @required Result error(UpdateIsWrappingServiceError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsWrappingService$ value), {
    Result successful(UpdateIsWrappingServiceSuccessful value),
    Result error(UpdateIsWrappingServiceError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateIsWrappingServiceSuccessful
    implements UpdateIsWrappingService {
  const factory UpdateIsWrappingServiceSuccessful() =
      _$UpdateIsWrappingServiceSuccessful;
}

/// @nodoc
abstract class $UpdateIsWrappingServiceErrorCopyWith<$Res> {
  factory $UpdateIsWrappingServiceErrorCopyWith(
          UpdateIsWrappingServiceError value,
          $Res Function(UpdateIsWrappingServiceError) then) =
      _$UpdateIsWrappingServiceErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$UpdateIsWrappingServiceErrorCopyWithImpl<$Res>
    extends _$UpdateIsWrappingServiceCopyWithImpl<$Res>
    implements $UpdateIsWrappingServiceErrorCopyWith<$Res> {
  _$UpdateIsWrappingServiceErrorCopyWithImpl(
      UpdateIsWrappingServiceError _value,
      $Res Function(UpdateIsWrappingServiceError) _then)
      : super(_value, (v) => _then(v as UpdateIsWrappingServiceError));

  @override
  UpdateIsWrappingServiceError get _value =>
      super._value as UpdateIsWrappingServiceError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(UpdateIsWrappingServiceError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$UpdateIsWrappingServiceError implements UpdateIsWrappingServiceError {
  const _$UpdateIsWrappingServiceError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'UpdateIsWrappingService.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateIsWrappingServiceError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $UpdateIsWrappingServiceErrorCopyWith<UpdateIsWrappingServiceError>
      get copyWith => _$UpdateIsWrappingServiceErrorCopyWithImpl<
          UpdateIsWrappingServiceError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isWrappingService), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isWrappingService), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsWrappingService$ value), {
    @required Result successful(UpdateIsWrappingServiceSuccessful value),
    @required Result error(UpdateIsWrappingServiceError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsWrappingService$ value), {
    Result successful(UpdateIsWrappingServiceSuccessful value),
    Result error(UpdateIsWrappingServiceError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateIsWrappingServiceError
    implements UpdateIsWrappingService, ErrorAction {
  const factory UpdateIsWrappingServiceError(Object error) =
      _$UpdateIsWrappingServiceError;

  Object get error;
  $UpdateIsWrappingServiceErrorCopyWith<UpdateIsWrappingServiceError>
      get copyWith;
}

/// @nodoc
class _$UpdateServiceDescriptionTearOff {
  const _$UpdateServiceDescriptionTearOff();

// ignore: unused_element
  UpdateServiceDescription$ call(String serviceDescription) {
    return UpdateServiceDescription$(
      serviceDescription,
    );
  }

// ignore: unused_element
  UpdateServiceDescriptionSuccessful successful() {
    return const UpdateServiceDescriptionSuccessful();
  }

// ignore: unused_element
  UpdateServiceDescriptionError error(Object error) {
    return UpdateServiceDescriptionError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateServiceDescription = _$UpdateServiceDescriptionTearOff();

/// @nodoc
mixin _$UpdateServiceDescription {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String serviceDescription), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String serviceDescription), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateServiceDescription$ value), {
    @required Result successful(UpdateServiceDescriptionSuccessful value),
    @required Result error(UpdateServiceDescriptionError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateServiceDescription$ value), {
    Result successful(UpdateServiceDescriptionSuccessful value),
    Result error(UpdateServiceDescriptionError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UpdateServiceDescriptionCopyWith<$Res> {
  factory $UpdateServiceDescriptionCopyWith(UpdateServiceDescription value,
          $Res Function(UpdateServiceDescription) then) =
      _$UpdateServiceDescriptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateServiceDescriptionCopyWithImpl<$Res>
    implements $UpdateServiceDescriptionCopyWith<$Res> {
  _$UpdateServiceDescriptionCopyWithImpl(this._value, this._then);

  final UpdateServiceDescription _value;
  // ignore: unused_field
  final $Res Function(UpdateServiceDescription) _then;
}

/// @nodoc
abstract class $UpdateServiceDescription$CopyWith<$Res> {
  factory $UpdateServiceDescription$CopyWith(UpdateServiceDescription$ value,
          $Res Function(UpdateServiceDescription$) then) =
      _$UpdateServiceDescription$CopyWithImpl<$Res>;
  $Res call({String serviceDescription});
}

/// @nodoc
class _$UpdateServiceDescription$CopyWithImpl<$Res>
    extends _$UpdateServiceDescriptionCopyWithImpl<$Res>
    implements $UpdateServiceDescription$CopyWith<$Res> {
  _$UpdateServiceDescription$CopyWithImpl(UpdateServiceDescription$ _value,
      $Res Function(UpdateServiceDescription$) _then)
      : super(_value, (v) => _then(v as UpdateServiceDescription$));

  @override
  UpdateServiceDescription$ get _value =>
      super._value as UpdateServiceDescription$;

  @override
  $Res call({
    Object serviceDescription = freezed,
  }) {
    return _then(UpdateServiceDescription$(
      serviceDescription == freezed
          ? _value.serviceDescription
          : serviceDescription as String,
    ));
  }
}

/// @nodoc
class _$UpdateServiceDescription$ implements UpdateServiceDescription$ {
  const _$UpdateServiceDescription$(this.serviceDescription)
      : assert(serviceDescription != null);

  @override
  final String serviceDescription;

  @override
  String toString() {
    return 'UpdateServiceDescription(serviceDescription: $serviceDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateServiceDescription$ &&
            (identical(other.serviceDescription, serviceDescription) ||
                const DeepCollectionEquality()
                    .equals(other.serviceDescription, serviceDescription)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(serviceDescription);

  @override
  $UpdateServiceDescription$CopyWith<UpdateServiceDescription$> get copyWith =>
      _$UpdateServiceDescription$CopyWithImpl<UpdateServiceDescription$>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String serviceDescription), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(serviceDescription);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String serviceDescription), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(serviceDescription);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateServiceDescription$ value), {
    @required Result successful(UpdateServiceDescriptionSuccessful value),
    @required Result error(UpdateServiceDescriptionError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateServiceDescription$ value), {
    Result successful(UpdateServiceDescriptionSuccessful value),
    Result error(UpdateServiceDescriptionError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateServiceDescription$ implements UpdateServiceDescription {
  const factory UpdateServiceDescription$(String serviceDescription) =
      _$UpdateServiceDescription$;

  String get serviceDescription;
  $UpdateServiceDescription$CopyWith<UpdateServiceDescription$> get copyWith;
}

/// @nodoc
abstract class $UpdateServiceDescriptionSuccessfulCopyWith<$Res> {
  factory $UpdateServiceDescriptionSuccessfulCopyWith(
          UpdateServiceDescriptionSuccessful value,
          $Res Function(UpdateServiceDescriptionSuccessful) then) =
      _$UpdateServiceDescriptionSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateServiceDescriptionSuccessfulCopyWithImpl<$Res>
    extends _$UpdateServiceDescriptionCopyWithImpl<$Res>
    implements $UpdateServiceDescriptionSuccessfulCopyWith<$Res> {
  _$UpdateServiceDescriptionSuccessfulCopyWithImpl(
      UpdateServiceDescriptionSuccessful _value,
      $Res Function(UpdateServiceDescriptionSuccessful) _then)
      : super(_value, (v) => _then(v as UpdateServiceDescriptionSuccessful));

  @override
  UpdateServiceDescriptionSuccessful get _value =>
      super._value as UpdateServiceDescriptionSuccessful;
}

/// @nodoc
class _$UpdateServiceDescriptionSuccessful
    implements UpdateServiceDescriptionSuccessful {
  const _$UpdateServiceDescriptionSuccessful();

  @override
  String toString() {
    return 'UpdateServiceDescription.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateServiceDescriptionSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String serviceDescription), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String serviceDescription), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateServiceDescription$ value), {
    @required Result successful(UpdateServiceDescriptionSuccessful value),
    @required Result error(UpdateServiceDescriptionError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateServiceDescription$ value), {
    Result successful(UpdateServiceDescriptionSuccessful value),
    Result error(UpdateServiceDescriptionError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateServiceDescriptionSuccessful
    implements UpdateServiceDescription {
  const factory UpdateServiceDescriptionSuccessful() =
      _$UpdateServiceDescriptionSuccessful;
}

/// @nodoc
abstract class $UpdateServiceDescriptionErrorCopyWith<$Res> {
  factory $UpdateServiceDescriptionErrorCopyWith(
          UpdateServiceDescriptionError value,
          $Res Function(UpdateServiceDescriptionError) then) =
      _$UpdateServiceDescriptionErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$UpdateServiceDescriptionErrorCopyWithImpl<$Res>
    extends _$UpdateServiceDescriptionCopyWithImpl<$Res>
    implements $UpdateServiceDescriptionErrorCopyWith<$Res> {
  _$UpdateServiceDescriptionErrorCopyWithImpl(
      UpdateServiceDescriptionError _value,
      $Res Function(UpdateServiceDescriptionError) _then)
      : super(_value, (v) => _then(v as UpdateServiceDescriptionError));

  @override
  UpdateServiceDescriptionError get _value =>
      super._value as UpdateServiceDescriptionError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(UpdateServiceDescriptionError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$UpdateServiceDescriptionError implements UpdateServiceDescriptionError {
  const _$UpdateServiceDescriptionError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'UpdateServiceDescription.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateServiceDescriptionError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $UpdateServiceDescriptionErrorCopyWith<UpdateServiceDescriptionError>
      get copyWith => _$UpdateServiceDescriptionErrorCopyWithImpl<
          UpdateServiceDescriptionError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String serviceDescription), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String serviceDescription), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateServiceDescription$ value), {
    @required Result successful(UpdateServiceDescriptionSuccessful value),
    @required Result error(UpdateServiceDescriptionError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateServiceDescription$ value), {
    Result successful(UpdateServiceDescriptionSuccessful value),
    Result error(UpdateServiceDescriptionError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateServiceDescriptionError
    implements UpdateServiceDescription, ErrorAction {
  const factory UpdateServiceDescriptionError(Object error) =
      _$UpdateServiceDescriptionError;

  Object get error;
  $UpdateServiceDescriptionErrorCopyWith<UpdateServiceDescriptionError>
      get copyWith;
}

/// @nodoc
class _$UpdateMondayServiceHoursTearOff {
  const _$UpdateMondayServiceHoursTearOff();

// ignore: unused_element
  UpdateMondayServiceHours$ call(String mondayServiceHours) {
    return UpdateMondayServiceHours$(
      mondayServiceHours,
    );
  }

// ignore: unused_element
  UpdateMondayServiceHoursSuccessful successful() {
    return const UpdateMondayServiceHoursSuccessful();
  }

// ignore: unused_element
  UpdateMondayServiceHoursError error(Object error) {
    return UpdateMondayServiceHoursError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateMondayServiceHours = _$UpdateMondayServiceHoursTearOff();

/// @nodoc
mixin _$UpdateMondayServiceHours {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String mondayServiceHours), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String mondayServiceHours), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateMondayServiceHours$ value), {
    @required Result successful(UpdateMondayServiceHoursSuccessful value),
    @required Result error(UpdateMondayServiceHoursError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateMondayServiceHours$ value), {
    Result successful(UpdateMondayServiceHoursSuccessful value),
    Result error(UpdateMondayServiceHoursError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UpdateMondayServiceHoursCopyWith<$Res> {
  factory $UpdateMondayServiceHoursCopyWith(UpdateMondayServiceHours value,
          $Res Function(UpdateMondayServiceHours) then) =
      _$UpdateMondayServiceHoursCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateMondayServiceHoursCopyWithImpl<$Res>
    implements $UpdateMondayServiceHoursCopyWith<$Res> {
  _$UpdateMondayServiceHoursCopyWithImpl(this._value, this._then);

  final UpdateMondayServiceHours _value;
  // ignore: unused_field
  final $Res Function(UpdateMondayServiceHours) _then;
}

/// @nodoc
abstract class $UpdateMondayServiceHours$CopyWith<$Res> {
  factory $UpdateMondayServiceHours$CopyWith(UpdateMondayServiceHours$ value,
          $Res Function(UpdateMondayServiceHours$) then) =
      _$UpdateMondayServiceHours$CopyWithImpl<$Res>;
  $Res call({String mondayServiceHours});
}

/// @nodoc
class _$UpdateMondayServiceHours$CopyWithImpl<$Res>
    extends _$UpdateMondayServiceHoursCopyWithImpl<$Res>
    implements $UpdateMondayServiceHours$CopyWith<$Res> {
  _$UpdateMondayServiceHours$CopyWithImpl(UpdateMondayServiceHours$ _value,
      $Res Function(UpdateMondayServiceHours$) _then)
      : super(_value, (v) => _then(v as UpdateMondayServiceHours$));

  @override
  UpdateMondayServiceHours$ get _value =>
      super._value as UpdateMondayServiceHours$;

  @override
  $Res call({
    Object mondayServiceHours = freezed,
  }) {
    return _then(UpdateMondayServiceHours$(
      mondayServiceHours == freezed
          ? _value.mondayServiceHours
          : mondayServiceHours as String,
    ));
  }
}

/// @nodoc
class _$UpdateMondayServiceHours$ implements UpdateMondayServiceHours$ {
  const _$UpdateMondayServiceHours$(this.mondayServiceHours)
      : assert(mondayServiceHours != null);

  @override
  final String mondayServiceHours;

  @override
  String toString() {
    return 'UpdateMondayServiceHours(mondayServiceHours: $mondayServiceHours)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateMondayServiceHours$ &&
            (identical(other.mondayServiceHours, mondayServiceHours) ||
                const DeepCollectionEquality()
                    .equals(other.mondayServiceHours, mondayServiceHours)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(mondayServiceHours);

  @override
  $UpdateMondayServiceHours$CopyWith<UpdateMondayServiceHours$> get copyWith =>
      _$UpdateMondayServiceHours$CopyWithImpl<UpdateMondayServiceHours$>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String mondayServiceHours), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(mondayServiceHours);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String mondayServiceHours), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(mondayServiceHours);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateMondayServiceHours$ value), {
    @required Result successful(UpdateMondayServiceHoursSuccessful value),
    @required Result error(UpdateMondayServiceHoursError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateMondayServiceHours$ value), {
    Result successful(UpdateMondayServiceHoursSuccessful value),
    Result error(UpdateMondayServiceHoursError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateMondayServiceHours$ implements UpdateMondayServiceHours {
  const factory UpdateMondayServiceHours$(String mondayServiceHours) =
      _$UpdateMondayServiceHours$;

  String get mondayServiceHours;
  $UpdateMondayServiceHours$CopyWith<UpdateMondayServiceHours$> get copyWith;
}

/// @nodoc
abstract class $UpdateMondayServiceHoursSuccessfulCopyWith<$Res> {
  factory $UpdateMondayServiceHoursSuccessfulCopyWith(
          UpdateMondayServiceHoursSuccessful value,
          $Res Function(UpdateMondayServiceHoursSuccessful) then) =
      _$UpdateMondayServiceHoursSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateMondayServiceHoursSuccessfulCopyWithImpl<$Res>
    extends _$UpdateMondayServiceHoursCopyWithImpl<$Res>
    implements $UpdateMondayServiceHoursSuccessfulCopyWith<$Res> {
  _$UpdateMondayServiceHoursSuccessfulCopyWithImpl(
      UpdateMondayServiceHoursSuccessful _value,
      $Res Function(UpdateMondayServiceHoursSuccessful) _then)
      : super(_value, (v) => _then(v as UpdateMondayServiceHoursSuccessful));

  @override
  UpdateMondayServiceHoursSuccessful get _value =>
      super._value as UpdateMondayServiceHoursSuccessful;
}

/// @nodoc
class _$UpdateMondayServiceHoursSuccessful
    implements UpdateMondayServiceHoursSuccessful {
  const _$UpdateMondayServiceHoursSuccessful();

  @override
  String toString() {
    return 'UpdateMondayServiceHours.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateMondayServiceHoursSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String mondayServiceHours), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String mondayServiceHours), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateMondayServiceHours$ value), {
    @required Result successful(UpdateMondayServiceHoursSuccessful value),
    @required Result error(UpdateMondayServiceHoursError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateMondayServiceHours$ value), {
    Result successful(UpdateMondayServiceHoursSuccessful value),
    Result error(UpdateMondayServiceHoursError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateMondayServiceHoursSuccessful
    implements UpdateMondayServiceHours {
  const factory UpdateMondayServiceHoursSuccessful() =
      _$UpdateMondayServiceHoursSuccessful;
}

/// @nodoc
abstract class $UpdateMondayServiceHoursErrorCopyWith<$Res> {
  factory $UpdateMondayServiceHoursErrorCopyWith(
          UpdateMondayServiceHoursError value,
          $Res Function(UpdateMondayServiceHoursError) then) =
      _$UpdateMondayServiceHoursErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$UpdateMondayServiceHoursErrorCopyWithImpl<$Res>
    extends _$UpdateMondayServiceHoursCopyWithImpl<$Res>
    implements $UpdateMondayServiceHoursErrorCopyWith<$Res> {
  _$UpdateMondayServiceHoursErrorCopyWithImpl(
      UpdateMondayServiceHoursError _value,
      $Res Function(UpdateMondayServiceHoursError) _then)
      : super(_value, (v) => _then(v as UpdateMondayServiceHoursError));

  @override
  UpdateMondayServiceHoursError get _value =>
      super._value as UpdateMondayServiceHoursError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(UpdateMondayServiceHoursError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$UpdateMondayServiceHoursError implements UpdateMondayServiceHoursError {
  const _$UpdateMondayServiceHoursError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'UpdateMondayServiceHours.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateMondayServiceHoursError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $UpdateMondayServiceHoursErrorCopyWith<UpdateMondayServiceHoursError>
      get copyWith => _$UpdateMondayServiceHoursErrorCopyWithImpl<
          UpdateMondayServiceHoursError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String mondayServiceHours), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String mondayServiceHours), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateMondayServiceHours$ value), {
    @required Result successful(UpdateMondayServiceHoursSuccessful value),
    @required Result error(UpdateMondayServiceHoursError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateMondayServiceHours$ value), {
    Result successful(UpdateMondayServiceHoursSuccessful value),
    Result error(UpdateMondayServiceHoursError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateMondayServiceHoursError
    implements UpdateMondayServiceHours, ErrorAction {
  const factory UpdateMondayServiceHoursError(Object error) =
      _$UpdateMondayServiceHoursError;

  Object get error;
  $UpdateMondayServiceHoursErrorCopyWith<UpdateMondayServiceHoursError>
      get copyWith;
}

/// @nodoc
class _$UpdateTuesdayServiceHoursTearOff {
  const _$UpdateTuesdayServiceHoursTearOff();

// ignore: unused_element
  UpdateTuesdayServiceHours$ call(String tuesdayServiceHours) {
    return UpdateTuesdayServiceHours$(
      tuesdayServiceHours,
    );
  }

// ignore: unused_element
  UpdateTuesdayServiceHoursSuccessful successful() {
    return const UpdateTuesdayServiceHoursSuccessful();
  }

// ignore: unused_element
  UpdateTuesdayServiceHoursError error(Object error) {
    return UpdateTuesdayServiceHoursError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateTuesdayServiceHours = _$UpdateTuesdayServiceHoursTearOff();

/// @nodoc
mixin _$UpdateTuesdayServiceHours {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String tuesdayServiceHours), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String tuesdayServiceHours), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateTuesdayServiceHours$ value), {
    @required Result successful(UpdateTuesdayServiceHoursSuccessful value),
    @required Result error(UpdateTuesdayServiceHoursError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateTuesdayServiceHours$ value), {
    Result successful(UpdateTuesdayServiceHoursSuccessful value),
    Result error(UpdateTuesdayServiceHoursError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UpdateTuesdayServiceHoursCopyWith<$Res> {
  factory $UpdateTuesdayServiceHoursCopyWith(UpdateTuesdayServiceHours value,
          $Res Function(UpdateTuesdayServiceHours) then) =
      _$UpdateTuesdayServiceHoursCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateTuesdayServiceHoursCopyWithImpl<$Res>
    implements $UpdateTuesdayServiceHoursCopyWith<$Res> {
  _$UpdateTuesdayServiceHoursCopyWithImpl(this._value, this._then);

  final UpdateTuesdayServiceHours _value;
  // ignore: unused_field
  final $Res Function(UpdateTuesdayServiceHours) _then;
}

/// @nodoc
abstract class $UpdateTuesdayServiceHours$CopyWith<$Res> {
  factory $UpdateTuesdayServiceHours$CopyWith(UpdateTuesdayServiceHours$ value,
          $Res Function(UpdateTuesdayServiceHours$) then) =
      _$UpdateTuesdayServiceHours$CopyWithImpl<$Res>;
  $Res call({String tuesdayServiceHours});
}

/// @nodoc
class _$UpdateTuesdayServiceHours$CopyWithImpl<$Res>
    extends _$UpdateTuesdayServiceHoursCopyWithImpl<$Res>
    implements $UpdateTuesdayServiceHours$CopyWith<$Res> {
  _$UpdateTuesdayServiceHours$CopyWithImpl(UpdateTuesdayServiceHours$ _value,
      $Res Function(UpdateTuesdayServiceHours$) _then)
      : super(_value, (v) => _then(v as UpdateTuesdayServiceHours$));

  @override
  UpdateTuesdayServiceHours$ get _value =>
      super._value as UpdateTuesdayServiceHours$;

  @override
  $Res call({
    Object tuesdayServiceHours = freezed,
  }) {
    return _then(UpdateTuesdayServiceHours$(
      tuesdayServiceHours == freezed
          ? _value.tuesdayServiceHours
          : tuesdayServiceHours as String,
    ));
  }
}

/// @nodoc
class _$UpdateTuesdayServiceHours$ implements UpdateTuesdayServiceHours$ {
  const _$UpdateTuesdayServiceHours$(this.tuesdayServiceHours)
      : assert(tuesdayServiceHours != null);

  @override
  final String tuesdayServiceHours;

  @override
  String toString() {
    return 'UpdateTuesdayServiceHours(tuesdayServiceHours: $tuesdayServiceHours)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateTuesdayServiceHours$ &&
            (identical(other.tuesdayServiceHours, tuesdayServiceHours) ||
                const DeepCollectionEquality()
                    .equals(other.tuesdayServiceHours, tuesdayServiceHours)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(tuesdayServiceHours);

  @override
  $UpdateTuesdayServiceHours$CopyWith<UpdateTuesdayServiceHours$>
      get copyWith =>
          _$UpdateTuesdayServiceHours$CopyWithImpl<UpdateTuesdayServiceHours$>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String tuesdayServiceHours), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(tuesdayServiceHours);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String tuesdayServiceHours), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(tuesdayServiceHours);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateTuesdayServiceHours$ value), {
    @required Result successful(UpdateTuesdayServiceHoursSuccessful value),
    @required Result error(UpdateTuesdayServiceHoursError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateTuesdayServiceHours$ value), {
    Result successful(UpdateTuesdayServiceHoursSuccessful value),
    Result error(UpdateTuesdayServiceHoursError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateTuesdayServiceHours$ implements UpdateTuesdayServiceHours {
  const factory UpdateTuesdayServiceHours$(String tuesdayServiceHours) =
      _$UpdateTuesdayServiceHours$;

  String get tuesdayServiceHours;
  $UpdateTuesdayServiceHours$CopyWith<UpdateTuesdayServiceHours$> get copyWith;
}

/// @nodoc
abstract class $UpdateTuesdayServiceHoursSuccessfulCopyWith<$Res> {
  factory $UpdateTuesdayServiceHoursSuccessfulCopyWith(
          UpdateTuesdayServiceHoursSuccessful value,
          $Res Function(UpdateTuesdayServiceHoursSuccessful) then) =
      _$UpdateTuesdayServiceHoursSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateTuesdayServiceHoursSuccessfulCopyWithImpl<$Res>
    extends _$UpdateTuesdayServiceHoursCopyWithImpl<$Res>
    implements $UpdateTuesdayServiceHoursSuccessfulCopyWith<$Res> {
  _$UpdateTuesdayServiceHoursSuccessfulCopyWithImpl(
      UpdateTuesdayServiceHoursSuccessful _value,
      $Res Function(UpdateTuesdayServiceHoursSuccessful) _then)
      : super(_value, (v) => _then(v as UpdateTuesdayServiceHoursSuccessful));

  @override
  UpdateTuesdayServiceHoursSuccessful get _value =>
      super._value as UpdateTuesdayServiceHoursSuccessful;
}

/// @nodoc
class _$UpdateTuesdayServiceHoursSuccessful
    implements UpdateTuesdayServiceHoursSuccessful {
  const _$UpdateTuesdayServiceHoursSuccessful();

  @override
  String toString() {
    return 'UpdateTuesdayServiceHours.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateTuesdayServiceHoursSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String tuesdayServiceHours), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String tuesdayServiceHours), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateTuesdayServiceHours$ value), {
    @required Result successful(UpdateTuesdayServiceHoursSuccessful value),
    @required Result error(UpdateTuesdayServiceHoursError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateTuesdayServiceHours$ value), {
    Result successful(UpdateTuesdayServiceHoursSuccessful value),
    Result error(UpdateTuesdayServiceHoursError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateTuesdayServiceHoursSuccessful
    implements UpdateTuesdayServiceHours {
  const factory UpdateTuesdayServiceHoursSuccessful() =
      _$UpdateTuesdayServiceHoursSuccessful;
}

/// @nodoc
abstract class $UpdateTuesdayServiceHoursErrorCopyWith<$Res> {
  factory $UpdateTuesdayServiceHoursErrorCopyWith(
          UpdateTuesdayServiceHoursError value,
          $Res Function(UpdateTuesdayServiceHoursError) then) =
      _$UpdateTuesdayServiceHoursErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$UpdateTuesdayServiceHoursErrorCopyWithImpl<$Res>
    extends _$UpdateTuesdayServiceHoursCopyWithImpl<$Res>
    implements $UpdateTuesdayServiceHoursErrorCopyWith<$Res> {
  _$UpdateTuesdayServiceHoursErrorCopyWithImpl(
      UpdateTuesdayServiceHoursError _value,
      $Res Function(UpdateTuesdayServiceHoursError) _then)
      : super(_value, (v) => _then(v as UpdateTuesdayServiceHoursError));

  @override
  UpdateTuesdayServiceHoursError get _value =>
      super._value as UpdateTuesdayServiceHoursError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(UpdateTuesdayServiceHoursError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$UpdateTuesdayServiceHoursError
    implements UpdateTuesdayServiceHoursError {
  const _$UpdateTuesdayServiceHoursError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'UpdateTuesdayServiceHours.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateTuesdayServiceHoursError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $UpdateTuesdayServiceHoursErrorCopyWith<UpdateTuesdayServiceHoursError>
      get copyWith => _$UpdateTuesdayServiceHoursErrorCopyWithImpl<
          UpdateTuesdayServiceHoursError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String tuesdayServiceHours), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String tuesdayServiceHours), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateTuesdayServiceHours$ value), {
    @required Result successful(UpdateTuesdayServiceHoursSuccessful value),
    @required Result error(UpdateTuesdayServiceHoursError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateTuesdayServiceHours$ value), {
    Result successful(UpdateTuesdayServiceHoursSuccessful value),
    Result error(UpdateTuesdayServiceHoursError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateTuesdayServiceHoursError
    implements UpdateTuesdayServiceHours, ErrorAction {
  const factory UpdateTuesdayServiceHoursError(Object error) =
      _$UpdateTuesdayServiceHoursError;

  Object get error;
  $UpdateTuesdayServiceHoursErrorCopyWith<UpdateTuesdayServiceHoursError>
      get copyWith;
}

/// @nodoc
class _$UpdateWednesdayServiceHoursTearOff {
  const _$UpdateWednesdayServiceHoursTearOff();

// ignore: unused_element
  UpdateWednesdayServiceHours$ call(String wednesdayServiceHours) {
    return UpdateWednesdayServiceHours$(
      wednesdayServiceHours,
    );
  }

// ignore: unused_element
  UpdateWednesdayServiceHoursSuccessful successful() {
    return const UpdateWednesdayServiceHoursSuccessful();
  }

// ignore: unused_element
  UpdateWednesdayServiceHoursError error(Object error) {
    return UpdateWednesdayServiceHoursError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateWednesdayServiceHours = _$UpdateWednesdayServiceHoursTearOff();

/// @nodoc
mixin _$UpdateWednesdayServiceHours {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String wednesdayServiceHours), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String wednesdayServiceHours), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateWednesdayServiceHours$ value), {
    @required Result successful(UpdateWednesdayServiceHoursSuccessful value),
    @required Result error(UpdateWednesdayServiceHoursError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateWednesdayServiceHours$ value), {
    Result successful(UpdateWednesdayServiceHoursSuccessful value),
    Result error(UpdateWednesdayServiceHoursError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UpdateWednesdayServiceHoursCopyWith<$Res> {
  factory $UpdateWednesdayServiceHoursCopyWith(
          UpdateWednesdayServiceHours value,
          $Res Function(UpdateWednesdayServiceHours) then) =
      _$UpdateWednesdayServiceHoursCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateWednesdayServiceHoursCopyWithImpl<$Res>
    implements $UpdateWednesdayServiceHoursCopyWith<$Res> {
  _$UpdateWednesdayServiceHoursCopyWithImpl(this._value, this._then);

  final UpdateWednesdayServiceHours _value;
  // ignore: unused_field
  final $Res Function(UpdateWednesdayServiceHours) _then;
}

/// @nodoc
abstract class $UpdateWednesdayServiceHours$CopyWith<$Res> {
  factory $UpdateWednesdayServiceHours$CopyWith(
          UpdateWednesdayServiceHours$ value,
          $Res Function(UpdateWednesdayServiceHours$) then) =
      _$UpdateWednesdayServiceHours$CopyWithImpl<$Res>;
  $Res call({String wednesdayServiceHours});
}

/// @nodoc
class _$UpdateWednesdayServiceHours$CopyWithImpl<$Res>
    extends _$UpdateWednesdayServiceHoursCopyWithImpl<$Res>
    implements $UpdateWednesdayServiceHours$CopyWith<$Res> {
  _$UpdateWednesdayServiceHours$CopyWithImpl(
      UpdateWednesdayServiceHours$ _value,
      $Res Function(UpdateWednesdayServiceHours$) _then)
      : super(_value, (v) => _then(v as UpdateWednesdayServiceHours$));

  @override
  UpdateWednesdayServiceHours$ get _value =>
      super._value as UpdateWednesdayServiceHours$;

  @override
  $Res call({
    Object wednesdayServiceHours = freezed,
  }) {
    return _then(UpdateWednesdayServiceHours$(
      wednesdayServiceHours == freezed
          ? _value.wednesdayServiceHours
          : wednesdayServiceHours as String,
    ));
  }
}

/// @nodoc
class _$UpdateWednesdayServiceHours$ implements UpdateWednesdayServiceHours$ {
  const _$UpdateWednesdayServiceHours$(this.wednesdayServiceHours)
      : assert(wednesdayServiceHours != null);

  @override
  final String wednesdayServiceHours;

  @override
  String toString() {
    return 'UpdateWednesdayServiceHours(wednesdayServiceHours: $wednesdayServiceHours)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateWednesdayServiceHours$ &&
            (identical(other.wednesdayServiceHours, wednesdayServiceHours) ||
                const DeepCollectionEquality().equals(
                    other.wednesdayServiceHours, wednesdayServiceHours)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(wednesdayServiceHours);

  @override
  $UpdateWednesdayServiceHours$CopyWith<UpdateWednesdayServiceHours$>
      get copyWith => _$UpdateWednesdayServiceHours$CopyWithImpl<
          UpdateWednesdayServiceHours$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String wednesdayServiceHours), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(wednesdayServiceHours);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String wednesdayServiceHours), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(wednesdayServiceHours);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateWednesdayServiceHours$ value), {
    @required Result successful(UpdateWednesdayServiceHoursSuccessful value),
    @required Result error(UpdateWednesdayServiceHoursError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateWednesdayServiceHours$ value), {
    Result successful(UpdateWednesdayServiceHoursSuccessful value),
    Result error(UpdateWednesdayServiceHoursError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateWednesdayServiceHours$
    implements UpdateWednesdayServiceHours {
  const factory UpdateWednesdayServiceHours$(String wednesdayServiceHours) =
      _$UpdateWednesdayServiceHours$;

  String get wednesdayServiceHours;
  $UpdateWednesdayServiceHours$CopyWith<UpdateWednesdayServiceHours$>
      get copyWith;
}

/// @nodoc
abstract class $UpdateWednesdayServiceHoursSuccessfulCopyWith<$Res> {
  factory $UpdateWednesdayServiceHoursSuccessfulCopyWith(
          UpdateWednesdayServiceHoursSuccessful value,
          $Res Function(UpdateWednesdayServiceHoursSuccessful) then) =
      _$UpdateWednesdayServiceHoursSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateWednesdayServiceHoursSuccessfulCopyWithImpl<$Res>
    extends _$UpdateWednesdayServiceHoursCopyWithImpl<$Res>
    implements $UpdateWednesdayServiceHoursSuccessfulCopyWith<$Res> {
  _$UpdateWednesdayServiceHoursSuccessfulCopyWithImpl(
      UpdateWednesdayServiceHoursSuccessful _value,
      $Res Function(UpdateWednesdayServiceHoursSuccessful) _then)
      : super(_value, (v) => _then(v as UpdateWednesdayServiceHoursSuccessful));

  @override
  UpdateWednesdayServiceHoursSuccessful get _value =>
      super._value as UpdateWednesdayServiceHoursSuccessful;
}

/// @nodoc
class _$UpdateWednesdayServiceHoursSuccessful
    implements UpdateWednesdayServiceHoursSuccessful {
  const _$UpdateWednesdayServiceHoursSuccessful();

  @override
  String toString() {
    return 'UpdateWednesdayServiceHours.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateWednesdayServiceHoursSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String wednesdayServiceHours), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String wednesdayServiceHours), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateWednesdayServiceHours$ value), {
    @required Result successful(UpdateWednesdayServiceHoursSuccessful value),
    @required Result error(UpdateWednesdayServiceHoursError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateWednesdayServiceHours$ value), {
    Result successful(UpdateWednesdayServiceHoursSuccessful value),
    Result error(UpdateWednesdayServiceHoursError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateWednesdayServiceHoursSuccessful
    implements UpdateWednesdayServiceHours {
  const factory UpdateWednesdayServiceHoursSuccessful() =
      _$UpdateWednesdayServiceHoursSuccessful;
}

/// @nodoc
abstract class $UpdateWednesdayServiceHoursErrorCopyWith<$Res> {
  factory $UpdateWednesdayServiceHoursErrorCopyWith(
          UpdateWednesdayServiceHoursError value,
          $Res Function(UpdateWednesdayServiceHoursError) then) =
      _$UpdateWednesdayServiceHoursErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$UpdateWednesdayServiceHoursErrorCopyWithImpl<$Res>
    extends _$UpdateWednesdayServiceHoursCopyWithImpl<$Res>
    implements $UpdateWednesdayServiceHoursErrorCopyWith<$Res> {
  _$UpdateWednesdayServiceHoursErrorCopyWithImpl(
      UpdateWednesdayServiceHoursError _value,
      $Res Function(UpdateWednesdayServiceHoursError) _then)
      : super(_value, (v) => _then(v as UpdateWednesdayServiceHoursError));

  @override
  UpdateWednesdayServiceHoursError get _value =>
      super._value as UpdateWednesdayServiceHoursError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(UpdateWednesdayServiceHoursError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$UpdateWednesdayServiceHoursError
    implements UpdateWednesdayServiceHoursError {
  const _$UpdateWednesdayServiceHoursError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'UpdateWednesdayServiceHours.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateWednesdayServiceHoursError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $UpdateWednesdayServiceHoursErrorCopyWith<UpdateWednesdayServiceHoursError>
      get copyWith => _$UpdateWednesdayServiceHoursErrorCopyWithImpl<
          UpdateWednesdayServiceHoursError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String wednesdayServiceHours), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String wednesdayServiceHours), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateWednesdayServiceHours$ value), {
    @required Result successful(UpdateWednesdayServiceHoursSuccessful value),
    @required Result error(UpdateWednesdayServiceHoursError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateWednesdayServiceHours$ value), {
    Result successful(UpdateWednesdayServiceHoursSuccessful value),
    Result error(UpdateWednesdayServiceHoursError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateWednesdayServiceHoursError
    implements UpdateWednesdayServiceHours, ErrorAction {
  const factory UpdateWednesdayServiceHoursError(Object error) =
      _$UpdateWednesdayServiceHoursError;

  Object get error;
  $UpdateWednesdayServiceHoursErrorCopyWith<UpdateWednesdayServiceHoursError>
      get copyWith;
}

/// @nodoc
class _$UpdateThursdayServiceHoursTearOff {
  const _$UpdateThursdayServiceHoursTearOff();

// ignore: unused_element
  UpdateThursdayServiceHours$ call(String thursdayServiceHours) {
    return UpdateThursdayServiceHours$(
      thursdayServiceHours,
    );
  }

// ignore: unused_element
  UpdateThursdayServiceHoursSuccessful successful() {
    return const UpdateThursdayServiceHoursSuccessful();
  }

// ignore: unused_element
  UpdateThursdayServiceHoursError error(Object error) {
    return UpdateThursdayServiceHoursError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateThursdayServiceHours = _$UpdateThursdayServiceHoursTearOff();

/// @nodoc
mixin _$UpdateThursdayServiceHours {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String thursdayServiceHours), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String thursdayServiceHours), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateThursdayServiceHours$ value), {
    @required Result successful(UpdateThursdayServiceHoursSuccessful value),
    @required Result error(UpdateThursdayServiceHoursError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateThursdayServiceHours$ value), {
    Result successful(UpdateThursdayServiceHoursSuccessful value),
    Result error(UpdateThursdayServiceHoursError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UpdateThursdayServiceHoursCopyWith<$Res> {
  factory $UpdateThursdayServiceHoursCopyWith(UpdateThursdayServiceHours value,
          $Res Function(UpdateThursdayServiceHours) then) =
      _$UpdateThursdayServiceHoursCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateThursdayServiceHoursCopyWithImpl<$Res>
    implements $UpdateThursdayServiceHoursCopyWith<$Res> {
  _$UpdateThursdayServiceHoursCopyWithImpl(this._value, this._then);

  final UpdateThursdayServiceHours _value;
  // ignore: unused_field
  final $Res Function(UpdateThursdayServiceHours) _then;
}

/// @nodoc
abstract class $UpdateThursdayServiceHours$CopyWith<$Res> {
  factory $UpdateThursdayServiceHours$CopyWith(
          UpdateThursdayServiceHours$ value,
          $Res Function(UpdateThursdayServiceHours$) then) =
      _$UpdateThursdayServiceHours$CopyWithImpl<$Res>;
  $Res call({String thursdayServiceHours});
}

/// @nodoc
class _$UpdateThursdayServiceHours$CopyWithImpl<$Res>
    extends _$UpdateThursdayServiceHoursCopyWithImpl<$Res>
    implements $UpdateThursdayServiceHours$CopyWith<$Res> {
  _$UpdateThursdayServiceHours$CopyWithImpl(UpdateThursdayServiceHours$ _value,
      $Res Function(UpdateThursdayServiceHours$) _then)
      : super(_value, (v) => _then(v as UpdateThursdayServiceHours$));

  @override
  UpdateThursdayServiceHours$ get _value =>
      super._value as UpdateThursdayServiceHours$;

  @override
  $Res call({
    Object thursdayServiceHours = freezed,
  }) {
    return _then(UpdateThursdayServiceHours$(
      thursdayServiceHours == freezed
          ? _value.thursdayServiceHours
          : thursdayServiceHours as String,
    ));
  }
}

/// @nodoc
class _$UpdateThursdayServiceHours$ implements UpdateThursdayServiceHours$ {
  const _$UpdateThursdayServiceHours$(this.thursdayServiceHours)
      : assert(thursdayServiceHours != null);

  @override
  final String thursdayServiceHours;

  @override
  String toString() {
    return 'UpdateThursdayServiceHours(thursdayServiceHours: $thursdayServiceHours)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateThursdayServiceHours$ &&
            (identical(other.thursdayServiceHours, thursdayServiceHours) ||
                const DeepCollectionEquality()
                    .equals(other.thursdayServiceHours, thursdayServiceHours)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(thursdayServiceHours);

  @override
  $UpdateThursdayServiceHours$CopyWith<UpdateThursdayServiceHours$>
      get copyWith => _$UpdateThursdayServiceHours$CopyWithImpl<
          UpdateThursdayServiceHours$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String thursdayServiceHours), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(thursdayServiceHours);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String thursdayServiceHours), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(thursdayServiceHours);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateThursdayServiceHours$ value), {
    @required Result successful(UpdateThursdayServiceHoursSuccessful value),
    @required Result error(UpdateThursdayServiceHoursError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateThursdayServiceHours$ value), {
    Result successful(UpdateThursdayServiceHoursSuccessful value),
    Result error(UpdateThursdayServiceHoursError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateThursdayServiceHours$
    implements UpdateThursdayServiceHours {
  const factory UpdateThursdayServiceHours$(String thursdayServiceHours) =
      _$UpdateThursdayServiceHours$;

  String get thursdayServiceHours;
  $UpdateThursdayServiceHours$CopyWith<UpdateThursdayServiceHours$>
      get copyWith;
}

/// @nodoc
abstract class $UpdateThursdayServiceHoursSuccessfulCopyWith<$Res> {
  factory $UpdateThursdayServiceHoursSuccessfulCopyWith(
          UpdateThursdayServiceHoursSuccessful value,
          $Res Function(UpdateThursdayServiceHoursSuccessful) then) =
      _$UpdateThursdayServiceHoursSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateThursdayServiceHoursSuccessfulCopyWithImpl<$Res>
    extends _$UpdateThursdayServiceHoursCopyWithImpl<$Res>
    implements $UpdateThursdayServiceHoursSuccessfulCopyWith<$Res> {
  _$UpdateThursdayServiceHoursSuccessfulCopyWithImpl(
      UpdateThursdayServiceHoursSuccessful _value,
      $Res Function(UpdateThursdayServiceHoursSuccessful) _then)
      : super(_value, (v) => _then(v as UpdateThursdayServiceHoursSuccessful));

  @override
  UpdateThursdayServiceHoursSuccessful get _value =>
      super._value as UpdateThursdayServiceHoursSuccessful;
}

/// @nodoc
class _$UpdateThursdayServiceHoursSuccessful
    implements UpdateThursdayServiceHoursSuccessful {
  const _$UpdateThursdayServiceHoursSuccessful();

  @override
  String toString() {
    return 'UpdateThursdayServiceHours.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateThursdayServiceHoursSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String thursdayServiceHours), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String thursdayServiceHours), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateThursdayServiceHours$ value), {
    @required Result successful(UpdateThursdayServiceHoursSuccessful value),
    @required Result error(UpdateThursdayServiceHoursError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateThursdayServiceHours$ value), {
    Result successful(UpdateThursdayServiceHoursSuccessful value),
    Result error(UpdateThursdayServiceHoursError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateThursdayServiceHoursSuccessful
    implements UpdateThursdayServiceHours {
  const factory UpdateThursdayServiceHoursSuccessful() =
      _$UpdateThursdayServiceHoursSuccessful;
}

/// @nodoc
abstract class $UpdateThursdayServiceHoursErrorCopyWith<$Res> {
  factory $UpdateThursdayServiceHoursErrorCopyWith(
          UpdateThursdayServiceHoursError value,
          $Res Function(UpdateThursdayServiceHoursError) then) =
      _$UpdateThursdayServiceHoursErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$UpdateThursdayServiceHoursErrorCopyWithImpl<$Res>
    extends _$UpdateThursdayServiceHoursCopyWithImpl<$Res>
    implements $UpdateThursdayServiceHoursErrorCopyWith<$Res> {
  _$UpdateThursdayServiceHoursErrorCopyWithImpl(
      UpdateThursdayServiceHoursError _value,
      $Res Function(UpdateThursdayServiceHoursError) _then)
      : super(_value, (v) => _then(v as UpdateThursdayServiceHoursError));

  @override
  UpdateThursdayServiceHoursError get _value =>
      super._value as UpdateThursdayServiceHoursError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(UpdateThursdayServiceHoursError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$UpdateThursdayServiceHoursError
    implements UpdateThursdayServiceHoursError {
  const _$UpdateThursdayServiceHoursError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'UpdateThursdayServiceHours.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateThursdayServiceHoursError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $UpdateThursdayServiceHoursErrorCopyWith<UpdateThursdayServiceHoursError>
      get copyWith => _$UpdateThursdayServiceHoursErrorCopyWithImpl<
          UpdateThursdayServiceHoursError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String thursdayServiceHours), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String thursdayServiceHours), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateThursdayServiceHours$ value), {
    @required Result successful(UpdateThursdayServiceHoursSuccessful value),
    @required Result error(UpdateThursdayServiceHoursError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateThursdayServiceHours$ value), {
    Result successful(UpdateThursdayServiceHoursSuccessful value),
    Result error(UpdateThursdayServiceHoursError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateThursdayServiceHoursError
    implements UpdateThursdayServiceHours, ErrorAction {
  const factory UpdateThursdayServiceHoursError(Object error) =
      _$UpdateThursdayServiceHoursError;

  Object get error;
  $UpdateThursdayServiceHoursErrorCopyWith<UpdateThursdayServiceHoursError>
      get copyWith;
}

/// @nodoc
class _$UpdateFridayServiceHoursTearOff {
  const _$UpdateFridayServiceHoursTearOff();

// ignore: unused_element
  UpdateFridayServiceHours$ call(String fridayServiceHours) {
    return UpdateFridayServiceHours$(
      fridayServiceHours,
    );
  }

// ignore: unused_element
  UpdateFridayServiceHoursSuccessful successful() {
    return const UpdateFridayServiceHoursSuccessful();
  }

// ignore: unused_element
  UpdateFridayServiceHoursError error(Object error) {
    return UpdateFridayServiceHoursError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateFridayServiceHours = _$UpdateFridayServiceHoursTearOff();

/// @nodoc
mixin _$UpdateFridayServiceHours {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String fridayServiceHours), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String fridayServiceHours), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateFridayServiceHours$ value), {
    @required Result successful(UpdateFridayServiceHoursSuccessful value),
    @required Result error(UpdateFridayServiceHoursError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateFridayServiceHours$ value), {
    Result successful(UpdateFridayServiceHoursSuccessful value),
    Result error(UpdateFridayServiceHoursError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UpdateFridayServiceHoursCopyWith<$Res> {
  factory $UpdateFridayServiceHoursCopyWith(UpdateFridayServiceHours value,
          $Res Function(UpdateFridayServiceHours) then) =
      _$UpdateFridayServiceHoursCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateFridayServiceHoursCopyWithImpl<$Res>
    implements $UpdateFridayServiceHoursCopyWith<$Res> {
  _$UpdateFridayServiceHoursCopyWithImpl(this._value, this._then);

  final UpdateFridayServiceHours _value;
  // ignore: unused_field
  final $Res Function(UpdateFridayServiceHours) _then;
}

/// @nodoc
abstract class $UpdateFridayServiceHours$CopyWith<$Res> {
  factory $UpdateFridayServiceHours$CopyWith(UpdateFridayServiceHours$ value,
          $Res Function(UpdateFridayServiceHours$) then) =
      _$UpdateFridayServiceHours$CopyWithImpl<$Res>;
  $Res call({String fridayServiceHours});
}

/// @nodoc
class _$UpdateFridayServiceHours$CopyWithImpl<$Res>
    extends _$UpdateFridayServiceHoursCopyWithImpl<$Res>
    implements $UpdateFridayServiceHours$CopyWith<$Res> {
  _$UpdateFridayServiceHours$CopyWithImpl(UpdateFridayServiceHours$ _value,
      $Res Function(UpdateFridayServiceHours$) _then)
      : super(_value, (v) => _then(v as UpdateFridayServiceHours$));

  @override
  UpdateFridayServiceHours$ get _value =>
      super._value as UpdateFridayServiceHours$;

  @override
  $Res call({
    Object fridayServiceHours = freezed,
  }) {
    return _then(UpdateFridayServiceHours$(
      fridayServiceHours == freezed
          ? _value.fridayServiceHours
          : fridayServiceHours as String,
    ));
  }
}

/// @nodoc
class _$UpdateFridayServiceHours$ implements UpdateFridayServiceHours$ {
  const _$UpdateFridayServiceHours$(this.fridayServiceHours)
      : assert(fridayServiceHours != null);

  @override
  final String fridayServiceHours;

  @override
  String toString() {
    return 'UpdateFridayServiceHours(fridayServiceHours: $fridayServiceHours)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateFridayServiceHours$ &&
            (identical(other.fridayServiceHours, fridayServiceHours) ||
                const DeepCollectionEquality()
                    .equals(other.fridayServiceHours, fridayServiceHours)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fridayServiceHours);

  @override
  $UpdateFridayServiceHours$CopyWith<UpdateFridayServiceHours$> get copyWith =>
      _$UpdateFridayServiceHours$CopyWithImpl<UpdateFridayServiceHours$>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String fridayServiceHours), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(fridayServiceHours);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String fridayServiceHours), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(fridayServiceHours);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateFridayServiceHours$ value), {
    @required Result successful(UpdateFridayServiceHoursSuccessful value),
    @required Result error(UpdateFridayServiceHoursError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateFridayServiceHours$ value), {
    Result successful(UpdateFridayServiceHoursSuccessful value),
    Result error(UpdateFridayServiceHoursError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateFridayServiceHours$ implements UpdateFridayServiceHours {
  const factory UpdateFridayServiceHours$(String fridayServiceHours) =
      _$UpdateFridayServiceHours$;

  String get fridayServiceHours;
  $UpdateFridayServiceHours$CopyWith<UpdateFridayServiceHours$> get copyWith;
}

/// @nodoc
abstract class $UpdateFridayServiceHoursSuccessfulCopyWith<$Res> {
  factory $UpdateFridayServiceHoursSuccessfulCopyWith(
          UpdateFridayServiceHoursSuccessful value,
          $Res Function(UpdateFridayServiceHoursSuccessful) then) =
      _$UpdateFridayServiceHoursSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateFridayServiceHoursSuccessfulCopyWithImpl<$Res>
    extends _$UpdateFridayServiceHoursCopyWithImpl<$Res>
    implements $UpdateFridayServiceHoursSuccessfulCopyWith<$Res> {
  _$UpdateFridayServiceHoursSuccessfulCopyWithImpl(
      UpdateFridayServiceHoursSuccessful _value,
      $Res Function(UpdateFridayServiceHoursSuccessful) _then)
      : super(_value, (v) => _then(v as UpdateFridayServiceHoursSuccessful));

  @override
  UpdateFridayServiceHoursSuccessful get _value =>
      super._value as UpdateFridayServiceHoursSuccessful;
}

/// @nodoc
class _$UpdateFridayServiceHoursSuccessful
    implements UpdateFridayServiceHoursSuccessful {
  const _$UpdateFridayServiceHoursSuccessful();

  @override
  String toString() {
    return 'UpdateFridayServiceHours.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateFridayServiceHoursSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String fridayServiceHours), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String fridayServiceHours), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateFridayServiceHours$ value), {
    @required Result successful(UpdateFridayServiceHoursSuccessful value),
    @required Result error(UpdateFridayServiceHoursError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateFridayServiceHours$ value), {
    Result successful(UpdateFridayServiceHoursSuccessful value),
    Result error(UpdateFridayServiceHoursError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateFridayServiceHoursSuccessful
    implements UpdateFridayServiceHours {
  const factory UpdateFridayServiceHoursSuccessful() =
      _$UpdateFridayServiceHoursSuccessful;
}

/// @nodoc
abstract class $UpdateFridayServiceHoursErrorCopyWith<$Res> {
  factory $UpdateFridayServiceHoursErrorCopyWith(
          UpdateFridayServiceHoursError value,
          $Res Function(UpdateFridayServiceHoursError) then) =
      _$UpdateFridayServiceHoursErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$UpdateFridayServiceHoursErrorCopyWithImpl<$Res>
    extends _$UpdateFridayServiceHoursCopyWithImpl<$Res>
    implements $UpdateFridayServiceHoursErrorCopyWith<$Res> {
  _$UpdateFridayServiceHoursErrorCopyWithImpl(
      UpdateFridayServiceHoursError _value,
      $Res Function(UpdateFridayServiceHoursError) _then)
      : super(_value, (v) => _then(v as UpdateFridayServiceHoursError));

  @override
  UpdateFridayServiceHoursError get _value =>
      super._value as UpdateFridayServiceHoursError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(UpdateFridayServiceHoursError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$UpdateFridayServiceHoursError implements UpdateFridayServiceHoursError {
  const _$UpdateFridayServiceHoursError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'UpdateFridayServiceHours.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateFridayServiceHoursError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $UpdateFridayServiceHoursErrorCopyWith<UpdateFridayServiceHoursError>
      get copyWith => _$UpdateFridayServiceHoursErrorCopyWithImpl<
          UpdateFridayServiceHoursError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String fridayServiceHours), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String fridayServiceHours), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateFridayServiceHours$ value), {
    @required Result successful(UpdateFridayServiceHoursSuccessful value),
    @required Result error(UpdateFridayServiceHoursError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateFridayServiceHours$ value), {
    Result successful(UpdateFridayServiceHoursSuccessful value),
    Result error(UpdateFridayServiceHoursError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateFridayServiceHoursError
    implements UpdateFridayServiceHours, ErrorAction {
  const factory UpdateFridayServiceHoursError(Object error) =
      _$UpdateFridayServiceHoursError;

  Object get error;
  $UpdateFridayServiceHoursErrorCopyWith<UpdateFridayServiceHoursError>
      get copyWith;
}

/// @nodoc
class _$UpdateSaturdayServiceHoursTearOff {
  const _$UpdateSaturdayServiceHoursTearOff();

// ignore: unused_element
  UpdateSaturdayServiceHours$ call(String saturdayServiceHours) {
    return UpdateSaturdayServiceHours$(
      saturdayServiceHours,
    );
  }

// ignore: unused_element
  UpdateSaturdayServiceHoursSuccessful successful() {
    return const UpdateSaturdayServiceHoursSuccessful();
  }

// ignore: unused_element
  UpdateSaturdayServiceHoursError error(Object error) {
    return UpdateSaturdayServiceHoursError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateSaturdayServiceHours = _$UpdateSaturdayServiceHoursTearOff();

/// @nodoc
mixin _$UpdateSaturdayServiceHours {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String saturdayServiceHours), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String saturdayServiceHours), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateSaturdayServiceHours$ value), {
    @required Result successful(UpdateSaturdayServiceHoursSuccessful value),
    @required Result error(UpdateSaturdayServiceHoursError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateSaturdayServiceHours$ value), {
    Result successful(UpdateSaturdayServiceHoursSuccessful value),
    Result error(UpdateSaturdayServiceHoursError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UpdateSaturdayServiceHoursCopyWith<$Res> {
  factory $UpdateSaturdayServiceHoursCopyWith(UpdateSaturdayServiceHours value,
          $Res Function(UpdateSaturdayServiceHours) then) =
      _$UpdateSaturdayServiceHoursCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateSaturdayServiceHoursCopyWithImpl<$Res>
    implements $UpdateSaturdayServiceHoursCopyWith<$Res> {
  _$UpdateSaturdayServiceHoursCopyWithImpl(this._value, this._then);

  final UpdateSaturdayServiceHours _value;
  // ignore: unused_field
  final $Res Function(UpdateSaturdayServiceHours) _then;
}

/// @nodoc
abstract class $UpdateSaturdayServiceHours$CopyWith<$Res> {
  factory $UpdateSaturdayServiceHours$CopyWith(
          UpdateSaturdayServiceHours$ value,
          $Res Function(UpdateSaturdayServiceHours$) then) =
      _$UpdateSaturdayServiceHours$CopyWithImpl<$Res>;
  $Res call({String saturdayServiceHours});
}

/// @nodoc
class _$UpdateSaturdayServiceHours$CopyWithImpl<$Res>
    extends _$UpdateSaturdayServiceHoursCopyWithImpl<$Res>
    implements $UpdateSaturdayServiceHours$CopyWith<$Res> {
  _$UpdateSaturdayServiceHours$CopyWithImpl(UpdateSaturdayServiceHours$ _value,
      $Res Function(UpdateSaturdayServiceHours$) _then)
      : super(_value, (v) => _then(v as UpdateSaturdayServiceHours$));

  @override
  UpdateSaturdayServiceHours$ get _value =>
      super._value as UpdateSaturdayServiceHours$;

  @override
  $Res call({
    Object saturdayServiceHours = freezed,
  }) {
    return _then(UpdateSaturdayServiceHours$(
      saturdayServiceHours == freezed
          ? _value.saturdayServiceHours
          : saturdayServiceHours as String,
    ));
  }
}

/// @nodoc
class _$UpdateSaturdayServiceHours$ implements UpdateSaturdayServiceHours$ {
  const _$UpdateSaturdayServiceHours$(this.saturdayServiceHours)
      : assert(saturdayServiceHours != null);

  @override
  final String saturdayServiceHours;

  @override
  String toString() {
    return 'UpdateSaturdayServiceHours(saturdayServiceHours: $saturdayServiceHours)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateSaturdayServiceHours$ &&
            (identical(other.saturdayServiceHours, saturdayServiceHours) ||
                const DeepCollectionEquality()
                    .equals(other.saturdayServiceHours, saturdayServiceHours)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(saturdayServiceHours);

  @override
  $UpdateSaturdayServiceHours$CopyWith<UpdateSaturdayServiceHours$>
      get copyWith => _$UpdateSaturdayServiceHours$CopyWithImpl<
          UpdateSaturdayServiceHours$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String saturdayServiceHours), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(saturdayServiceHours);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String saturdayServiceHours), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(saturdayServiceHours);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateSaturdayServiceHours$ value), {
    @required Result successful(UpdateSaturdayServiceHoursSuccessful value),
    @required Result error(UpdateSaturdayServiceHoursError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateSaturdayServiceHours$ value), {
    Result successful(UpdateSaturdayServiceHoursSuccessful value),
    Result error(UpdateSaturdayServiceHoursError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateSaturdayServiceHours$
    implements UpdateSaturdayServiceHours {
  const factory UpdateSaturdayServiceHours$(String saturdayServiceHours) =
      _$UpdateSaturdayServiceHours$;

  String get saturdayServiceHours;
  $UpdateSaturdayServiceHours$CopyWith<UpdateSaturdayServiceHours$>
      get copyWith;
}

/// @nodoc
abstract class $UpdateSaturdayServiceHoursSuccessfulCopyWith<$Res> {
  factory $UpdateSaturdayServiceHoursSuccessfulCopyWith(
          UpdateSaturdayServiceHoursSuccessful value,
          $Res Function(UpdateSaturdayServiceHoursSuccessful) then) =
      _$UpdateSaturdayServiceHoursSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateSaturdayServiceHoursSuccessfulCopyWithImpl<$Res>
    extends _$UpdateSaturdayServiceHoursCopyWithImpl<$Res>
    implements $UpdateSaturdayServiceHoursSuccessfulCopyWith<$Res> {
  _$UpdateSaturdayServiceHoursSuccessfulCopyWithImpl(
      UpdateSaturdayServiceHoursSuccessful _value,
      $Res Function(UpdateSaturdayServiceHoursSuccessful) _then)
      : super(_value, (v) => _then(v as UpdateSaturdayServiceHoursSuccessful));

  @override
  UpdateSaturdayServiceHoursSuccessful get _value =>
      super._value as UpdateSaturdayServiceHoursSuccessful;
}

/// @nodoc
class _$UpdateSaturdayServiceHoursSuccessful
    implements UpdateSaturdayServiceHoursSuccessful {
  const _$UpdateSaturdayServiceHoursSuccessful();

  @override
  String toString() {
    return 'UpdateSaturdayServiceHours.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateSaturdayServiceHoursSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String saturdayServiceHours), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String saturdayServiceHours), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateSaturdayServiceHours$ value), {
    @required Result successful(UpdateSaturdayServiceHoursSuccessful value),
    @required Result error(UpdateSaturdayServiceHoursError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateSaturdayServiceHours$ value), {
    Result successful(UpdateSaturdayServiceHoursSuccessful value),
    Result error(UpdateSaturdayServiceHoursError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateSaturdayServiceHoursSuccessful
    implements UpdateSaturdayServiceHours {
  const factory UpdateSaturdayServiceHoursSuccessful() =
      _$UpdateSaturdayServiceHoursSuccessful;
}

/// @nodoc
abstract class $UpdateSaturdayServiceHoursErrorCopyWith<$Res> {
  factory $UpdateSaturdayServiceHoursErrorCopyWith(
          UpdateSaturdayServiceHoursError value,
          $Res Function(UpdateSaturdayServiceHoursError) then) =
      _$UpdateSaturdayServiceHoursErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$UpdateSaturdayServiceHoursErrorCopyWithImpl<$Res>
    extends _$UpdateSaturdayServiceHoursCopyWithImpl<$Res>
    implements $UpdateSaturdayServiceHoursErrorCopyWith<$Res> {
  _$UpdateSaturdayServiceHoursErrorCopyWithImpl(
      UpdateSaturdayServiceHoursError _value,
      $Res Function(UpdateSaturdayServiceHoursError) _then)
      : super(_value, (v) => _then(v as UpdateSaturdayServiceHoursError));

  @override
  UpdateSaturdayServiceHoursError get _value =>
      super._value as UpdateSaturdayServiceHoursError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(UpdateSaturdayServiceHoursError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$UpdateSaturdayServiceHoursError
    implements UpdateSaturdayServiceHoursError {
  const _$UpdateSaturdayServiceHoursError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'UpdateSaturdayServiceHours.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateSaturdayServiceHoursError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $UpdateSaturdayServiceHoursErrorCopyWith<UpdateSaturdayServiceHoursError>
      get copyWith => _$UpdateSaturdayServiceHoursErrorCopyWithImpl<
          UpdateSaturdayServiceHoursError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String saturdayServiceHours), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String saturdayServiceHours), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateSaturdayServiceHours$ value), {
    @required Result successful(UpdateSaturdayServiceHoursSuccessful value),
    @required Result error(UpdateSaturdayServiceHoursError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateSaturdayServiceHours$ value), {
    Result successful(UpdateSaturdayServiceHoursSuccessful value),
    Result error(UpdateSaturdayServiceHoursError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateSaturdayServiceHoursError
    implements UpdateSaturdayServiceHours, ErrorAction {
  const factory UpdateSaturdayServiceHoursError(Object error) =
      _$UpdateSaturdayServiceHoursError;

  Object get error;
  $UpdateSaturdayServiceHoursErrorCopyWith<UpdateSaturdayServiceHoursError>
      get copyWith;
}

/// @nodoc
class _$UpdateSundayServiceHoursTearOff {
  const _$UpdateSundayServiceHoursTearOff();

// ignore: unused_element
  UpdateSundayServiceHours$ call(String sundayServiceHours) {
    return UpdateSundayServiceHours$(
      sundayServiceHours,
    );
  }

// ignore: unused_element
  UpdateSundayServiceHoursSuccessful successful() {
    return const UpdateSundayServiceHoursSuccessful();
  }

// ignore: unused_element
  UpdateSundayServiceHoursError error(Object error) {
    return UpdateSundayServiceHoursError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateSundayServiceHours = _$UpdateSundayServiceHoursTearOff();

/// @nodoc
mixin _$UpdateSundayServiceHours {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String sundayServiceHours), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String sundayServiceHours), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateSundayServiceHours$ value), {
    @required Result successful(UpdateSundayServiceHoursSuccessful value),
    @required Result error(UpdateSundayServiceHoursError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateSundayServiceHours$ value), {
    Result successful(UpdateSundayServiceHoursSuccessful value),
    Result error(UpdateSundayServiceHoursError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UpdateSundayServiceHoursCopyWith<$Res> {
  factory $UpdateSundayServiceHoursCopyWith(UpdateSundayServiceHours value,
          $Res Function(UpdateSundayServiceHours) then) =
      _$UpdateSundayServiceHoursCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateSundayServiceHoursCopyWithImpl<$Res>
    implements $UpdateSundayServiceHoursCopyWith<$Res> {
  _$UpdateSundayServiceHoursCopyWithImpl(this._value, this._then);

  final UpdateSundayServiceHours _value;
  // ignore: unused_field
  final $Res Function(UpdateSundayServiceHours) _then;
}

/// @nodoc
abstract class $UpdateSundayServiceHours$CopyWith<$Res> {
  factory $UpdateSundayServiceHours$CopyWith(UpdateSundayServiceHours$ value,
          $Res Function(UpdateSundayServiceHours$) then) =
      _$UpdateSundayServiceHours$CopyWithImpl<$Res>;
  $Res call({String sundayServiceHours});
}

/// @nodoc
class _$UpdateSundayServiceHours$CopyWithImpl<$Res>
    extends _$UpdateSundayServiceHoursCopyWithImpl<$Res>
    implements $UpdateSundayServiceHours$CopyWith<$Res> {
  _$UpdateSundayServiceHours$CopyWithImpl(UpdateSundayServiceHours$ _value,
      $Res Function(UpdateSundayServiceHours$) _then)
      : super(_value, (v) => _then(v as UpdateSundayServiceHours$));

  @override
  UpdateSundayServiceHours$ get _value =>
      super._value as UpdateSundayServiceHours$;

  @override
  $Res call({
    Object sundayServiceHours = freezed,
  }) {
    return _then(UpdateSundayServiceHours$(
      sundayServiceHours == freezed
          ? _value.sundayServiceHours
          : sundayServiceHours as String,
    ));
  }
}

/// @nodoc
class _$UpdateSundayServiceHours$ implements UpdateSundayServiceHours$ {
  const _$UpdateSundayServiceHours$(this.sundayServiceHours)
      : assert(sundayServiceHours != null);

  @override
  final String sundayServiceHours;

  @override
  String toString() {
    return 'UpdateSundayServiceHours(sundayServiceHours: $sundayServiceHours)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateSundayServiceHours$ &&
            (identical(other.sundayServiceHours, sundayServiceHours) ||
                const DeepCollectionEquality()
                    .equals(other.sundayServiceHours, sundayServiceHours)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sundayServiceHours);

  @override
  $UpdateSundayServiceHours$CopyWith<UpdateSundayServiceHours$> get copyWith =>
      _$UpdateSundayServiceHours$CopyWithImpl<UpdateSundayServiceHours$>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String sundayServiceHours), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(sundayServiceHours);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String sundayServiceHours), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(sundayServiceHours);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateSundayServiceHours$ value), {
    @required Result successful(UpdateSundayServiceHoursSuccessful value),
    @required Result error(UpdateSundayServiceHoursError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateSundayServiceHours$ value), {
    Result successful(UpdateSundayServiceHoursSuccessful value),
    Result error(UpdateSundayServiceHoursError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateSundayServiceHours$ implements UpdateSundayServiceHours {
  const factory UpdateSundayServiceHours$(String sundayServiceHours) =
      _$UpdateSundayServiceHours$;

  String get sundayServiceHours;
  $UpdateSundayServiceHours$CopyWith<UpdateSundayServiceHours$> get copyWith;
}

/// @nodoc
abstract class $UpdateSundayServiceHoursSuccessfulCopyWith<$Res> {
  factory $UpdateSundayServiceHoursSuccessfulCopyWith(
          UpdateSundayServiceHoursSuccessful value,
          $Res Function(UpdateSundayServiceHoursSuccessful) then) =
      _$UpdateSundayServiceHoursSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateSundayServiceHoursSuccessfulCopyWithImpl<$Res>
    extends _$UpdateSundayServiceHoursCopyWithImpl<$Res>
    implements $UpdateSundayServiceHoursSuccessfulCopyWith<$Res> {
  _$UpdateSundayServiceHoursSuccessfulCopyWithImpl(
      UpdateSundayServiceHoursSuccessful _value,
      $Res Function(UpdateSundayServiceHoursSuccessful) _then)
      : super(_value, (v) => _then(v as UpdateSundayServiceHoursSuccessful));

  @override
  UpdateSundayServiceHoursSuccessful get _value =>
      super._value as UpdateSundayServiceHoursSuccessful;
}

/// @nodoc
class _$UpdateSundayServiceHoursSuccessful
    implements UpdateSundayServiceHoursSuccessful {
  const _$UpdateSundayServiceHoursSuccessful();

  @override
  String toString() {
    return 'UpdateSundayServiceHours.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateSundayServiceHoursSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String sundayServiceHours), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String sundayServiceHours), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateSundayServiceHours$ value), {
    @required Result successful(UpdateSundayServiceHoursSuccessful value),
    @required Result error(UpdateSundayServiceHoursError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateSundayServiceHours$ value), {
    Result successful(UpdateSundayServiceHoursSuccessful value),
    Result error(UpdateSundayServiceHoursError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateSundayServiceHoursSuccessful
    implements UpdateSundayServiceHours {
  const factory UpdateSundayServiceHoursSuccessful() =
      _$UpdateSundayServiceHoursSuccessful;
}

/// @nodoc
abstract class $UpdateSundayServiceHoursErrorCopyWith<$Res> {
  factory $UpdateSundayServiceHoursErrorCopyWith(
          UpdateSundayServiceHoursError value,
          $Res Function(UpdateSundayServiceHoursError) then) =
      _$UpdateSundayServiceHoursErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$UpdateSundayServiceHoursErrorCopyWithImpl<$Res>
    extends _$UpdateSundayServiceHoursCopyWithImpl<$Res>
    implements $UpdateSundayServiceHoursErrorCopyWith<$Res> {
  _$UpdateSundayServiceHoursErrorCopyWithImpl(
      UpdateSundayServiceHoursError _value,
      $Res Function(UpdateSundayServiceHoursError) _then)
      : super(_value, (v) => _then(v as UpdateSundayServiceHoursError));

  @override
  UpdateSundayServiceHoursError get _value =>
      super._value as UpdateSundayServiceHoursError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(UpdateSundayServiceHoursError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$UpdateSundayServiceHoursError implements UpdateSundayServiceHoursError {
  const _$UpdateSundayServiceHoursError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'UpdateSundayServiceHours.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateSundayServiceHoursError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $UpdateSundayServiceHoursErrorCopyWith<UpdateSundayServiceHoursError>
      get copyWith => _$UpdateSundayServiceHoursErrorCopyWithImpl<
          UpdateSundayServiceHoursError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String sundayServiceHours), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String sundayServiceHours), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateSundayServiceHours$ value), {
    @required Result successful(UpdateSundayServiceHoursSuccessful value),
    @required Result error(UpdateSundayServiceHoursError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateSundayServiceHours$ value), {
    Result successful(UpdateSundayServiceHoursSuccessful value),
    Result error(UpdateSundayServiceHoursError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateSundayServiceHoursError
    implements UpdateSundayServiceHours, ErrorAction {
  const factory UpdateSundayServiceHoursError(Object error) =
      _$UpdateSundayServiceHoursError;

  Object get error;
  $UpdateSundayServiceHoursErrorCopyWith<UpdateSundayServiceHoursError>
      get copyWith;
}

/// @nodoc
class _$UpdateIsServiceAvailableTearOff {
  const _$UpdateIsServiceAvailableTearOff();

// ignore: unused_element
  UpdateIsServiceAvailable$ call(bool isServiceAvailable) {
    return UpdateIsServiceAvailable$(
      isServiceAvailable,
    );
  }

// ignore: unused_element
  UpdateIsServiceAvailableSuccessful successful() {
    return const UpdateIsServiceAvailableSuccessful();
  }

// ignore: unused_element
  UpdateIsServiceAvailableError error(Object error) {
    return UpdateIsServiceAvailableError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateIsServiceAvailable = _$UpdateIsServiceAvailableTearOff();

/// @nodoc
mixin _$UpdateIsServiceAvailable {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isServiceAvailable), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isServiceAvailable), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsServiceAvailable$ value), {
    @required Result successful(UpdateIsServiceAvailableSuccessful value),
    @required Result error(UpdateIsServiceAvailableError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsServiceAvailable$ value), {
    Result successful(UpdateIsServiceAvailableSuccessful value),
    Result error(UpdateIsServiceAvailableError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UpdateIsServiceAvailableCopyWith<$Res> {
  factory $UpdateIsServiceAvailableCopyWith(UpdateIsServiceAvailable value,
          $Res Function(UpdateIsServiceAvailable) then) =
      _$UpdateIsServiceAvailableCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateIsServiceAvailableCopyWithImpl<$Res>
    implements $UpdateIsServiceAvailableCopyWith<$Res> {
  _$UpdateIsServiceAvailableCopyWithImpl(this._value, this._then);

  final UpdateIsServiceAvailable _value;
  // ignore: unused_field
  final $Res Function(UpdateIsServiceAvailable) _then;
}

/// @nodoc
abstract class $UpdateIsServiceAvailable$CopyWith<$Res> {
  factory $UpdateIsServiceAvailable$CopyWith(UpdateIsServiceAvailable$ value,
          $Res Function(UpdateIsServiceAvailable$) then) =
      _$UpdateIsServiceAvailable$CopyWithImpl<$Res>;
  $Res call({bool isServiceAvailable});
}

/// @nodoc
class _$UpdateIsServiceAvailable$CopyWithImpl<$Res>
    extends _$UpdateIsServiceAvailableCopyWithImpl<$Res>
    implements $UpdateIsServiceAvailable$CopyWith<$Res> {
  _$UpdateIsServiceAvailable$CopyWithImpl(UpdateIsServiceAvailable$ _value,
      $Res Function(UpdateIsServiceAvailable$) _then)
      : super(_value, (v) => _then(v as UpdateIsServiceAvailable$));

  @override
  UpdateIsServiceAvailable$ get _value =>
      super._value as UpdateIsServiceAvailable$;

  @override
  $Res call({
    Object isServiceAvailable = freezed,
  }) {
    return _then(UpdateIsServiceAvailable$(
      isServiceAvailable == freezed
          ? _value.isServiceAvailable
          : isServiceAvailable as bool,
    ));
  }
}

/// @nodoc
class _$UpdateIsServiceAvailable$ implements UpdateIsServiceAvailable$ {
  const _$UpdateIsServiceAvailable$(this.isServiceAvailable)
      : assert(isServiceAvailable != null);

  @override
  final bool isServiceAvailable;

  @override
  String toString() {
    return 'UpdateIsServiceAvailable(isServiceAvailable: $isServiceAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateIsServiceAvailable$ &&
            (identical(other.isServiceAvailable, isServiceAvailable) ||
                const DeepCollectionEquality()
                    .equals(other.isServiceAvailable, isServiceAvailable)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isServiceAvailable);

  @override
  $UpdateIsServiceAvailable$CopyWith<UpdateIsServiceAvailable$> get copyWith =>
      _$UpdateIsServiceAvailable$CopyWithImpl<UpdateIsServiceAvailable$>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isServiceAvailable), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(isServiceAvailable);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isServiceAvailable), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(isServiceAvailable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsServiceAvailable$ value), {
    @required Result successful(UpdateIsServiceAvailableSuccessful value),
    @required Result error(UpdateIsServiceAvailableError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsServiceAvailable$ value), {
    Result successful(UpdateIsServiceAvailableSuccessful value),
    Result error(UpdateIsServiceAvailableError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateIsServiceAvailable$ implements UpdateIsServiceAvailable {
  const factory UpdateIsServiceAvailable$(bool isServiceAvailable) =
      _$UpdateIsServiceAvailable$;

  bool get isServiceAvailable;
  $UpdateIsServiceAvailable$CopyWith<UpdateIsServiceAvailable$> get copyWith;
}

/// @nodoc
abstract class $UpdateIsServiceAvailableSuccessfulCopyWith<$Res> {
  factory $UpdateIsServiceAvailableSuccessfulCopyWith(
          UpdateIsServiceAvailableSuccessful value,
          $Res Function(UpdateIsServiceAvailableSuccessful) then) =
      _$UpdateIsServiceAvailableSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateIsServiceAvailableSuccessfulCopyWithImpl<$Res>
    extends _$UpdateIsServiceAvailableCopyWithImpl<$Res>
    implements $UpdateIsServiceAvailableSuccessfulCopyWith<$Res> {
  _$UpdateIsServiceAvailableSuccessfulCopyWithImpl(
      UpdateIsServiceAvailableSuccessful _value,
      $Res Function(UpdateIsServiceAvailableSuccessful) _then)
      : super(_value, (v) => _then(v as UpdateIsServiceAvailableSuccessful));

  @override
  UpdateIsServiceAvailableSuccessful get _value =>
      super._value as UpdateIsServiceAvailableSuccessful;
}

/// @nodoc
class _$UpdateIsServiceAvailableSuccessful
    implements UpdateIsServiceAvailableSuccessful {
  const _$UpdateIsServiceAvailableSuccessful();

  @override
  String toString() {
    return 'UpdateIsServiceAvailable.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateIsServiceAvailableSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isServiceAvailable), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isServiceAvailable), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsServiceAvailable$ value), {
    @required Result successful(UpdateIsServiceAvailableSuccessful value),
    @required Result error(UpdateIsServiceAvailableError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsServiceAvailable$ value), {
    Result successful(UpdateIsServiceAvailableSuccessful value),
    Result error(UpdateIsServiceAvailableError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateIsServiceAvailableSuccessful
    implements UpdateIsServiceAvailable {
  const factory UpdateIsServiceAvailableSuccessful() =
      _$UpdateIsServiceAvailableSuccessful;
}

/// @nodoc
abstract class $UpdateIsServiceAvailableErrorCopyWith<$Res> {
  factory $UpdateIsServiceAvailableErrorCopyWith(
          UpdateIsServiceAvailableError value,
          $Res Function(UpdateIsServiceAvailableError) then) =
      _$UpdateIsServiceAvailableErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$UpdateIsServiceAvailableErrorCopyWithImpl<$Res>
    extends _$UpdateIsServiceAvailableCopyWithImpl<$Res>
    implements $UpdateIsServiceAvailableErrorCopyWith<$Res> {
  _$UpdateIsServiceAvailableErrorCopyWithImpl(
      UpdateIsServiceAvailableError _value,
      $Res Function(UpdateIsServiceAvailableError) _then)
      : super(_value, (v) => _then(v as UpdateIsServiceAvailableError));

  @override
  UpdateIsServiceAvailableError get _value =>
      super._value as UpdateIsServiceAvailableError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(UpdateIsServiceAvailableError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$UpdateIsServiceAvailableError implements UpdateIsServiceAvailableError {
  const _$UpdateIsServiceAvailableError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'UpdateIsServiceAvailable.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateIsServiceAvailableError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $UpdateIsServiceAvailableErrorCopyWith<UpdateIsServiceAvailableError>
      get copyWith => _$UpdateIsServiceAvailableErrorCopyWithImpl<
          UpdateIsServiceAvailableError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isServiceAvailable), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isServiceAvailable), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateIsServiceAvailable$ value), {
    @required Result successful(UpdateIsServiceAvailableSuccessful value),
    @required Result error(UpdateIsServiceAvailableError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateIsServiceAvailable$ value), {
    Result successful(UpdateIsServiceAvailableSuccessful value),
    Result error(UpdateIsServiceAvailableError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateIsServiceAvailableError
    implements UpdateIsServiceAvailable, ErrorAction {
  const factory UpdateIsServiceAvailableError(Object error) =
      _$UpdateIsServiceAvailableError;

  Object get error;
  $UpdateIsServiceAvailableErrorCopyWith<UpdateIsServiceAvailableError>
      get copyWith;
}
