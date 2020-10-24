import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  static const String routeName = '/sign-in-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text(
            'Sign In',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 30),
          const TextField(
            decoration: InputDecoration(
              hintText: 'Email',
            ),
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 10),
          const TextField(
            decoration: InputDecoration(
              hintText: 'Password',
            ),
            autocorrect: false,
            obscureText: true,
          ),
          const SizedBox(height: 10),
          FlatButton(
            color: Colors.indigo.shade700,
            onPressed: () {},
            child: const Text('Sign In'),
          ),
        ],
      ),
    );
  }
}
