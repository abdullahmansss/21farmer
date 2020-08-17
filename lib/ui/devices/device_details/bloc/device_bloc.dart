import 'package:farmers21/sevices/repository.dart';
import 'package:farmers21/ui/devices/bloc/devices_model.dart';
import 'package:farmers21/ui/devices/device_details/bloc/device_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'device_events.dart';
import 'device_states.dart';

class DeviceBloc extends Bloc<DeviceEvents, DeviceStates> {
  final Repository repository = Repository();

  @override
  DeviceStates get initialState => InitialDeviceState();

  DevicesBody deviceBody = DevicesBody.initial();

  @override
  Stream<DeviceStates> mapEventToState(DeviceEvents event) async* {
    if (event is SelectDeviceEvent) {
      deviceBody = event.device;
    }
    if (event is FetchDeviceEvent) {
      yield LoadingDeviceState();
      try {
        deviceBody =
            DeviceModel(await repository.getDevice(api_token: event.token, device_id: event.device_id)).deviceBody;
        yield HasDeviceState();
      } catch (e) {
        print(e);
        yield ErrorDeviceState(e.toString());
      }
    }
    if (event is RefreshDeviceEvent) {
      yield RefreshingDeviceState();
      try {
        deviceBody =
            DeviceModel(await repository.getDevice(api_token: event.token, device_id: event.device_id)).deviceBody;
        yield HasDeviceState();
      } catch (e) {
        print(e);
        yield ErrorDeviceState(e.toString());
      }
    }
  }
}
