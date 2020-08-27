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
          return Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: PlayButton(onPressed: state.start),
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.topCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            padding: const EdgeInsets.only(right: 5),
                            width: MediaQuery.of(context).size.width * 0.25,
                            child: TextField(
                              controller: state.minutesInputController.value,
                              keyboardType: TextInputType.number,
                              maxLength: 3,
                              textAlign: TextAlign.end,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1
                                  .copyWith(
                                    color: Theme.of(context).accentColor,
                                  ),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 25,
                          ),
                          child: Text(
                            ':',
                            style: Theme.of(context).textTheme.headline1,
                          ),
                        ),
                        Container(
                            padding: const EdgeInsets.only(left: 7),
                            width: MediaQuery.of(context).size.width * 0.25,
                            child: TextField(
                              controller: state.secondsInputController.value,
                              keyboardType: TextInputType.number,
                              maxLength: 2,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1
                                  .copyWith(
                                    color: Theme.of(context).accentColor,
                                  ),
                            )),
                      ],
                    ),
                  )),
            ],
          );
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
