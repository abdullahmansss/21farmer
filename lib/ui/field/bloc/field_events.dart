import 'package:equatable/equatable.dart';
import 'package:farmers21/ui/farms/bloc/farms_model.dart';

abstract class FieldEvents extends Equatable {
  @override
  List<Object> get props => [];
}

class SelectFieldEvent extends FieldEvents {
  final FieldBody field;

  SelectFieldEvent(this.field);

  @override
  List<Object> get props => [field];
}

class RefreshFieldEvent extends FieldEvents {
  final String token;
  final String fieldId;

  RefreshFieldEvent(this.token, this.fieldId);

  @override
  List<Object> get props => [token, fieldId];
}
