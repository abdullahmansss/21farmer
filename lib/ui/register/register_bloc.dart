////final bloc = MyBloc();
//
//import 'package:farmers21/sevices/repository.dart';
//import 'package:farmers21/sevices/resource.dart';
//import 'package:flutter/cupertino.dart';
//import 'package:rxdart/rxdart.dart';
//
//class RegisterBloc {
//  final Repository _repository = Repository();
//
//  //equivalent to MediatorLiveData or MutableLiveData
//  final _data = PublishSubject<Resource<dynamic>>();
//
//  Observable<Resource<dynamic>> get data => _data.stream;
//
//  register({
//    @required String name,
//    @required String email,
//    @required String password,
//    @required String password_confirmation,
//    @required String mobile,
////    @required String country_code,
//  }) async {
////    _data.stream.listen(print);
//    _data.add(Resource.loading(await 'يتم تسجيل الدخول...'));
//    print('bloc_loading');
//    try {
//      _data.add(Resource.completed(await _repository.register(
//        name: name,
//        email: email,
//        password: password,
//        confirm_password: password_confirmation,
//        mobile: mobile,
////        country_code: country_code,
//      )));
//      print('bloc_completed');
//    } catch (e) {
//      _data.add(Resource.error(await e.toString()));
//      print('bloc_error ${e.toString()}');
//    }
//  }
//
//  dispose() {
//    _data?.close();
////    _controller?.close();
//  }
//}
