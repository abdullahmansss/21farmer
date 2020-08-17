import 'package:farmers21/sevices/repository.dart';
import 'package:farmers21/ui/devices/bloc/devices_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'gateways_events.dart';
import 'gateways_states.dart';

class GatewaysBloc extends Bloc<GatewaysEvents, GatewaysStates> {
  final Repository repository = Repository();

  @override
  GatewaysStates get initialState => InitialGatewaysState();

  List<DevicesBody> devices = [];

  @override
  Stream<GatewaysStates> mapEventToState(GatewaysEvents event) async* {
    if (event is InitialDevicesEvent) {
      yield InitialGatewaysState();
      devices.clear();
    }
    if (event is FetchGatewaysEvent) {
      if (event.token.isNotEmpty) {
        yield LoadingGatewaysState();
        try {
          devices = DevicesModel(await repository.getDevices(api_token: event.token, field_id: event.field_id)).body;
          yield HasGatewaysState();
        } catch (e) {
          print(e);
          yield ErrorGatewaysState(e.toString());
        }
      }
    }
    if (event is RefreshGatewaysEvent) {
      yield RefreshingGatewaysState();
      try {
        devices = DevicesModel(await repository.getDevices(api_token: event.token, field_id: event.field_id)).body;
        yield HasGatewaysState();
      } catch (e) {
        print(e);
        yield ErrorGatewaysState(e.toString());
      }
    }
  }
}
