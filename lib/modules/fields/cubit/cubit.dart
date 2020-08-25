import 'package:farmers21/models/fields/fields_model.dart';
import 'package:farmers21/shared/network/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'states.dart';

class FieldsCubit extends Cubit<FieldsStates> {
  final Repository _repository;

  FieldsModel fieldsModel = FieldsModel.initial();

  FieldsCubit(this._repository) : super(InitialFieldsState());

  static FieldsCubit get(BuildContext context) => context.bloc<FieldsCubit>();

  Future<void> getFields({
    String url,
    String token,
    String id,
  }) async {
    emit(LoadingFieldsState());

    final f = await _repository.getFields(
      token: token,
      id: id,
      url: url,
    );

    f.fold(
    (l) async
    {
        emit(ErrorFieldsState(l));
    },
    (r) async
    {
      fieldsModel = r;
      emit(SuccessFieldsState());
    },
    );
  }
}