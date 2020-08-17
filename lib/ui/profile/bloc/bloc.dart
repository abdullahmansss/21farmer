import 'package:farmers21/sevices/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'events.dart';
import 'states.dart';

class ProfileBloc extends Bloc<ProfileEvents, ProfileStates> {
  final Repository repository = Repository();

  String name = '';
  String email = '';
  String mobile = '';

  bool isEditing = false;

  @override
  ProfileStates get initialState => InitialState();

  @override
  Stream<ProfileStates> mapEventToState(ProfileEvents event) async* {
    if (event is ToggleEditingEvent) {
      if (isEditing) {
        isEditing = false;
        event.onEdited();
      } else {
        isEditing = true;
      }
      yield ToggledState();
    }
    if (event is FetchUserDataEvent) {
      yield LoadingProfileState();
      final sharedPreferences = await SharedPreferences.getInstance();
      name = sharedPreferences.getString('name');
      email = sharedPreferences.getString('email');
      mobile = sharedPreferences.getString('mobile');
      yield HasDataState();
    }
    if (event is UpdateUserDataEvent) {
      if (event.name == null ||
          event.name.isEmpty ||
          event.email == null ||
          event.email.isEmpty ||
          event.mobile == null ||
          event.mobile.isEmpty) {
        yield ErrorState('Check your data');
      } else {
        yield LoadingProfileState();
        try {
          await repository.updateUserData(
            name: event.name,
            email: event.email,
            mobile: event.mobile,
            api_token: event.token,
          );
          name = event.name;
          email = event.email;
          mobile = event.mobile;
          final sharedPreferences = await SharedPreferences.getInstance();
          sharedPreferences.setString('name', name);
          sharedPreferences.setString('email', email);
          sharedPreferences.setString('mobile', mobile);
          yield UpdatedState();
        } catch (e) {
          print(e);
          yield ErrorState(e.toString());
        }
      }
    }
    if (event is ChangePasswordEvent) {
      if (event.oldPass == null ||
          event.oldPass.isEmpty ||
          event.newPass == null ||
          event.newPass.isEmpty ||
          event.rePass == null ||
          event.rePass.isEmpty) {
        yield ErrorState('Check your data');
      } else {
        yield LoadingProfileState();
        try {
          await repository.updatePassword(
            confirm_password: event.rePass,
            password: event.newPass,
            old_password: event.oldPass,
            api_token: event.token,
          );
          yield PassChangedState('Password changed successfully');
        } catch (e) {
          print(e);
          yield ErrorState(e.toString());
        }
      }
    }
  }
}
