// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'devices_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DevicesModel _$_$_DevicesModelFromJson(Map<String, dynamic> json) {
  return _$_DevicesModel(
    statusCode: json['statusCode'] as int,
    body: (json['body'] as List)
        ?.map((e) => e == null
            ? null
            : DevicesDetailsModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_DevicesModelToJson(_$_DevicesModel instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'body': instance.body,
    };

_$_DevicesDetailsModel _$_$_DevicesDetailsModelFromJson(
    Map<String, dynamic> json) {
  return _$_DevicesDetailsModel(
    name: json['name'] as String,
    id: json['_id'] as String,
    device_id: json['device_id'] as String,
    field_id: json['field_id'] as String,
    user_id: json['user_id'] as String,
    gateway_id: json['gateway_id'] as String,
  );
}

Map<String, dynamic> _$_$_DevicesDetailsModelToJson(
        _$_DevicesDetailsModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      '_id': instance.id,
      'device_id': instance.device_id,
      'field_id': instance.field_id,
      'user_id': instance.user_id,
      'gateway_id': instance.gateway_id,
    };
