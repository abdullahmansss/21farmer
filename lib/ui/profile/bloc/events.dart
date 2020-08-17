import 'package:equatable/equatable.dart';

abstract class ProfileEvents extends Equatable {
  @override
  List<Object> get props => [];
}

class FetchUserDataEvent extends ProfileEvents {}

class ToggleEditingEvent extends ProfileEvents {
  final Function onEdited;

  ToggleEditingEvent(this.onEdited);

  @override
  List<Object> get props => [onEdited];
}

class UpdateUserDataEvent extends ProfileEvents {
  final String token;
  final String name;
  final String email;
  final String mobile;

  UpdateUserDataEvent(this.token, this.name, this.email, this.mobile);

  @override
  List<Object> get props => [token, name, email, mobile];
}

class ChangePasswordEvent extends ProfileEvents {
  final String token;
  final String oldPass;
  final String newPass;
  final String rePass;

  ChangePasswordEvent(this.token, this.oldPass, this.newPass, this.rePass);

  @override
  List<Object> get props => [token, oldPass, newPass, rePass];
}
