import 'package:flutter/material.dart';

import '../widgets/bottom_nav_bar.dart';

class OptionsScreen extends StatefulWidget {
  static const routeName = "/options-screen";

  final int screenIndex;
  final Function setIndexCallback;

  const OptionsScreen({Key key, this.screenIndex, this.setIndexCallback})
      : super(key: key);

  @override
  _OptionsScreenState createState() => _OptionsScreenState();
}

class _OptionsScreenState extends State<OptionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text('Options Screen',
              style: Theme.of(context).textTheme.headline1)),
      bottomNavigationBar: BottomNavBar(
        index: widget.screenIndex,
        callback: widget.setIndexCallback,
      ),
    );
  }
}
