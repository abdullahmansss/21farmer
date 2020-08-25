import 'package:flutter/foundation.dart';

@immutable
abstract class DevicesStates {
  const DevicesStates();
}

class InitialDevicesState extends DevicesStates {
    const InitialDevicesState();
}

class LoadingDevicesState extends DevicesStates {
    const LoadingDevicesState();
}

class SuccessDevicesState extends DevicesStates {
    const SuccessDevicesState();
}

class ErrorDevicesState extends DevicesStates {
  final String error;

  const ErrorDevicesState(this.error);
}