part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @required String emailAddress,
    @required String password,
    @required String confirmation,
    @required bool showConfirmation,
    @required String errorMessage,
    @required int authStateChanged,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
    emailAddress: '',
    password: '',
    confirmation: '',
    showConfirmation: false,
    errorMessage: '\n',
    authStateChanged: 0,
  );
}