import 'package:equatable/equatable.dart';
import 'package:farmers21/ui/farms/bloc/farms_model.dart';
import 'package:flutter/cupertino.dart';

abstract class AddFieldEvent extends Equatable {
  const AddFieldEvent();
}

class GetAvailableCropsEvent extends AddFieldEvent {
  final String token;

  GetAvailableCropsEvent({
    @required this.token,
  });

  @override
  List<Object> get props => [
        token,
      ];
}

class CreateFieldEvent extends AddFieldEvent {
  final String id;
  final String name;
  final String crop;
  final String token;
  final List<Coordinate> coordinates;
  final Function onSuccess;

  CreateFieldEvent({
    @required this.id,
    @required this.crop,
    @required this.token,
    @required this.name,
    @required this.coordinates,
    @required this.onSuccess,
  });

  @override
  List<Object> get props => [
        token,
        name,
        coordinates,
        onSuccess,
        crop,
        id,
      ];
}

class UpdateFieldEvent extends AddFieldEvent {
  final String token;
  final String id;
  final String crop;
  final String name;
  final String status;
  final List<Coordinate> coordinates;
  final Function onSuccess;

  UpdateFieldEvent({
    @required this.name,
    @required this.token,
    @required this.crop,
    @required this.coordinates,
    @required this.onSuccess,
    @required this.id,
    @required this.status,
  });

  @override
  List<Object> get props => [
        name,
        coordinates,
        onSuccess,
        token,
        status,
        crop,
        id,
      ];
}
