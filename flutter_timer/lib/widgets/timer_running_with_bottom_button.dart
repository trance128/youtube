import 'package:flutter/material.dart';

import 'pause_button.dart';
import 'play_button.dart';

class TimerRunningWithBottomButton extends StatelessWidget {
  const TimerRunningWithBottomButton({
    Key key,
    @required this.displayString,
    @required this.isRunning,
    @required this.pauseFunc,
    @required this.unpauseFunc,
  }) : super(key: key);

  final String displayString;
  final bool isRunning;
  final Function pauseFunc;
  final Function unpauseFunc;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            alignment: Alignment.bottomCenter,
            child: Text(
              displayString,
              style: Theme.of(context).textTheme.headline1.copyWith(
                    color: isRunning
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).accentColor,
                  ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.08),
            alignment: Alignment.topCenter,
            child: isRunning
                ? PauseButton(
                    onPressed: pauseFunc,
                    size: 80,
                  )
                : PlayButton(
                    onPressed: unpauseFunc,
                    size: 80,
                  ),
          ),
        ),
      ],
    );
  }
}
