//import 'package:farmers21/sevices/repository.dart';
//import 'package:farmers21/sevices/resource.dart';
//import 'package:flutter/cupertino.dart';
//import 'package:rxdart/rxdart.dart';
//
//class LoginBloc {
//  final Repository _repository = Repository();
//
//  //equivalent to MediatorLiveData or MutableLiveData
//  final _data = PublishSubject<Resource<dynamic>>();
//
//  //equivalent to LiveData getter method
//  Observable<Resource<dynamic>> get data => _data.stream;
//
//  login({@required String email, @required String password}) async {
////    _data.stream.listen(print);
//    _data.add(Resource.loading(await 'يتم تسجيل الدخول...'));
//    print('bloc_loading');
//    try {
//      _data.add(Resource.completed(
//          await _repository.login(email: email, password: password)));
//      print('bloc_completed');
//    } catch (e) {
//      _data.add(Resource.error(await e.toString()));
//      print('bloc_error');
//      print(e);
//    }
//  }
//
//  dispose() {
//    _data?.close();
////    _controller?.close();
//  }
//}
