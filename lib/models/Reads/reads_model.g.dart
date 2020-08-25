// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reads_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReadsModel _$_$_ReadsModelFromJson(Map<String, dynamic> json) {
  return _$_ReadsModel(
    statusCode: json['statusCode'] as int,
    body: json['body'] == null
        ? null
        : ReadsDetailsModel.fromJson(json['body'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ReadsModelToJson(_$_ReadsModel instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'body': instance.body,
    };

_$_ReadsDetailsModel _$_$_ReadsDetailsModelFromJson(Map<String, dynamic> json) {
  return _$_ReadsDetailsModel(
    id: json['_id'] as String,
    name: json['name'] as String,
    data: json['data'] == null
        ? null
        : ReadsDataModel.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ReadsDetailsModelToJson(
        _$_ReadsDetailsModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'data': instance.data,
    };

_$_ReadsDataModel _$_$_ReadsDataModelFromJson(Map<String, dynamic> json) {
  return _$_ReadsDataModel(
    hardwareDateTime: json['hardwareDateTime'] as String,
    data: json['data'] == null
        ? null
        : ReadsDataDetailsModel.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ReadsDataModelToJson(_$_ReadsDataModel instance) =>
    <String, dynamic>{
      'hardwareDateTime': instance.hardwareDateTime,
      'data': instance.data,
    };

_$_ReadsDataDetailsModel _$_$_ReadsDataDetailsModelFromJson(
    Map<String, dynamic> json) {
  return _$_ReadsDataDetailsModel(
    AIR_TEMP: (json['AIR_TEMP'] as num)?.toDouble(),
    AIR_HUM: (json['AIR_HUM'] as num)?.toDouble(),
    AIR_LUX: (json['AIR_LUX'] as num)?.toDouble(),
    SOIL_MOISTURE: (json['SOIL_MOISTURE'] as num)?.toDouble(),
    SOIL_EC: (json['SOIL_EC'] as num)?.toDouble(),
    SOIL_TEMP: (json['SOIL_TEMP'] as num)?.toDouble(),
    SOIL_TDS: (json['SOIL_TDS'] as num)?.toDouble(),
    SOIL_SALINITY: (json['SOIL_SALINITY'] as num)?.toDouble(),
    SOIL_EPSILON: (json['SOIL_EPSILON'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_ReadsDataDetailsModelToJson(
        _$_ReadsDataDetailsModel instance) =>
    <String, dynamic>{
      'AIR_TEMP': instance.AIR_TEMP,
      'AIR_HUM': instance.AIR_HUM,
      'AIR_LUX': instance.AIR_LUX,
      'SOIL_MOISTURE': instance.SOIL_MOISTURE,
      'SOIL_EC': instance.SOIL_EC,
      'SOIL_TEMP': instance.SOIL_TEMP,
      'SOIL_TDS': instance.SOIL_TDS,
      'SOIL_SALINITY': instance.SOIL_SALINITY,
      'SOIL_EPSILON': instance.SOIL_EPSILON,
    };
