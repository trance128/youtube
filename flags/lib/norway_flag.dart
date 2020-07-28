import 'package:flutter/material.dart';

class NorwayFlag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BuildTopAndBottom(),
        BuildMiddle(),
        BuildTopAndBottom(),
      ],
    );
  }
}

class BuildMiddle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Row(
        children: [
          Expanded(
            flex: 7,
            child: Column(
              children: [
                BuildBox(1, Colors.white),
                BuildBox(2, Colors.blue),
                BuildBox(1, Colors.white),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 13,
            child: Column(
              children: [
                BuildBox(1, Colors.white),
                BuildBox(2, Colors.blue),
                BuildBox(1, Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BuildTopAndBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: Row(
        children: [
          BuildBox(6, Colors.red),
          Expanded(
            flex: 4,
            child: Row(
              children: [
                BuildBox(1, Colors.white),
                BuildBox(2, Colors.blue),
                BuildBox(1, Colors.white),
              ],
            ),
          ),
          BuildBox(12, Colors.red),
        ],
      ),
    );
  }
}

class BuildBox extends StatelessWidget {
  final int flex;
  final Color color;

  const BuildBox(this.flex, this.color) : super();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(
        color: color,
      ),
    );
  }
}
