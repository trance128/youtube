import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'auth_check_bloc_event.dart';
part 'auth_check_bloc_state.dart';

class AuthCheckBlocBloc extends Bloc<AuthCheckBlocEvent, AuthCheckBlocState> {
  AuthCheckBlocBloc() : super(AuthCheckBlocInitial());

  @override
  Stream<AuthCheckBlocState> mapEventToState(
    AuthCheckBlocEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
