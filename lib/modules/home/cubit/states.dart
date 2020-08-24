import 'package:flutter/foundation.dart';

@immutable
abstract class HomeStates {
  const HomeStates();
}

class InitialHomeState extends HomeStates {
    const InitialHomeState();
}

class LoadingHomeState extends HomeStates {
    const LoadingHomeState();
}

class SuccessHomeState extends HomeStates {
    const SuccessHomeState();
}

class ErrorHomeState extends HomeStates {
  final String error;

  const ErrorHomeState(this.error);
}