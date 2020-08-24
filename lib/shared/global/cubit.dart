import 'package:farmers21/models/login/login_model.dart';
import 'package:farmers21/shared/di/di.dart';
import 'package:farmers21/shared/network/local/cache_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'states.dart';

class GlobalCubit extends Cubit<GlobalStates>
{
  UserModel userModel = UserModel.initial();
  bool isUser = false;

  GlobalCubit() : super(InitialGlobalState());

  static GlobalCubit get(BuildContext context) => context.bloc<GlobalCubit>();

  Future<void> getUser() async
  {
    await di<CacheHelper>().has('userData').then((user) async
    {
      if (user) {
        isUser = true;

        await di<CacheHelper>().get('userData').then((value) async
        {
          var model = LoginModel.fromJson(value);
          userModel = model.body;
        });
      } else {
        isUser = false;
      }
    });

    emit(SuccessGlobalState());
  }
}