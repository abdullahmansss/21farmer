import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
@immutable
abstract class LoginModel with _$LoginModel {
  const factory LoginModel({
  @nullable int statusCode,
  @nullable UserModel body,
}) = _LoginModel;

  factory LoginModel.initial() => LoginModel(statusCode: 0, body: UserModel.initial());

  factory LoginModel.fromJson(Map<dynamic, dynamic> json) => _$LoginModelFromJson(json);
}

@freezed
@immutable
abstract class UserModel with _$UserModel {
  const factory UserModel({
  @nullable String message,
  @nullable String token,
  @nullable UserDetailsModel user,
}) = _UserModel;

  factory UserModel.initial() => UserModel(token: '', message: '', user: UserDetailsModel.initial());

  factory UserModel.fromJson(Map<dynamic, dynamic> json) => _$UserModelFromJson(json);
}

@freezed
@immutable
abstract class UserDetailsModel with _$UserDetailsModel {
  const factory UserDetailsModel({
  @nullable String mobile,
  @nullable String email,
  @nullable String name,
}) = _UserDetailsModel;

  factory UserDetailsModel.initial() => UserDetailsModel(name: '', email: '', mobile: '');

  factory UserDetailsModel.fromJson(Map<dynamic, dynamic> json) => _$UserDetailsModelFromJson(json);
}