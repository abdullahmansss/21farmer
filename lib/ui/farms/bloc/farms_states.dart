import 'package:equatable/equatable.dart';

abstract class FarmsStates extends Equatable {
  @override
  List<Object> get props => [];
}

class InitialFarmsState extends FarmsStates {}

class HasFarmsState extends FarmsStates {}

class LoadingState extends FarmsStates {}

class DeletedState extends FarmsStates {
  final String message;

  DeletedState(this.message);

  @override
  List<Object> get props => [message];
}

class RefreshingState extends FarmsStates {}

class ErrorFarmsState extends FarmsStates {
  final String error;

  ErrorFarmsState(this.error);

  @override
  List<Object> get props => [error];
}
