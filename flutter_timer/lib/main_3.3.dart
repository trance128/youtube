// Welcome Again to the Complete (FREE) Flutter Course
// Presented by, Ovidius Mazuru

import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.white54,
        backgroundColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
          subtitle2: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}