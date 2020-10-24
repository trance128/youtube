part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.emailChanged(String email) = _EmailChanged;
  const factory AuthEvent.passwordChanged(String password) = _PasswordChanged;
  const factory AuthEvent.confirmationChanged(String confirmation) = _ConfirmationChanged;
  const factory AuthEvent.toggleShowConfirm() = _ToggleShowConfirm;
  const factory AuthEvent.loginPressed() = _LoginPressed;
  const factory AuthEvent.registrationPressed() = _RegitrationTriggers;
}