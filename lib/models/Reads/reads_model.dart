import 'package:freezed_annotation/freezed_annotation.dart';

part 'reads_model.freezed.dart';
part 'reads_model.g.dart';

@freezed
@immutable
abstract class ReadsModel with _$ReadsModel {
  const factory ReadsModel({
  @nullable int statusCode,
  @nullable ReadsDetailsModel body,
}) = _ReadsModel;

  factory ReadsModel.initial() => ReadsModel(
    statusCode: 0,
    body: ReadsDetailsModel.initial(),
  );

  factory ReadsModel.fromJson(Map<dynamic, dynamic> json) => _$ReadsModelFromJson(json);
}

@freezed
@immutable
abstract class ReadsDetailsModel with _$ReadsDetailsModel {
  const factory ReadsDetailsModel({
  @nullable @JsonKey(name: '_id') String id,
    @nullable String name,
    @nullable ReadsDataModel data,
}) = _ReadsDetailsModel;

  factory ReadsDetailsModel.initial() => ReadsDetailsModel(
    name: '',
    id: '',
    data: ReadsDataModel.initial(),
  );

  factory ReadsDetailsModel.fromJson(Map<dynamic, dynamic> json) => _$ReadsDetailsModelFromJson(json);
}

@freezed
@immutable
abstract class ReadsDataModel with _$ReadsDataModel {
  const factory ReadsDataModel({
  @nullable String hardwareDateTime,
  @nullable ReadsDataDetailsModel data,
}) = _ReadsDataModel;

  factory ReadsDataModel.initial() => ReadsDataModel(
    data: ReadsDataDetailsModel.initial(),
    hardwareDateTime: '',
  );

  factory ReadsDataModel.fromJson(Map<dynamic, dynamic> json) => _$ReadsDataModelFromJson(json);
}

@freezed
@immutable
abstract class ReadsDataDetailsModel with _$ReadsDataDetailsModel {
  const factory ReadsDataDetailsModel({
  @nullable double AIR_TEMP,
  @nullable double AIR_HUM,
  @nullable double AIR_LUX,
  @nullable double SOIL_MOISTURE,
  @nullable double SOIL_EC,
  @nullable double SOIL_TEMP,
  @nullable double SOIL_TDS,
  @nullable double SOIL_SALINITY,
  @nullable double SOIL_EPSILON,
}) = _ReadsDataDetailsModel;

  factory ReadsDataDetailsModel.initial() => ReadsDataDetailsModel(
    SOIL_TEMP: 0.0,
    SOIL_TDS: 0.0,
    SOIL_SALINITY: 0.0,
    SOIL_MOISTURE: 0.0,
    SOIL_EPSILON: 0.0,
    SOIL_EC: 0.0,
    AIR_TEMP: 0.0,
    AIR_LUX: 0.0,
    AIR_HUM: 0.0,
  );

  factory ReadsDataDetailsModel.fromJson(Map<dynamic, dynamic> json) => _$ReadsDataDetailsModelFromJson(json);
}