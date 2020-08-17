import 'package:equatable/equatable.dart';
import 'package:farmers21/ui/devices/bloc/devices_model.dart';

abstract class DeviceEvents extends Equatable {
  const DeviceEvents();
}

class SelectDeviceEvent extends DeviceEvents {
  final DevicesBody device;

  SelectDeviceEvent(this.device);

  @override
  List<Object> get props => [device];
}

class FetchDeviceEvent extends DeviceEvents {
  final String token;
  final String device_id;

  FetchDeviceEvent(this.token, this.device_id);

  @override
  List<Object> get props => [token, device_id];
}

class RefreshDeviceEvent extends DeviceEvents {
  final String token;
  final String device_id;

  RefreshDeviceEvent(this.token, this.device_id);

  @override
  List<Object> get props => [token, device_id];
}
