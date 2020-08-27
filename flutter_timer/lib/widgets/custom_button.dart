import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function onPressed;
  final double size;
  final IconData icon;

  const CustomButton({
    Key key,
    @required this.onPressed,
    @required this.size,
    @required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: size,
      icon: Icon(icon,
          color: Theme.of(context).primaryColor),
      onPressed: onPressed,
    );
  }
}
