import 'package:equatable/equatable.dart';

abstract class GatewaysEvents extends Equatable {
  const GatewaysEvents();

  @override
  List<Object> get props => [];
}

class InitialDevicesEvent extends GatewaysEvents {}

class FetchGatewaysEvent extends GatewaysEvents {
  final String token;
  final String field_id;

  FetchGatewaysEvent(this.token, this.field_id);

  @override
  List<Object> get props => [token, field_id];
}

class RefreshGatewaysEvent extends GatewaysEvents {
  final String token;
  final String field_id;

  RefreshGatewaysEvent(this.token, this.field_id);

  @override
  List<Object> get props => [token, field_id];
}

class AddNewGatewayEvent extends GatewaysEvents {
  final String token;
  final String field_id;

  AddNewGatewayEvent(this.token, this.field_id);

  @override
  List<Object> get props => [token, field_id];
}
