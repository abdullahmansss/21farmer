// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginModel _$_$_LoginModelFromJson(Map<String, dynamic> json) {
  return _$_LoginModel(
    statusCode: json['statusCode'] as int,
    body: json['body'] == null
        ? null
        : UserModel.fromJson(json['body'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_LoginModelToJson(_$_LoginModel instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'body': instance.body,
    };

_$_UserModel _$_$_UserModelFromJson(Map<String, dynamic> json) {
  return _$_UserModel(
    message: json['message'] as String,
    token: json['token'] as String,
    user: json['user'] == null
        ? null
        : UserDetailsModel.fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'token': instance.token,
      'user': instance.user,
    };

_$_UserDetailsModel _$_$_UserDetailsModelFromJson(Map<String, dynamic> json) {
  return _$_UserDetailsModel(
    mobile: json['mobile'] as String,
    email: json['email'] as String,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$_$_UserDetailsModelToJson(
        _$_UserDetailsModel instance) =>
    <String, dynamic>{
      'mobile': instance.mobile,
      'email': instance.email,
      'name': instance.name,
    };
