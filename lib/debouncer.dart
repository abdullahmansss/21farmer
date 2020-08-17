import 'dart:async';
import 'package:flutter/foundation.dart';

class Debouncer {
  final int milliseconds = 250;
  VoidCallback action;
  Timer _timer;

  run(VoidCallback action) {
    if (_timer != null) {
      _timer.cancel();
    }

    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }
}