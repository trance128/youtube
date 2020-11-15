import 'package:flutter/material.dart';
import 'package:movie_browser_tutorial/presentation/misc/my_colors.dart';

BoxDecoration bg_gradient = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      myColors[PALE_PRIMARY_BG],
      Colors.white,
      Colors.white,
    ]
  ),
);