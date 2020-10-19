import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sign_in_page/bloc/auth_check_bloc/auth_check_bloc.dart';
import 'package:sign_in_page/screens/home/home.dart';
import 'package:sign_in_page/screens/sign_in/sign_in_page.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = '/splash-screen';

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCheckBloc, AuthCheckState>(
      listener: (context, state) {
        if (state is AuthStateInitial) {
          return;
        } else if (state is AuthStateAuthenticated) {
          Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
        } else if (state is AuthStateUnauthenticated) {
          Navigator.of(context).pushReplacementNamed(SignInScreen.routeName);
        }
      },
      child: Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
