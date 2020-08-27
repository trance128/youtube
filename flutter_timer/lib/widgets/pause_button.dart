import 'package:flutter/material.dart';

import 'custom_button.dart';

class PauseButton extends StatelessWidget {
  final Function onPressed;
  final double size;

  const PauseButton({
    Key key,
    @required this.onPressed,
    @required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onPressed: onPressed,
      size: size,
      icon: Icons.pause_circle_outline,
    );
  }
}
