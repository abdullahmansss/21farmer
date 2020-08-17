import 'package:equatable/equatable.dart';

abstract class AddFarmState extends Equatable {
  const AddFarmState();
}

class InitialAddFarmState extends AddFarmState {
  @override
  List<Object> get props => [];
}

class LoadingFarmState extends AddFarmState {
  @override
  List<Object> get props => [];
}

class ErrorFarmState extends AddFarmState {
  final String error;

  ErrorFarmState(this.error);

  @override
  List<Object> get props => [error];
}

class FarmAddedState extends AddFarmState {
  @override
  List<Object> get props => [];
}

class FarmUpdatedState extends AddFarmState {
  @override
  List<Object> get props => [];
}
