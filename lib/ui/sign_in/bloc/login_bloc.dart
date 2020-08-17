import 'package:farmers21/sevices/repository.dart';
import 'package:farmers21/ui/sign_in/bloc/login_events.dart';
import 'package:farmers21/ui/sign_in/bloc/login_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_states.dart';

class LoginBloc extends Bloc<LoginEvents, LoginStates> {
  final Repository repository = Repository();

  @override
  LoginStates get initialState => InitialState();

  @override
  Stream<LoginStates> mapEventToState(LoginEvents event) async* {
    if (event is LoginEvent) {
      yield LoadingState();

      try {
        var response = await repository.login(
          email: event.email,
          password: event.pass,
        );
        yield SuccessState(LoginModel(response).body);
        event.onSuccess(LoginModel(response).body);
      } catch (e) {
        print(e);
        yield ErrorLoginState(e.toString());
      }
    }
  }
}
