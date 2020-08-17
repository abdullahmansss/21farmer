import 'package:farmers21/sevices/repository.dart';
import 'package:farmers21/sevices/resource.dart';
import 'package:flutter/foundation.dart';
import 'package:rxdart/rxdart.dart';

class ProfileBloc {
  final Repository _repository = Repository();

  final _getting = PublishSubject<Resource<dynamic>>();

  Observable<Resource<dynamic>> get getting => _getting.stream;

  final _changing = PublishSubject<Resource<dynamic>>();

  Observable<Resource<dynamic>> get changing => _changing.stream;

  final _updating = PublishSubject<Resource<dynamic>>();

  Observable<Resource<dynamic>> get updating => _updating.stream;

  getData({
    @required String api_token,
  }) async {
    _getting.add(Resource.loading(await 'يتم تسجيل الدخول...'));
    print('bloc_loading');
    try {
      _getting.add(Resource.completed(await _repository.getUserData(token: api_token)));
      print('bloc_completed');
    } catch (e) {
      _getting.add(Resource.error(await e.toString()));
      print('bloc_error');
      print(e);
    }
  }

  changePass({
    @required String api_token,
    @required String current_password,
    @required String new_password,
    @required String password_confirmation,
  }) async {
    _changing.add(Resource.loading('يتم تسجيل الدخول...'));
    print('bloc_loading');
    try {
      _changing.add(Resource.completed(await _repository.updatePassword(
        api_token: api_token,
        confirm_password: password_confirmation,
        password: new_password,
        old_password: current_password,
      )));
      print('bloc_completed');
    } catch (e) {
      _changing.add(Resource.error(e.toString()));
      print('bloc_error');
      print(e);
    }
  }

  updateData({
    @required String api_token,
    @required String mobile,
    @required String name,
    @required String email,
  }) async {
    _updating.add(Resource.loading('يتم تسجيل الدخول...'));
    print('bloc_loading');
    try {
      _updating.add(Resource.completed(await _repository.updateUserData(
        api_token: api_token,
        mobile: mobile,
        name: name,
        email: email,
      )));
      print('bloc_completed');
    } catch (e) {
      _updating.add(Resource.error(e.toString()));
      print('bloc_error');
      print(e);
    }
  }

  dispose() {
    _getting?.close();
    _changing?.close();
    _updating?.close();
  }
}
