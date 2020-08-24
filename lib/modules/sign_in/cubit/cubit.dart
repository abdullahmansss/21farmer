import 'package:farmers21/models/login/login_model.dart';
import 'package:farmers21/shared/network/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'states.dart';

class LoginCubit extends Cubit<LoginStates> {
  final Repository _repository;

  LoginModel loginModel = LoginModel.initial();

  LoginCubit(this._repository) : super(InitialLoginState());

  static LoginCubit get(BuildContext context) => context.bloc<LoginCubit>();

  Future<void> login({
    String url,
    String email,
    String password,
  }) async {
    emit(LoadingLoginState());

    final f = await _repository.login(
      email: email,
      url: url,
      password: password,
    );

    f.fold(
    (l) async
    {
        emit(ErrorLoginState(l));
    },
    (r) async
    {
      loginModel = r;
      emit(SuccessLoginState());
    },
    );
  }
}