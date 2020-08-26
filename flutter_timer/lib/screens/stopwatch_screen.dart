import 'package:flutter/material.dart';
import 'package:flutter_timer/state/stopwatch_provider.dart';
import 'package:flutter_timer/widgets/play_button.dart';
import 'package:provider/provider.dart';

import '../widgets/bottom_nav_bar.dart';

class StopwatchScreen extends StatelessWidget {
  static const routeName = "/stopwatch-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (_) => StopwatchProvider(),
        child: Consumer<StopwatchProvider>(
          builder: (ctx, state, _) {
            if (state.isRunning) {
              return Center(
                child: Text(state.elapsedTimeString,
                    style: Theme.of(context).textTheme.headline1),
              );
            } else {
              return PlayButton(onPressed: state.start);
            }
          },
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
