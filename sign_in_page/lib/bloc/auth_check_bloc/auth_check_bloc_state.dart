part of 'auth_check_bloc.dart';

@immutable
abstract class AuthCheckState {}

class AuthStateInitial extends AuthCheckState {}

class AuthStateAuthenticated extends AuthCheckState {}

class AuthStateUnauthenticated extends AuthCheckState {}
