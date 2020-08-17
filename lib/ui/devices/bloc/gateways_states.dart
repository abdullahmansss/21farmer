import 'package:equatable/equatable.dart';

abstract class GatewaysStates extends Equatable {
  const GatewaysStates();
}

class InitialGatewaysState extends GatewaysStates {
  @override
  List<Object> get props => [];
}

class HasGatewaysState extends GatewaysStates {
  @override
  List<Object> get props => [];
}

class EmptyGatewaysState extends GatewaysStates {
  @override
  List<Object> get props => [];
}

class LoadingGatewaysState extends GatewaysStates {
  @override
  List<Object> get props => [];
}

class RefreshingGatewaysState extends GatewaysStates {
  @override
  List<Object> get props => [];
}

class ErrorGatewaysState extends GatewaysStates {
  final String error;

  ErrorGatewaysState(this.error);

  @override
  List<Object> get props => [error];
}

class NewGatewayAddedState extends GatewaysStates {
  @override
  List<Object> get props => [];
}

class GatewayUpdatedState extends GatewaysStates {
  @override
  List<Object> get props => [];
}

class GatewayDeletedState extends GatewaysStates {
  @override
  List<Object> get props => [];
}
