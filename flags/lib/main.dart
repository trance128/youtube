// Welcome Again to The Complete (FREE) Flutter Course
// Presented by, Ovidius Mazuru

// 3.5) Layouts Exercise Solution | Thai Flag, Norway Flag

import 'package:flutter/material.dart';

import 'norway_flag.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: NorwayFlag(),
        ),
      ),
    );
  }
}
