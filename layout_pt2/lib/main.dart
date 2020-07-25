// Welcome Again to The Complete (FREE) Flutter Course
// Presented by, Ovidius Mazuru

// 3.4) Layouts pt 2 | Columns, Rows, mainAxisAlignment, crossAxisAlignment

import 'package:flutter/material.dart';

import 'layout.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Layout(),
        ),
      ),
    );
  }
}
