import 'package:equatable/equatable.dart';

abstract class ProfileStates extends Equatable {
  @override
  List<Object> get props => [];
}

class InitialState extends ProfileStates {}

class LoadingProfileState extends ProfileStates {}

class ToggledState extends ProfileStates {}

class HasDataState extends ProfileStates {}

class ErrorState extends ProfileStates {
  final String error;

  ErrorState(this.error);

  @override
  List<Object> get props => [error];
}

class PassChangedState extends ProfileStates {
  final String message;

  PassChangedState(this.message);

  @override
  List<Object> get props => [message];
}

class UpdatedState extends ProfileStates {}
