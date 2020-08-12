import 'package:flutter/material.dart';

import '../widgets/bottom_nav_bar.dart';

class StopwatchScreen extends StatefulWidget {
  static const routeName = "/stopwatch-screen";
  
  final int screenIndex;
  final Function setIndexCallback;

  const StopwatchScreen({Key key, this.screenIndex, this.setIndexCallback}) : super(key: key);

  @override
  _StopwatchScreenState createState() => _StopwatchScreenState();
}

class _StopwatchScreenState extends State<StopwatchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Stopwatch Screen', style: Theme.of(context).textTheme.headline1)
      ),
      bottomNavigationBar: BottomNavBar(
        index: widget.screenIndex,
        callback: widget.setIndexCallback,
      ),
    );
  }
}