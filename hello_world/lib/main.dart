// Welcome Again to The Complete (FREE) Flutter Course
// Presented by, Ovidius Mazuru

// 3.2) Layout

import 'package:flutter/material.dart';

// All dart programs start with a void main, and Flutter projects are always 
// dart programs
void main() {
  // runApp is a function Flutter gives us, which turns our widgets into something the 
  // user can see
  runApp(MyApp());
}

// MyApp extends StatelessWidget -- in other words, we get all the code google write
// in StatelessWidget. 
class MyApp extends StatelessWidget {
  // We need to override the build method, which tells Flutter how to actually build our
  // widget to the screen
  @override
  Widget build(BuildContext context) {
    // Our root widget should be a MaterialApp or CupertionApp, which handles many details
    // for us, such as the direction of text (the one we had to specify when we didn't use
    // MaterialApp).  MaterialApp gives us much much more, such as navigation etc.  We'll
    // of course go over those things in the future
    return MaterialApp(
      // While it's not necessary, it's recommended to use a Scaffold as the next child.  
      // A scaffold provides a layout for our page.  This will be useful when our page 
      // is more than just a single centered Text widget
      home: Scaffold(
        backgroundColor: Colors.blue[50],
        body: Center(
          child: Text(
            'Hello, World!',
            // style allows us to specify text style, such as fontSize and color
            style: TextStyle(
              fontSize: 50,
              color: Colors.blueGrey[900],
            ),
          ),
        ),
      ),
    );
  }
}
