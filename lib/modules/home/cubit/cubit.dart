import 'package:farmers21/models/farms/farms_model.dart';
import 'package:farmers21/shared/network/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'states.dart';

class HomeCubit extends Cubit<HomeStates> {
  final Repository _repository;

  FarmsModel farmsModel = FarmsModel.initial();

  HomeCubit(this._repository) : super(InitialHomeState());

  static HomeCubit get(BuildContext context) => context.bloc<HomeCubit>();

  Future<void> getFarms({
    String url,
    String token,
  }) async {
    emit(LoadingHomeState());

    final f = await _repository.getFarms(
      url: url,
      token: token,
    );

    f.fold(
      (l) async {
        emit(ErrorHomeState(l));
      },
      (r) async {
        farmsModel = r;
        emit(SuccessHomeState());
      },
    );
  }
}
