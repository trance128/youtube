import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;
  
  AuthBloc(this._authRepository) : super(AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        print('Email changed: ${e.email}');
        yield state.copyWith(
          emailAddress: e.email,
        );
      },
      passwordChanged: (e) async* {
        print('Password changed: ${e.password}');
        yield state.copyWith(
          password: e.password,
        );
      },
      confirmationChanged: (e) async* {
        print('Confirmation changed: ${e.confirmation}');
        yield state.copyWith(
          confirmation: e.confirmation,
        );
      },
      toggleShowConfirm: (e) async* {
        yield state.copyWith(
          showConfirmation: !state.showConfirmation,
          errorMessage: '\n',
        );
      },
      loginPressed: (e) async* {
        final bool result = _authRepository.signInWithEmailAndPassword(state.emailAddress, state.password);

        if (result) {
          print('Success');
          yield state.copyWith(
            authStateChanged: state.authStateChanged + 1,
          );
        } else {
          print('No success');
          yield state.copyWith(
            errorMessage: 'Invalid Email and\nPassword Combination',
          );
        }
      },
      registrationPressed: (e) async* {
        final bool passwordsMatch = state.confirmation == state.password;

        if (passwordsMatch) {
          print('Success');
          yield state.copyWith(
            authStateChanged: state.authStateChanged + 1,
          );
        } else {
          yield state.copyWith(
            errorMessage: 'Password and Confirmation\nmust match',
          );
        }
      },
    );
  }
}
