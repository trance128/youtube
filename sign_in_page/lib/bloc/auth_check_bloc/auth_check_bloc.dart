import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../auth_repository.dart';

part 'auth_check_bloc_event.dart';
part 'auth_check_bloc_state.dart';

class AuthCheckBloc extends Bloc<AuthCheckEvent, AuthCheckState> {
  final AuthRepository _authRepository;

  AuthCheckBloc(
    this._authRepository,
  ) : super(AuthStateInitial());

  @override
  Stream<AuthCheckState> mapEventToState(
    AuthCheckEvent event,
  ) async* {
    if (event is AuthEventAuthRequested) {
      final isUserAuthenticated = _authRepository.isUserAuthenticated();

      if (isUserAuthenticated) {
        yield AuthStateAuthenticated();
      } else {
        yield AuthStateUnauthenticated();
      }
    }
  }
}
