import 'package:flutter/foundation.dart';

@immutable
abstract class DeviceReadStates {
  const DeviceReadStates();
}

class InitialDeviceReadState extends DeviceReadStates {
    const InitialDeviceReadState();
}

class LoadingDeviceReadState extends DeviceReadStates {
    const LoadingDeviceReadState();
}

class SuccessDeviceReadState extends DeviceReadStates {
    const SuccessDeviceReadState();
}

class ErrorDeviceReadState extends DeviceReadStates {
  final String error;

  const ErrorDeviceReadState(this.error);
}