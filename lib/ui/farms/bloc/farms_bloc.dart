import 'package:farmers21/sevices/repository.dart';
import 'package:farmers21/ui/farms/bloc/farms_events.dart';
import 'package:farmers21/ui/farms/bloc/farms_model.dart';
import 'package:farmers21/ui/farms/bloc/farms_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FarmsBloc extends Bloc<FarmsEvents, FarmsStates> {
  final Repository repository = Repository();

  List<FarmBody> farms = [];

  @override
  FarmsStates get initialState => InitialFarmsState();

  @override
  Stream<FarmsStates> mapEventToState(FarmsEvents event) async* {
    if (event is InitialFarmsEvent) {
      yield InitialFarmsState();
      farms.clear();
    }

    if (event is FetchFarmsEvent) {
      if (event.token.isNotEmpty) {
        yield LoadingState();
        try {
          farms = FarmsModel(
            await repository.getFarms(api_token: event.token),
          ).farms;
          yield HasFarmsState();
        } catch (e) {
          print(e);
          yield ErrorFarmsState(e.toString());
        }
      }
    }

    if (event is RefreshFarmsEvent) {
      yield RefreshingState();
      try {
        farms = FarmsModel(
          await repository.getFarms(api_token: event.token),
        ).farms;
        yield HasFarmsState();
      } catch (e) {
        print(e);
        yield ErrorFarmsState(e.toString());
      }
    }

    if (event is DeleteFarmEvent) {
      yield LoadingState();
      try {
        var response = await repository.deleteFarm(api_token: event.token, farm_id: event.farmId);

        yield DeletedState(response['body']);

        farms = FarmsModel(await repository.getFarms(api_token: event.token)).farms;

        yield HasFarmsState();
      } catch (e) {
        print(e);
        yield ErrorFarmsState(e.toString());
      }
    }
  }
}
