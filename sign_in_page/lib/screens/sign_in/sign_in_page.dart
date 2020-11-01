import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sign_in_page/bloc/auth_check_bloc/auth_bloc/auth_bloc.dart';
import 'package:sign_in_page/bloc/auth_check_bloc/auth_check_bloc.dart';

class SignInScreen extends StatelessWidget {
  static const String routeName = '/sign-in-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state.authStateChanged > 0) {
              context.bloc<AuthCheckBloc>().add(AuthEventAuthRequested());
            }
          },
          builder: (context, state) => Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      state.errorMessage,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.red.shade800,
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      decoration: const InputDecoration(
                        icon: Icon(Icons.email),
                        hintText: 'Email',
                      ),
                      autocorrect: false,
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (val) {
                        context
                            .bloc<AuthBloc>()
                            .add(AuthEvent.emailChanged(val));
                      },
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      decoration: const InputDecoration(
                        icon: Icon(Icons.lock_outline),
                        hintText: 'Password',
                      ),
                      autocorrect: false,
                      obscureText: true,
                      onChanged: (val) => context
                          .bloc<AuthBloc>()
                          .add(AuthEvent.passwordChanged(val)),
                    ),
                    if (state.showConfirmation) const SizedBox(height: 10),
                    if (state.showConfirmation)
                      TextField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.lock),
                          hintText: 'Confirmation',
                        ),
                        autocorrect: false,
                        obscureText: true,
                        onChanged: (val) => context
                            .bloc<AuthBloc>()
                            .add(AuthEvent.confirmationChanged(val)),
                      ),
                    const SizedBox(height: 50),
                    FlatButton(
                      color: Colors.indigo.shade700,
                      onPressed: () {
                        if (state.showConfirmation) {
                          context
                              .bloc<AuthBloc>()
                              .add(const AuthEvent.registrationPressed());
                        } else {
                          context
                              .bloc<AuthBloc>()
                              .add(const AuthEvent.loginPressed());
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 15,
                        ),
                        child: Text(
                          state.showConfirmation ? 'Register' : 'Sign In',
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 40,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        state.showConfirmation
                            ? 'Already have an account?'
                            : "Don't have an account?",
                      ),
                      const SizedBox(width: 10),
                      InkWell(
                        onTap: () => context
                            .bloc<AuthBloc>()
                            .add(const AuthEvent.toggleShowConfirm()),
                        child: Text(
                            state.showConfirmation
                                ? 'Sign In'
                                : 'Click to Register',
                            style: const TextStyle(color: Colors.blue)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
