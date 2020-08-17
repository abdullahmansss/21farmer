import 'package:equatable/equatable.dart';
import 'package:farmers21/ui/farms/bloc/farms_model.dart';

abstract class AddFarmEvent extends Equatable {
  const AddFarmEvent();
}

class CreateFarmEvent extends AddFarmEvent {
  final String name;
  final String token;
  final List<Coordinate> coordinates;
  final Function onSuccess;

  CreateFarmEvent({this.token, this.name, this.coordinates, this.onSuccess});

  @override
  List<Object> get props => [token, name, coordinates, onSuccess];
}

class UpdateFarmEvent extends AddFarmEvent {
  final String token;
  final String id;
  final String name;
  final String status;
  final List<Coordinate> coordinates;
  final Function onSuccess;

  UpdateFarmEvent(
      {this.name,
      this.token,
      this.coordinates,
      this.onSuccess,
      this.id,
      this.status});

  @override
  List<Object> get props => [name, coordinates, onSuccess, token, status, id];
}
