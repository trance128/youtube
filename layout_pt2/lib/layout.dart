import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            BuildBox(color: Colors.blue),
            Container(
              height: 100,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                BuildBox(color: Colors.red),
                BuildBox(color: Colors.indigo)
              ]),
            ),
            BuildBox(color: Colors.deepPurple),
          ],
        ),
      ),
    );
  }
}

class BuildBox extends StatelessWidget {
  final MaterialColor color;

  const BuildBox({Key key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
          child: Container(
        height: 100,
        width: 100,
        color: color,
      ),
    );
  }
}
