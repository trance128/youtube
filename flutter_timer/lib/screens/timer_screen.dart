import 'package:flutter/material.dart';

import '../widgets/bottom_nav_bar.dart';

class TimerScreen extends StatefulWidget {
  static const routeName = "/timer-screen";

  final int screenIndex;
  final Function setIndexCallback;

  const TimerScreen({Key key, this.screenIndex, this.setIndexCallback})
      : super(key: key);

  @override
  _TimerScreenState createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text('Timer Screen',
              style: Theme.of(context).textTheme.headline1)),
      bottomNavigationBar: BottomNavBar(
        index: widget.screenIndex,
        callback: widget.setIndexCallback,
      ),
    );
  }
}
