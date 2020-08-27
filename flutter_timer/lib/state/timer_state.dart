import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TimerState extends GetxController {
  Stopwatch _tsw = Stopwatch();
  Timer t;
  // the two lines below are the same, just different ways of 
  // doing the same thing
  var displayString = RxString("25.00");
  var isRunning = RxBool(false);

  var startMinChanged = false.obs;
  var startSecChanged = false.obs;

  var minutesInputController = TextEditingController().obs..value.text = "25";
  var secondsInputController = TextEditingController().obs..value.text = "00";

  void start() {
    print("Starting timer");
    if (!_tsw.isRunning) {
      displayString.value = updateDisplayString();
      _tsw.start();
      periodicUpdateDisplayString();
      isRunning.value = true;
    }
  }

  void pause() {
    if (_tsw.isRunning) {
      _tsw.stop();
    }
  }

  void unpause() {
    if (!_tsw.isRunning) {
      _tsw.start();
      // perdioc function
    }
  }

  void reset() {
    _tsw.reset();
    // stop periodic function
  }

  void periodicUpdateDisplayString() {
    print("Starting periodic update");
    Timer.periodic(Duration(seconds: 1), (t) {
      displayString.value = updateDisplayString();
      print(displayString.value);
    });
  }

  String updateDisplayString() {
    String str = "";
    int startingMin = int.parse(minutesInputController.value.text);
    int startSec = int.parse(secondsInputController.value.text);

    // 24.59 
    if ((startSec - _tsw.elapsed.inSeconds % 60) < 0) {
      str += "${startingMin - _tsw.elapsed.inMinutes - 1}:";
    } else {
      str += "${startingMin - _tsw.elapsed.inMinutes}:";
    }

    // padLeft will insert some character to make it be equal in length to whatever
    // value we set
    str += "${((startSec - _tsw.elapsed.inSeconds) % 60).toString().padLeft(2, "0")}";
    return str;
  }
}