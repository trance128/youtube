// Welcome Again to the Complete (FREE) Flutter Course
// Presented by, Ovidius Mazuru

// 3.3) Flutter Layout | Container, Row, Column

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Layout(),
      ),
    );
  }
}

class Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              alignment: Alignment.bottomCenter,
              color: Colors.red,
              child: Text('Hello, World',
                  style: TextStyle(
                    fontSize: 50,
                  )),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
