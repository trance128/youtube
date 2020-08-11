import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _screenIndex = 0;

  _setIndex(index) {
    setState(() {
      _screenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      Center(
        child:
            Text('First screen', style: Theme.of(context).textTheme.headline1),
      ),
      Center(
        child:
            Text('Second screen', style: Theme.of(context).textTheme.headline1),
      ),
      Center(
        child:
            Text('Third screen', style: Theme.of(context).textTheme.headline1),
      ),
    ];

    return Scaffold(
      body: screens[_screenIndex],
      bottomNavigationBar: _BottomNav(_screenIndex, _setIndex),
    );
  }
}

class _BottomNav extends StatefulWidget {
  final int index;
  final Function callback;

  const _BottomNav(this.index, this.callback) : super();

  @override
  __BottomNavState createState() => __BottomNavState();
}

class __BottomNavState extends State<_BottomNav> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: widget.index,
        elevation: 0,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Theme.of(context).accentColor,
        backgroundColor: Theme.of(context).backgroundColor,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        items: <BottomNavigationBarItem>[
          _buildNavItem(
            Icon(Icons.timer),
            'Stopwatch',
          ),
          _buildNavItem(
            Icon(Icons.slow_motion_video),
            'Timer',
          ),
          _buildNavItem(
            Icon(Icons.settings),
            'Settings',
          ),
        ],
        onTap: (index) {
          widget.callback(index);
        });
  }
}

_buildNavItem(Icon icon, String title) {
  return BottomNavigationBarItem(
    icon: Padding(
      padding: const EdgeInsets.all(10),
      child: icon,
    ),
    title: Text(
      title,
    ),
  );
}
