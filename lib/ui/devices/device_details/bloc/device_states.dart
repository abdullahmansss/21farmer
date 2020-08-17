import 'package:equatable/equatable.dart';

abstract class DeviceStates extends Equatable {
  const DeviceStates();
}

class InitialDeviceState extends DeviceStates {
  @override
  List<Object> get props => [];
}

class HasDeviceState extends DeviceStates {
  @override
  List<Object> get props => [];
}

class LoadingDeviceState extends DeviceStates {
  @override
  List<Object> get props => [];
}

class RefreshingDeviceState extends DeviceStates {
  @override
  List<Object> get props => [];
}

class ErrorDeviceState extends DeviceStates {
  final String error;

  ErrorDeviceState(this.error);

  @override
  List<Object> get props => [error];
}
