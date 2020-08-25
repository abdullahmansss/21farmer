// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fields_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FieldsModel _$_$_FieldsModelFromJson(Map<String, dynamic> json) {
  return _$_FieldsModel(
    statusCode: json['statusCode'] as int,
    body: (json['body'] as List)
        ?.map((e) => e == null
            ? null
            : FieldDetailsModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_FieldsModelToJson(_$_FieldsModel instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'body': instance.body,
    };

_$_FieldDetailsModel _$_$_FieldDetailsModelFromJson(Map<String, dynamic> json) {
  return _$_FieldDetailsModel(
    status: json['status'] as String,
    field_name: json['field_name'] as String,
    crop: json['crop'] as String,
    createdAt: json['createdAt'] as String,
    id: json['_id'] as String,
  );
}

Map<String, dynamic> _$_$_FieldDetailsModelToJson(
        _$_FieldDetailsModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'field_name': instance.field_name,
      'crop': instance.crop,
      'createdAt': instance.createdAt,
      '_id': instance.id,
    };
