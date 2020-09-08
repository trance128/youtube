import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:audioplayers/audio_cache.dart';

class TimerState extends GetxController {
  Stopwatch _tsw = Stopwatch();
  Timer t, t2;

  final player = AudioCache();

  // the two lines below are the same, just different ways of 
  // doing the same thing
  var displayString = RxString("25.00");
  var isRunning = RxBool(false);
  var isStarted = Rx<bool>(false);
  var isTimerFinished = RxBool(false);

  var showErrorColor = RxBool(false);

  var startMinChanged = false.obs;
  var startSecChanged = false.obs;

  var minutesInputController = TextEditingController().obs..value.text = "25";
  var secondsInputController = TextEditingController().obs..value.text = "00";

  void start() {
    print("Starting timer");
    if (!_tsw.isRunning) {
      print("I'm in the if statement");
      displayString.value = updateDisplayString();
      _tsw.start();
      periodicUpdateDisplayString();
      isRunning.value = true;
      isStarted.value = true;
      isTimerFinished.value = false;
    }
  }

  void pause() {
    if (_tsw.isRunning) {
      _tsw.stop();
      t.cancel();
      isRunning.value = false;
    }
  }

  void unpause() {
    if (!_tsw.isRunning) {
      _tsw.start();
      // perdioc function
      periodicUpdateDisplayString();
      isRunning.value = true;
    }
  }

  void reset() {
    _tsw.stop();
    _tsw.reset();
    // stop periodic function
    t.cancel();
    t2.cancel();
    isRunning.value = false;
    isStarted.value = false;
    isTimerFinished.value = false;
    showErrorColor.value = false;
  }

  void periodicUpdateDisplayString() {
    print("Starting periodic update");
    t = Timer.periodic(Duration(seconds: 1), (t) {
      displayString.value = updateDisplayString();
      print(displayString.value);
    });
  }

  String updateDisplayString() {
    String str = "";
    int startingMin = int.parse(minutesInputController.value.text);
    int startSec = int.parse(secondsInputController.value.text);

    // 24:11
    if (_tsw.elapsed.inMinutes >= startingMin && _tsw.elapsed.inSeconds >= startSec) {
      setTimerToFinished();
      str = "00:00";
    } else {
      // 24.59 
      if ((startSec - _tsw.elapsed.inSeconds % 60) < 0) {
        str += "${(startingMin - _tsw.elapsed.inMinutes - 1).toString().padLeft(2, "0")}:";
      } else {
        str += "${(startingMin - _tsw.elapsed.inMinutes).toString().padLeft(2, "0")}:";
      }

      // padLeft will insert some character to make it be equal in length to whatever
      // value we set
      str += "${((startSec - _tsw.elapsed.inSeconds) % 60).toString().padLeft(2, "0")}";
    }
    
    return str;
  }

  void setTimerToFinished() {
    t.cancel();
    isTimerFinished.value = true;
    int i = 0;

    t2 = Timer.periodic(Duration(milliseconds: 250), (t2) {
      showErrorColor.value = !showErrorColor.value;

      // this will only play the sound every 4th time this function runs
      if (i % 4 == 0) {
        player.play('alarm.wav');
      }
      i++;
      
    });
  }

  void dispose() {
    t.cancel();
    t2.cancel();
    minutesInputController.value.dispose();
    secondsInputController.value.dispose();
  }
}