import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: e.email,
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: e.password,
        );
      },
      confirmationChanged: (e) async* {
        yield state.copyWith(
          confirmation: e.confirmation,
        );
      },
      toggleShowConfirm: (e) async* {
        yield state.copyWith(
          showConfirmation: !state.showConfirmation,
        );
      },
      loginPressed: (e) async* {
      },
      registrationPressed: (e) async* {

      },
    );
  }
}
