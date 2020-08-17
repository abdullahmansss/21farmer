import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:farmers21/sevices/repository.dart';

import 'add_field_event.dart';
import 'add_field_state.dart';

class AddFieldBloc extends Bloc<AddFieldEvent, AddFieldState> {
  final Repository repository = Repository();

  @override
  AddFieldState get initialState => InitialAddFieldState();

  @override
  Stream<AddFieldState> mapEventToState(AddFieldEvent event) async* {
    if (event is GetAvailableCropsEvent) {
      yield LoadingFieldState();
      try {
        var json = await repository.getCropsList(
          api_token: event.token,
        );
        List<String> crops = [];
        for (var d in json['body']) crops.add(d as String);
        yield FieldCropsReadyState(crops);
      } catch (e) {
        print(e.toString());
        yield ErrorFieldState(e.toString());
      }
    }
    if (event is CreateFieldEvent) {
      yield LoadingFieldState();
      try {
        await repository.createField(
          api_token: event.token,
          farm_id: event.id,
          field_name: event.name,
          coordinates: event.coordinates,
          crop: event.crop,
        );
        event.onSuccess();
        yield FieldAddedState();
      } catch (e) {
        print(e.toString());
        yield ErrorFieldState(e.toString());
      }
    }
    if (event is UpdateFieldEvent) {
      yield LoadingFieldState();
      try {
        await repository.updateField(
          api_token: event.token,
          field_id: event.id,
          field_name: event.name,
          field_status: event.status,
          coordinates: event.coordinates,
          crop: event.crop,
        );
        event.onSuccess();
        yield FieldUpdatedState();
      } catch (e) {
        print(e.toString());
        yield ErrorFieldState(e.toString());
      }
    }
  }
}
