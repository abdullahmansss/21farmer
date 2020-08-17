import 'package:equatable/equatable.dart';

import 'login_model.dart';

class LoginEvents extends Equatable {
  @override
  List<Object> get props => [];
}

class LoginEvent extends LoginEvents {
  final String email;
  final String pass;
  final Function(LoginBody) onSuccess;

  LoginEvent(this.email, this.pass, {this.onSuccess});

  @override
  List<Object> get props => [email, pass, onSuccess];
}
