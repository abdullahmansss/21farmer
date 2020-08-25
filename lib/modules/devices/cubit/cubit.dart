import 'package:farmers21/models/devices/devices_model.dart';
import 'package:farmers21/shared/network/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'states.dart';

class DevicesCubit extends Cubit<DevicesStates> {
  final Repository _repository;

  DevicesModel devicesModel = DevicesModel.initial();

  DevicesCubit(this._repository) : super(InitialDevicesState());

  static DevicesCubit get(BuildContext context) => context.bloc<DevicesCubit>();

  Future<void> getDevices({
    String url,
    String token,
    String id,
  }) async {
    emit(LoadingDevicesState());

    final f = await _repository.getDevices(
      id: id,
      url: url,
      token: token,
    );

    f.fold(
    (l) async
    {
        emit(ErrorDevicesState(l));
    },
    (r) async
    {
      devicesModel = r;
      emit(SuccessDevicesState());
    },
    );
  }
}