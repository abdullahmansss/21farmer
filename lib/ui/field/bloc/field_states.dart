import 'package:equatable/equatable.dart';

abstract class FieldStates extends Equatable {
  @override
  List<Object> get props => [];
}

class InitialState extends FieldStates {}

class FieldSelectedState extends FieldStates {}

class FieldRefreshingState extends FieldStates {}

class FieldLoadingState extends FieldStates {}

class ErrorFieldState extends FieldStates {
  final String error;

  ErrorFieldState(this.error);

  @override
  List<Object> get props => [error];
}
