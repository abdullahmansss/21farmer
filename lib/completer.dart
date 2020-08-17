import 'dart:async';

class MyCompleter {
  Completer _completer = Completer();

  Future get future => _completer.future;

  complete() {
    _completer.complete();
    _completer = Completer();
  }
}
