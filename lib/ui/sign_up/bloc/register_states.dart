import 'package:equatable/equatable.dart';
import 'package:farmers21/ui/sign_in/bloc/login_model.dart';

abstract class RegisterStates extends Equatable {
  @override
  List<Object> get props => [];
}

class InitialState extends RegisterStates {}

class SuccessState extends RegisterStates {
  final LoginBody loginBody;

  SuccessState(this.loginBody);

  @override
  List<Object> get props => [loginBody];
}

class LoadingState extends RegisterStates {}

class ErrorRegisterState extends RegisterStates {
  final String error;

  ErrorRegisterState(this.error);

  @override
  List<Object> get props => [error];
}
