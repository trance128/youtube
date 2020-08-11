import 'package:flutter/material.dart';
import 'package:flutter_timer/screens/home_screen_finished.dart';

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
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}