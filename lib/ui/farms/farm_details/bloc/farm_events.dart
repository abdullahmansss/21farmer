import 'package:equatable/equatable.dart';
import 'package:farmers21/ui/farms/bloc/farms_model.dart';

abstract class FarmEvents extends Equatable {
  @override
  List<Object> get props => [];
}

class SelectFarmEvent extends FarmEvents {
  final FarmBody farm;

  SelectFarmEvent(this.farm);

  @override
  List<Object> get props => [farm];
}

class FetchFieldsEvent extends FarmEvents {
  final String token;
  final String farmId;

  FetchFieldsEvent(this.token, this.farmId);

  @override
  List<Object> get props => [token, farmId];
}

class RefreshFarmEvent extends FarmEvents {
  final String token;
  final String farmId;

  RefreshFarmEvent(this.token, this.farmId);

  @override
  List<Object> get props => [token, farmId];
}

class DeleteFieldEvent extends FarmEvents {
  final String token;
  final String fieldId;

  DeleteFieldEvent(this.token, this.fieldId);

  @override
  List<Object> get props => [token, fieldId];
}
