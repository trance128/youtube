// Welcome Again to the Complete (FREE) Flutter Course
// Presented by, Ovidius Mazuru

import 'package:flutter/material.dart';
import 'package:flutter_timer/screens/options_screen.dart';
import 'package:flutter_timer/screens/stopwatch_screen.dart';
import 'package:flutter_timer/screens/timer_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _screenIndex = 0;
  void setIndex(index) {
    setState(() {
      _screenIndex = index;
    });
  }

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
      routes: {
        StopwatchScreen.routeName: (context) => StopwatchScreen(
              screenIndex: _screenIndex,
              setIndexCallback: setIndex,
            ),
        TimerScreen.routeName: (context) => TimerScreen(
              screenIndex: _screenIndex,
              setIndexCallback: setIndex,
            ),
        OptionsScreen.routeName: (context) => OptionsScreen(
              screenIndex: _screenIndex,
              setIndexCallback: setIndex,
            ),
      },
      home: StopwatchScreen(
        screenIndex: _screenIndex,
        setIndexCallback: setIndex,
      ),
    );
  }
}
