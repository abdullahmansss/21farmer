import 'package:equatable/equatable.dart';
import 'package:farmers21/ui/sign_in/bloc/login_model.dart';

abstract class LoginStates extends Equatable {
  @override
  List<Object> get props => [];
}

class InitialState extends LoginStates {}

class SuccessState extends LoginStates {
  final LoginBody loginBody;

  SuccessState(this.loginBody);

  @override
  List<Object> get props => [loginBody];
}

class LoadingState extends LoginStates {}

class ErrorLoginState extends LoginStates {
  final String error;

  ErrorLoginState(this.error);

  @override
  List<Object> get props => [error];
}
