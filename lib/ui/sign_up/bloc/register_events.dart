import 'package:equatable/equatable.dart';
import 'package:farmers21/ui/sign_in/bloc/login_model.dart';

class RegisterEvents extends Equatable {
  @override
  List<Object> get props => [];
}

class RegisterEvent extends RegisterEvents {
  final String name;
  final String email;
  final String phone;
  final String pass;
  final String confirmPass;
  final Function(LoginBody) onSuccess;

  RegisterEvent(this.name, this.email, this.phone, this.pass, this.confirmPass, {this.onSuccess});

  @override
  List<Object> get props => [name, email, phone, pass, confirmPass, onSuccess];
}
