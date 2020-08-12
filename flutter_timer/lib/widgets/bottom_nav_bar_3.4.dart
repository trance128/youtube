import 'package:flutter/material.dart';

import '../screens/options_screen.dart';
import '../screens/stopwatch_screen.dart';
import '../screens/timer_screen.dart';

class BottomNavBar extends StatefulWidget {
  final int index;
  final Function callback;

  const BottomNavBar({
    Key key,
    this.index,
    this.callback,
  }) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    _BuildNavBarItem(Icon icon, String title) {
      return BottomNavigationBarItem(
        icon: Padding(padding: const EdgeInsets.all(10), child: icon),
        title: Text(title),
      );
    }

    return BottomNavigationBar(
      elevation: 0,
      currentIndex: widget.index,
      unselectedFontSize: 14,
      selectedFontSize: 14,
      unselectedItemColor: Theme.of(context).accentColor,
      backgroundColor: Theme.of(context).backgroundColor,
      items: <BottomNavigationBarItem>[
        _BuildNavBarItem(
          Icon(Icons.timer),
          'Stopwatch',
        ),
        _BuildNavBarItem(
          Icon(Icons.slow_motion_video),
          'Timer',
        ),
        _BuildNavBarItem(
          Icon(Icons.settings),
          'Settings',
        ),
      ],
      onTap: (ind) {
        widget.callback(ind);
      },
    );
  }
}
