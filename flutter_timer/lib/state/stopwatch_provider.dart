import 'dart:async';

import 'package:flutter/material.dart';

class StopwatchProvider with ChangeNotifier {
  Stopwatch _sw = Stopwatch();
  String _returnString = '00:00';
  bool _isStarted = false;
  Timer t;

  String get time => _returnString;

  bool get isRunning => _sw.isRunning;
  bool get isStarted => _isStarted;

  String get elapsedTimeString => _returnString;

  void start() {
    _sw.start();
    _isStarted = true;
    updateSWString();
    notifyListeners();
  }

  void pause() {
    _sw.stop();
    t.cancel();
    notifyListeners();
  }

  void unpause() {
    if (!_sw.isRunning) {
      _sw.start();
      updateSWString();
      notifyListeners();
    }
  }

  void reset() {
    _sw.stop();
    _sw.reset();
    t.cancel();
    _isStarted = false;
    _returnString = "00:00";
    notifyListeners();
  }

  void updateSWString() {
    t = Timer.periodic(Duration(seconds: 1), (t) {
      _returnString = _buildReturnString();
      print(_returnString);
      notifyListeners();
    });
  }

  String _buildReturnString() {
    /// Builds an appropriate return string for a stopwatch, in the format
    /// HH:MM:SS
    /// ie. 01:23:45
    String str = '';

    String _buildSeconds() {
      return (_sw.elapsed.inSeconds % 60) > 9 ? '${_sw.elapsed.inSeconds % 60}' : '0${_sw.elapsed.inSeconds % 60}';
    }

    String _buildMinutes() {
      return (_sw.elapsed.inMinutes % 60) > 9 ? '${_sw.elapsed.inMinutes % 60}:${_buildSeconds()}' : '0${_sw.elapsed.inMinutes % 60}:${_buildSeconds()}';
    }

    if (_sw.elapsed.inHours >= 1) {
      str += "${_sw.elapsed.inHours < 10 ? 0 : ''}${_sw.elapsed.inHours}";
    }

    str = str + _buildMinutes();
    return str;
  }
}