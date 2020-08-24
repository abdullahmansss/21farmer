// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'farms_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FarmsModel _$_$_FarmsModelFromJson(Map<String, dynamic> json) {
  return _$_FarmsModel(
    statusCode: json['statusCode'] as int,
    body: (json['body'] as List)
        ?.map((e) => e == null
            ? null
            : FarmDetailsModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_FarmsModelToJson(_$_FarmsModel instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'body': instance.body,
    };

_$_FarmDetailsModel _$_$_FarmDetailsModelFromJson(Map<String, dynamic> json) {
  return _$_FarmDetailsModel(
    status: json['status'] as String,
    id: json['id'] as String,
    name: json['name'] as String,
    user_id: json['user_id'] as String,
  );
}

Map<String, dynamic> _$_$_FarmDetailsModelToJson(
        _$_FarmDetailsModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'id': instance.id,
      'name': instance.name,
      'user_id': instance.user_id,
    };
