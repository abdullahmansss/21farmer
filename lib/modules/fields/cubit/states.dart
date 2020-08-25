import 'package:flutter/foundation.dart';

@immutable
abstract class FieldsStates {
  const FieldsStates();
}

class InitialFieldsState extends FieldsStates {
    const InitialFieldsState();
}

class LoadingFieldsState extends FieldsStates {
    const LoadingFieldsState();
}

class SuccessFieldsState extends FieldsStates {
    const SuccessFieldsState();
}

class ErrorFieldsState extends FieldsStates {
  final String error;

  const ErrorFieldsState(this.error);
}