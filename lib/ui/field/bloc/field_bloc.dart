import 'package:farmers21/sevices/repository.dart';
import 'package:farmers21/ui/farms/bloc/farms_model.dart';
import 'package:farmers21/ui/field/bloc/field_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'field_events.dart';
import 'field_states.dart';

class FieldBloc extends Bloc<FieldEvents, FieldStates> {
  final Repository repository = Repository();

  FieldBody field;

  @override
  FieldStates get initialState => InitialState();

  @override
  Stream<FieldStates> mapEventToState(FieldEvents event) async* {
    if (event is SelectFieldEvent) {
      field = event.field;
      yield FieldSelectedState();
    }
    if (event is RefreshFieldEvent) {
      yield FieldRefreshingState();
      try {
        field = FieldModel(await repository.getField(
                api_token: event.token, field_id: event.fieldId))
            .field;
        yield FieldSelectedState();
      } catch (e) {
        print(e);
        yield ErrorFieldState(e.toString());
      }
    }
  }
}
