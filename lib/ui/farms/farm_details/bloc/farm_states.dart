import 'package:equatable/equatable.dart';

abstract class FarmStates extends Equatable {
  @override
  List<Object> get props => [];
}

class InitialState extends FarmStates {}

class FarmSelectedState extends FarmStates {}

class FarmRefreshingState extends FarmStates {}

class FarmLoadingState extends FarmStates {}

class FieldDeletedState extends FarmStates {
  final String message;

  FieldDeletedState(this.message);

  @override
  List<Object> get props => [message];
}

class ErrorFarmState extends FarmStates {
  final String error;

  ErrorFarmState(this.error);

  @override
  List<Object> get props => [error];
}
