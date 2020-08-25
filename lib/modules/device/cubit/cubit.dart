import 'package:farmers21/models/Reads/reads_model.dart';
import 'package:farmers21/shared/network/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'states.dart';

class DeviceReadCubit extends Cubit<DeviceReadStates>
{
  final Repository _repository;

  ReadsModel readsModel = ReadsModel.initial();

  DeviceReadCubit(this._repository) : super(InitialDeviceReadState());

  static DeviceReadCubit get(BuildContext context) => context.bloc<DeviceReadCubit>();

  Future<void> getDeviceReads({
    String url,
    String token,
    String id,
  }) async {
    emit(LoadingDeviceReadState());

    final f = await _repository.getDeviceReads(
      id: id,
      token: token,
      url: url,
    );

    f.fold(
    (l) async
    {
        emit(ErrorDeviceReadState(l));
    },
    (r) async
    {
      readsModel = r;
      emit(SuccessDeviceReadState());
    },
    );
  }
}