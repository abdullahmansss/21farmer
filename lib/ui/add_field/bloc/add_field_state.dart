import 'package:equatable/equatable.dart';

abstract class AddFieldState extends Equatable {
  const AddFieldState();
}

class InitialAddFieldState extends AddFieldState {
  @override
  List<Object> get props => [];
}

class FieldCropsReadyState extends AddFieldState {
  final List<String> list;

  FieldCropsReadyState(this.list);

  @override
  List<Object> get props => [list];
}

class LoadingFieldState extends AddFieldState {
  @override
  List<Object> get props => [];
}

class ErrorFieldState extends AddFieldState {
  final String error;

  ErrorFieldState(this.error);

  @override
  List<Object> get props => [error];
}

class FieldAddedState extends AddFieldState {
  @override
  List<Object> get props => [];
}

class FieldUpdatedState extends AddFieldState {
  @override
  List<Object> get props => [];
}
