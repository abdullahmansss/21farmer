import 'package:farmers21/sevices/repository.dart';
import 'package:farmers21/ui/farms/bloc/farms_model.dart';
import 'package:farmers21/ui/farms/farm_details/bloc/farm_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'farm_events.dart';
import 'farm_states.dart';

class FarmBloc extends Bloc<FarmEvents, FarmStates> {
  final Repository repository = Repository();

  FarmBody farm = FarmBody.initial();

  @override
  FarmStates get initialState => InitialState();

  @override
  Stream<FarmStates> mapEventToState(FarmEvents event) async* {
    if (event is SelectFarmEvent) {
      farm = event.farm;
      yield FarmSelectedState();
    }
    if (event is FetchFieldsEvent) {
      yield FarmLoadingState();
      try {
        farm = FarmModel(await repository.getFarm(
                api_token: event.token, farm_id: event.farmId))
            .farm;
        yield FarmSelectedState();
      } catch (e) {
        print(e);
        yield ErrorFarmState(e.toString());
      }
    }
    if (event is RefreshFarmEvent) {
      yield FarmRefreshingState();
      try {
        farm = FarmModel(await repository.getFarm(
                api_token: event.token, farm_id: event.farmId))
            .farm;
        yield FarmSelectedState();
      } catch (e) {
        print(e);
        yield ErrorFarmState(e.toString());
      }
    }
    if (event is DeleteFieldEvent) {
      yield FarmLoadingState();
      try {
        var response = await repository.deleteField(
            api_token: event.token, field_id: event.fieldId);

        yield FieldDeletedState(response['body']);

        farm = FarmModel(await repository.getFarm(
                api_token: event.token, farm_id: farm.id))
            .farm;

        yield FarmSelectedState();
      } catch (e) {
        print(e);
        yield ErrorFarmState(e.toString());
      }
    }
  }
}
