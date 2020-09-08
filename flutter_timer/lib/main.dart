// Welcome Again to the Complete (FREE) Flutter Course
// Presented by, Ovidius Mazuru

import 'package:flutter/material.dart';
import 'package:flutter_timer/screens/options_screen.dart';
import 'package:flutter_timer/screens/stopwatch_screen.dart';
import 'package:flutter_timer/screens/timer_screen.dart';
import 'package:flutter_timer/state/nav_bar_state.dart';
import 'package:flutter_timer/state/stopwatch_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NavBarState(
      child: ChangeNotifierProvider(
        create: (_) => StopwatchProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: Colors.white,
            accentColor: Colors.white38,
            errorColor: Color.fromRGBO(150, 0, 15, 1),
            backgroundColor: Colors.black,
            scaffoldBackgroundColor: Colors.black,
            textTheme: TextTheme(
              headline1: TextStyle(
                fontSize: 75,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
              headline2: TextStyle(
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
          home: StopwatchScreen(),
        ),
      ),
    );
  }
}
