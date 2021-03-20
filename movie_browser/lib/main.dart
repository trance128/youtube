import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'init_app.dart';
import 'presentation/screens/home_screen.dart';

void main() async {
  await initApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
