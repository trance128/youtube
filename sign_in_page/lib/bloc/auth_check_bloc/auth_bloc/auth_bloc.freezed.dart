// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

// ignore: unused_element
  _EmailChanged emailChanged(String email) {
    return _EmailChanged(
      email,
    );
  }

// ignore: unused_element
  _PasswordChanged passwordChanged(String password) {
    return _PasswordChanged(
      password,
    );
  }

// ignore: unused_element
  _ConfirmationChanged confirmationChanged(String confirmation) {
    return _ConfirmationChanged(
      confirmation,
    );
  }

// ignore: unused_element
  _ToggleShowConfirm toggleShowConfirm() {
    return const _ToggleShowConfirm();
  }

// ignore: unused_element
  _LoginPressed loginPressed() {
    return const _LoginPressed();
  }

// ignore: unused_element
  _RegitrationTriggers registrationPressed() {
    return const _RegitrationTriggers();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result confirmationChanged(String confirmation),
    @required Result toggleShowConfirm(),
    @required Result loginPressed(),
    @required Result registrationPressed(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result confirmationChanged(String confirmation),
    Result toggleShowConfirm(),
    Result loginPressed(),
    Result registrationPressed(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(_EmailChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result confirmationChanged(_ConfirmationChanged value),
    @required Result toggleShowConfirm(_ToggleShowConfirm value),
    @required Result loginPressed(_LoginPressed value),
    @required Result registrationPressed(_RegitrationTriggers value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(_EmailChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result confirmationChanged(_ConfirmationChanged value),
    Result toggleShowConfirm(_ToggleShowConfirm value),
    Result loginPressed(_LoginPressed value),
    Result registrationPressed(_RegitrationTriggers value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class _$EmailChangedCopyWith<$Res> {
  factory _$EmailChangedCopyWith(
          _EmailChanged value, $Res Function(_EmailChanged) then) =
      __$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$EmailChangedCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$EmailChangedCopyWith<$Res> {
  __$EmailChangedCopyWithImpl(
      _EmailChanged _value, $Res Function(_EmailChanged) _then)
      : super(_value, (v) => _then(v as _EmailChanged));

  @override
  _EmailChanged get _value => super._value as _EmailChanged;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(_EmailChanged(
      email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmailChanged &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      __$EmailChangedCopyWithImpl<_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result confirmationChanged(String confirmation),
    @required Result toggleShowConfirm(),
    @required Result loginPressed(),
    @required Result registrationPressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmationChanged != null);
    assert(toggleShowConfirm != null);
    assert(loginPressed != null);
    assert(registrationPressed != null);
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result confirmationChanged(String confirmation),
    Result toggleShowConfirm(),
    Result loginPressed(),
    Result registrationPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(_EmailChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result confirmationChanged(_ConfirmationChanged value),
    @required Result toggleShowConfirm(_ToggleShowConfirm value),
    @required Result loginPressed(_LoginPressed value),
    @required Result registrationPressed(_RegitrationTriggers value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmationChanged != null);
    assert(toggleShowConfirm != null);
    assert(loginPressed != null);
    assert(registrationPressed != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(_EmailChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result confirmationChanged(_ConfirmationChanged value),
    Result toggleShowConfirm(_ToggleShowConfirm value),
    Result loginPressed(_LoginPressed value),
    Result registrationPressed(_RegitrationTriggers value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements AuthEvent {
  const factory _EmailChanged(String email) = _$_EmailChanged;

  String get email;
  _$EmailChangedCopyWith<_EmailChanged> get copyWith;
}

/// @nodoc
abstract class _$PasswordChangedCopyWith<$Res> {
  factory _$PasswordChangedCopyWith(
          _PasswordChanged value, $Res Function(_PasswordChanged) then) =
      __$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class __$PasswordChangedCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$PasswordChangedCopyWith<$Res> {
  __$PasswordChangedCopyWithImpl(
      _PasswordChanged _value, $Res Function(_PasswordChanged) _then)
      : super(_value, (v) => _then(v as _PasswordChanged));

  @override
  _PasswordChanged get _value => super._value as _PasswordChanged;

  @override
  $Res call({
    Object password = freezed,
  }) {
    return _then(_PasswordChanged(
      password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
class _$_PasswordChanged implements _PasswordChanged {
  const _$_PasswordChanged(this.password) : assert(password != null);

  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PasswordChanged &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @override
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith =>
      __$PasswordChangedCopyWithImpl<_PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result confirmationChanged(String confirmation),
    @required Result toggleShowConfirm(),
    @required Result loginPressed(),
    @required Result registrationPressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmationChanged != null);
    assert(toggleShowConfirm != null);
    assert(loginPressed != null);
    assert(registrationPressed != null);
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result confirmationChanged(String confirmation),
    Result toggleShowConfirm(),
    Result loginPressed(),
    Result registrationPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(_EmailChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result confirmationChanged(_ConfirmationChanged value),
    @required Result toggleShowConfirm(_ToggleShowConfirm value),
    @required Result loginPressed(_LoginPressed value),
    @required Result registrationPressed(_RegitrationTriggers value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmationChanged != null);
    assert(toggleShowConfirm != null);
    assert(loginPressed != null);
    assert(registrationPressed != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(_EmailChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result confirmationChanged(_ConfirmationChanged value),
    Result toggleShowConfirm(_ToggleShowConfirm value),
    Result loginPressed(_LoginPressed value),
    Result registrationPressed(_RegitrationTriggers value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements AuthEvent {
  const factory _PasswordChanged(String password) = _$_PasswordChanged;

  String get password;
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith;
}

/// @nodoc
abstract class _$ConfirmationChangedCopyWith<$Res> {
  factory _$ConfirmationChangedCopyWith(_ConfirmationChanged value,
          $Res Function(_ConfirmationChanged) then) =
      __$ConfirmationChangedCopyWithImpl<$Res>;
  $Res call({String confirmation});
}

/// @nodoc
class __$ConfirmationChangedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$ConfirmationChangedCopyWith<$Res> {
  __$ConfirmationChangedCopyWithImpl(
      _ConfirmationChanged _value, $Res Function(_ConfirmationChanged) _then)
      : super(_value, (v) => _then(v as _ConfirmationChanged));

  @override
  _ConfirmationChanged get _value => super._value as _ConfirmationChanged;

  @override
  $Res call({
    Object confirmation = freezed,
  }) {
    return _then(_ConfirmationChanged(
      confirmation == freezed ? _value.confirmation : confirmation as String,
    ));
  }
}

/// @nodoc
class _$_ConfirmationChanged implements _ConfirmationChanged {
  const _$_ConfirmationChanged(this.confirmation)
      : assert(confirmation != null);

  @override
  final String confirmation;

  @override
  String toString() {
    return 'AuthEvent.confirmationChanged(confirmation: $confirmation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConfirmationChanged &&
            (identical(other.confirmation, confirmation) ||
                const DeepCollectionEquality()
                    .equals(other.confirmation, confirmation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(confirmation);

  @override
  _$ConfirmationChangedCopyWith<_ConfirmationChanged> get copyWith =>
      __$ConfirmationChangedCopyWithImpl<_ConfirmationChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result confirmationChanged(String confirmation),
    @required Result toggleShowConfirm(),
    @required Result loginPressed(),
    @required Result registrationPressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmationChanged != null);
    assert(toggleShowConfirm != null);
    assert(loginPressed != null);
    assert(registrationPressed != null);
    return confirmationChanged(confirmation);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result confirmationChanged(String confirmation),
    Result toggleShowConfirm(),
    Result loginPressed(),
    Result registrationPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (confirmationChanged != null) {
      return confirmationChanged(confirmation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(_EmailChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result confirmationChanged(_ConfirmationChanged value),
    @required Result toggleShowConfirm(_ToggleShowConfirm value),
    @required Result loginPressed(_LoginPressed value),
    @required Result registrationPressed(_RegitrationTriggers value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmationChanged != null);
    assert(toggleShowConfirm != null);
    assert(loginPressed != null);
    assert(registrationPressed != null);
    return confirmationChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(_EmailChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result confirmationChanged(_ConfirmationChanged value),
    Result toggleShowConfirm(_ToggleShowConfirm value),
    Result loginPressed(_LoginPressed value),
    Result registrationPressed(_RegitrationTriggers value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (confirmationChanged != null) {
      return confirmationChanged(this);
    }
    return orElse();
  }
}

abstract class _ConfirmationChanged implements AuthEvent {
  const factory _ConfirmationChanged(String confirmation) =
      _$_ConfirmationChanged;

  String get confirmation;
  _$ConfirmationChangedCopyWith<_ConfirmationChanged> get copyWith;
}

/// @nodoc
abstract class _$ToggleShowConfirmCopyWith<$Res> {
  factory _$ToggleShowConfirmCopyWith(
          _ToggleShowConfirm value, $Res Function(_ToggleShowConfirm) then) =
      __$ToggleShowConfirmCopyWithImpl<$Res>;
}

/// @nodoc
class __$ToggleShowConfirmCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$ToggleShowConfirmCopyWith<$Res> {
  __$ToggleShowConfirmCopyWithImpl(
      _ToggleShowConfirm _value, $Res Function(_ToggleShowConfirm) _then)
      : super(_value, (v) => _then(v as _ToggleShowConfirm));

  @override
  _ToggleShowConfirm get _value => super._value as _ToggleShowConfirm;
}

/// @nodoc
class _$_ToggleShowConfirm implements _ToggleShowConfirm {
  const _$_ToggleShowConfirm();

  @override
  String toString() {
    return 'AuthEvent.toggleShowConfirm()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ToggleShowConfirm);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result confirmationChanged(String confirmation),
    @required Result toggleShowConfirm(),
    @required Result loginPressed(),
    @required Result registrationPressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmationChanged != null);
    assert(toggleShowConfirm != null);
    assert(loginPressed != null);
    assert(registrationPressed != null);
    return toggleShowConfirm();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result confirmationChanged(String confirmation),
    Result toggleShowConfirm(),
    Result loginPressed(),
    Result registrationPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toggleShowConfirm != null) {
      return toggleShowConfirm();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(_EmailChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result confirmationChanged(_ConfirmationChanged value),
    @required Result toggleShowConfirm(_ToggleShowConfirm value),
    @required Result loginPressed(_LoginPressed value),
    @required Result registrationPressed(_RegitrationTriggers value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmationChanged != null);
    assert(toggleShowConfirm != null);
    assert(loginPressed != null);
    assert(registrationPressed != null);
    return toggleShowConfirm(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(_EmailChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result confirmationChanged(_ConfirmationChanged value),
    Result toggleShowConfirm(_ToggleShowConfirm value),
    Result loginPressed(_LoginPressed value),
    Result registrationPressed(_RegitrationTriggers value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toggleShowConfirm != null) {
      return toggleShowConfirm(this);
    }
    return orElse();
  }
}

abstract class _ToggleShowConfirm implements AuthEvent {
  const factory _ToggleShowConfirm() = _$_ToggleShowConfirm;
}

/// @nodoc
abstract class _$LoginPressedCopyWith<$Res> {
  factory _$LoginPressedCopyWith(
          _LoginPressed value, $Res Function(_LoginPressed) then) =
      __$LoginPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoginPressedCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$LoginPressedCopyWith<$Res> {
  __$LoginPressedCopyWithImpl(
      _LoginPressed _value, $Res Function(_LoginPressed) _then)
      : super(_value, (v) => _then(v as _LoginPressed));

  @override
  _LoginPressed get _value => super._value as _LoginPressed;
}

/// @nodoc
class _$_LoginPressed implements _LoginPressed {
  const _$_LoginPressed();

  @override
  String toString() {
    return 'AuthEvent.loginPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoginPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result confirmationChanged(String confirmation),
    @required Result toggleShowConfirm(),
    @required Result loginPressed(),
    @required Result registrationPressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmationChanged != null);
    assert(toggleShowConfirm != null);
    assert(loginPressed != null);
    assert(registrationPressed != null);
    return loginPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result confirmationChanged(String confirmation),
    Result toggleShowConfirm(),
    Result loginPressed(),
    Result registrationPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginPressed != null) {
      return loginPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(_EmailChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result confirmationChanged(_ConfirmationChanged value),
    @required Result toggleShowConfirm(_ToggleShowConfirm value),
    @required Result loginPressed(_LoginPressed value),
    @required Result registrationPressed(_RegitrationTriggers value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmationChanged != null);
    assert(toggleShowConfirm != null);
    assert(loginPressed != null);
    assert(registrationPressed != null);
    return loginPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(_EmailChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result confirmationChanged(_ConfirmationChanged value),
    Result toggleShowConfirm(_ToggleShowConfirm value),
    Result loginPressed(_LoginPressed value),
    Result registrationPressed(_RegitrationTriggers value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginPressed != null) {
      return loginPressed(this);
    }
    return orElse();
  }
}

abstract class _LoginPressed implements AuthEvent {
  const factory _LoginPressed() = _$_LoginPressed;
}

/// @nodoc
abstract class _$RegitrationTriggersCopyWith<$Res> {
  factory _$RegitrationTriggersCopyWith(_RegitrationTriggers value,
          $Res Function(_RegitrationTriggers) then) =
      __$RegitrationTriggersCopyWithImpl<$Res>;
}

/// @nodoc
class __$RegitrationTriggersCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$RegitrationTriggersCopyWith<$Res> {
  __$RegitrationTriggersCopyWithImpl(
      _RegitrationTriggers _value, $Res Function(_RegitrationTriggers) _then)
      : super(_value, (v) => _then(v as _RegitrationTriggers));

  @override
  _RegitrationTriggers get _value => super._value as _RegitrationTriggers;
}

/// @nodoc
class _$_RegitrationTriggers implements _RegitrationTriggers {
  const _$_RegitrationTriggers();

  @override
  String toString() {
    return 'AuthEvent.registrationPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RegitrationTriggers);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result confirmationChanged(String confirmation),
    @required Result toggleShowConfirm(),
    @required Result loginPressed(),
    @required Result registrationPressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmationChanged != null);
    assert(toggleShowConfirm != null);
    assert(loginPressed != null);
    assert(registrationPressed != null);
    return registrationPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result confirmationChanged(String confirmation),
    Result toggleShowConfirm(),
    Result loginPressed(),
    Result registrationPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registrationPressed != null) {
      return registrationPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(_EmailChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result confirmationChanged(_ConfirmationChanged value),
    @required Result toggleShowConfirm(_ToggleShowConfirm value),
    @required Result loginPressed(_LoginPressed value),
    @required Result registrationPressed(_RegitrationTriggers value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmationChanged != null);
    assert(toggleShowConfirm != null);
    assert(loginPressed != null);
    assert(registrationPressed != null);
    return registrationPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(_EmailChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result confirmationChanged(_ConfirmationChanged value),
    Result toggleShowConfirm(_ToggleShowConfirm value),
    Result loginPressed(_LoginPressed value),
    Result registrationPressed(_RegitrationTriggers value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registrationPressed != null) {
      return registrationPressed(this);
    }
    return orElse();
  }
}

abstract class _RegitrationTriggers implements AuthEvent {
  const factory _RegitrationTriggers() = _$_RegitrationTriggers;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

// ignore: unused_element
  _AuthState call(
      {@required String emailAddress,
      @required String password,
      @required String confirmation,
      @required bool showConfirmation,
      @required String errorMessage,
      @required int authStateChanged}) {
    return _AuthState(
      emailAddress: emailAddress,
      password: password,
      confirmation: confirmation,
      showConfirmation: showConfirmation,
      errorMessage: errorMessage,
      authStateChanged: authStateChanged,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  String get emailAddress;
  String get password;
  String get confirmation;
  bool get showConfirmation;
  String get errorMessage;
  int get authStateChanged;

  $AuthStateCopyWith<AuthState> get copyWith;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
  $Res call(
      {String emailAddress,
      String password,
      String confirmation,
      bool showConfirmation,
      String errorMessage,
      int authStateChanged});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object password = freezed,
    Object confirmation = freezed,
    Object showConfirmation = freezed,
    Object errorMessage = freezed,
    Object authStateChanged = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
      password: password == freezed ? _value.password : password as String,
      confirmation: confirmation == freezed
          ? _value.confirmation
          : confirmation as String,
      showConfirmation: showConfirmation == freezed
          ? _value.showConfirmation
          : showConfirmation as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
      authStateChanged: authStateChanged == freezed
          ? _value.authStateChanged
          : authStateChanged as int,
    ));
  }
}

/// @nodoc
abstract class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(
          _AuthState value, $Res Function(_AuthState) then) =
      __$AuthStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String emailAddress,
      String password,
      String confirmation,
      bool showConfirmation,
      String errorMessage,
      int authStateChanged});
}

/// @nodoc
class __$AuthStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(_AuthState _value, $Res Function(_AuthState) _then)
      : super(_value, (v) => _then(v as _AuthState));

  @override
  _AuthState get _value => super._value as _AuthState;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object password = freezed,
    Object confirmation = freezed,
    Object showConfirmation = freezed,
    Object errorMessage = freezed,
    Object authStateChanged = freezed,
  }) {
    return _then(_AuthState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
      password: password == freezed ? _value.password : password as String,
      confirmation: confirmation == freezed
          ? _value.confirmation
          : confirmation as String,
      showConfirmation: showConfirmation == freezed
          ? _value.showConfirmation
          : showConfirmation as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
      authStateChanged: authStateChanged == freezed
          ? _value.authStateChanged
          : authStateChanged as int,
    ));
  }
}

/// @nodoc
class _$_AuthState implements _AuthState {
  const _$_AuthState(
      {@required this.emailAddress,
      @required this.password,
      @required this.confirmation,
      @required this.showConfirmation,
      @required this.errorMessage,
      @required this.authStateChanged})
      : assert(emailAddress != null),
        assert(password != null),
        assert(confirmation != null),
        assert(showConfirmation != null),
        assert(errorMessage != null),
        assert(authStateChanged != null);

  @override
  final String emailAddress;
  @override
  final String password;
  @override
  final String confirmation;
  @override
  final bool showConfirmation;
  @override
  final String errorMessage;
  @override
  final int authStateChanged;

  @override
  String toString() {
    return 'AuthState(emailAddress: $emailAddress, password: $password, confirmation: $confirmation, showConfirmation: $showConfirmation, errorMessage: $errorMessage, authStateChanged: $authStateChanged)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthState &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.confirmation, confirmation) ||
                const DeepCollectionEquality()
                    .equals(other.confirmation, confirmation)) &&
            (identical(other.showConfirmation, showConfirmation) ||
                const DeepCollectionEquality()
                    .equals(other.showConfirmation, showConfirmation)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)) &&
            (identical(other.authStateChanged, authStateChanged) ||
                const DeepCollectionEquality()
                    .equals(other.authStateChanged, authStateChanged)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(confirmation) ^
      const DeepCollectionEquality().hash(showConfirmation) ^
      const DeepCollectionEquality().hash(errorMessage) ^
      const DeepCollectionEquality().hash(authStateChanged);

  @override
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {@required String emailAddress,
      @required String password,
      @required String confirmation,
      @required bool showConfirmation,
      @required String errorMessage,
      @required int authStateChanged}) = _$_AuthState;

  @override
  String get emailAddress;
  @override
  String get password;
  @override
  String get confirmation;
  @override
  bool get showConfirmation;
  @override
  String get errorMessage;
  @override
  int get authStateChanged;
  @override
  _$AuthStateCopyWith<_AuthState> get copyWith;
}
