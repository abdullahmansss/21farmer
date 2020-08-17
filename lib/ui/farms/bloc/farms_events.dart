import 'package:equatable/equatable.dart';

class FarmsEvents extends Equatable {
  @override
  List<Object> get props => [];
}

class FetchFarmsEvent extends FarmsEvents {
  final String token;

  FetchFarmsEvent(this.token);

  @override
  List<Object> get props => [token];
}

class InitialFarmsEvent extends FarmsEvents {}

class RefreshFarmsEvent extends FarmsEvents {
  final String token;

  RefreshFarmsEvent(this.token);

  @override
  List<Object> get props => [token];
}

class DeleteFarmEvent extends FarmsEvents {
  final String token;
  final String farmId;

  DeleteFarmEvent(this.token, this.farmId);

  @override
  List<Object> get props => [token, farmId];
}
