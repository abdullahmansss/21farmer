import 'package:flutter/foundation.dart';

@immutable
abstract class LoginStates {
  const LoginStates();
}

class InitialLoginState extends LoginStates {
    const InitialLoginState();
}

class LoadingLoginState extends LoginStates {
    const LoadingLoginState();
}

class SuccessLoginState extends LoginStates {
    const SuccessLoginState();
}

class ErrorLoginState extends LoginStates {
  final String error;

  const ErrorLoginState(this.error);
}