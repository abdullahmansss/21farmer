import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:farmers21/sevices/repository.dart';

import 'add_farm_event.dart';
import 'add_farm_state.dart';

class AddFarmBloc extends Bloc<AddFarmEvent, AddFarmState> {
  final Repository repository = Repository();

  @override
  AddFarmState get initialState => InitialAddFarmState();

  @override
  Stream<AddFarmState> mapEventToState(AddFarmEvent event) async* {
    if (event is CreateFarmEvent) {
      yield LoadingFarmState();
      try {
        await repository.createFarm(
          api_token: event.token,
          farm_name: event.name,
          coordinates: event.coordinates,
        );
        event.onSuccess();
        yield FarmAddedState();
      } catch (e) {
        print(e.toString());
        yield ErrorFarmState(e.toString());
      }
    }
    if (event is UpdateFarmEvent) {
      yield LoadingFarmState();
      try {
        await repository.updateFarm(
          api_token: event.token,
          farm_id: event.id,
          farm_name: event.name,
          farm_status: event.status,
          coordinates: event.coordinates,
        );
        event.onSuccess();
        yield FarmUpdatedState();
      } catch (e) {
        print(e.toString());
        yield ErrorFarmState(e.toString());
      }
    }
  }
}
