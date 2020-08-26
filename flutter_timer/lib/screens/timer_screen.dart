import 'package:flutter/material.dart';
import 'package:flutter_timer/state/timer_state.dart';
import 'package:flutter_timer/widgets/play_button.dart';
import 'package:get/get.dart';

import '../widgets/bottom_nav_bar.dart';

class TimerScreen extends StatelessWidget {
  static const routeName = "/timer-screen";

  @override
  Widget build(BuildContext context) {
    final TimerState state = Get.put(TimerState());

    return Scaffold(
      body: Obx(() {
        if (!state.isRunning.value) {
          return PlayButton(onPressed: state.start);
        } else {
          return Center(
            child: Text(state.displayString.value,
                style: Theme.of(context).textTheme.headline1),
          );
        }
      }),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
