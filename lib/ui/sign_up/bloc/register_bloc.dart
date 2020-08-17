import 'package:farmers21/sevices/repository.dart';
import 'package:farmers21/ui/sign_in/bloc/login_model.dart';
import 'package:farmers21/ui/sign_up/bloc/register_events.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'register_states.dart';

class RegisterBloc extends Bloc<RegisterEvents, RegisterStates> {
  final Repository repository = Repository();

  @override
  RegisterStates get initialState => InitialState();

  @override
  Stream<RegisterStates> mapEventToState(RegisterEvents event) async* {
    if (event is RegisterEvent) {
      yield LoadingState();
      try {
        var response = await repository.register(
          email: event.email,
          password: event.pass,
          confirm_password: event.confirmPass,
          mobile: event.phone,
          name: event.name,
        );
        yield SuccessState(LoginModel(response).body);
        event.onSuccess(LoginModel(response).body);
      } catch (e) {
        print(e);
        yield ErrorRegisterState(e.toString());
      }
    }
  }
}
