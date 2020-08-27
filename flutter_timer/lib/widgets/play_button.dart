import 'package:flutter/material.dart';

class PlayButton extends StatelessWidget {
  final Function onPressed;

  const PlayButton({Key key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Icon(
        Icons.play_circle_outline,
        size: 200,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
