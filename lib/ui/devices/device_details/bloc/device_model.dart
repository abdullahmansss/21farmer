import 'package:farmers21/ui/devices/bloc/devices_model.dart';

class DeviceModel {
  final num statusCode;
  final DevicesBody deviceBody;

  DeviceModel(dynamic data)
      : statusCode = data['statusCode'],
        deviceBody = DevicesBody(data['body']);
}
