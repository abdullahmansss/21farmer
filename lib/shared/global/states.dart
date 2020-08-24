import 'package:flutter/foundation.dart';

@immutable
abstract class GlobalStates {
  const GlobalStates();
}

class InitialGlobalState extends GlobalStates {
    const InitialGlobalState();
}

class LoadingGlobalState extends GlobalStates {
    const LoadingGlobalState();
}

class SuccessGlobalState extends GlobalStates {
    const SuccessGlobalState();
}

class ErrorGlobalState extends GlobalStates {
  final String error;

  const ErrorGlobalState(this.error);
}