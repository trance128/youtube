import 'package:flutter/material.dart';

class ThaiFlag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BuildBox(1, Colors.red),
        BuildBox(1, Colors.white),
        BuildBox(2, Colors.blue[900]),
        BuildBox(1, Colors.white),
        BuildBox(1, Colors.red),
      ],
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