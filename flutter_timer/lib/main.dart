// Welcome Again to the Complete (FREE) Flutter Course
// Presented by, Ovidius Mazuru

import 'package:flutter/material.dart';
import 'package:flutter_timer/screens/options_screen.dart';
import 'package:flutter_timer/screens/stopwatch_screen.dart';
import 'package:flutter_timer/screens/timer_screen.dart';
import 'package:flutter_timer/state/nav_bar_state.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NavBarState(
      child: MaterialApp(
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
          StopwatchScreen.routeName: (context) => StopwatchScreen(),
          TimerScreen.routeName: (context) => TimerScreen(),
          OptionsScreen.routeName: (context) => OptionsScreen(),
        },
        home: TimerScreen(),
      ),
    );
  }
}
