import 'package:freezed_annotation/freezed_annotation.dart';

part 'gateway_model.freezed.dart';
part 'gateway_model.g.dart';

@freezed
@immutable
abstract class GatewayModel with _$GatewayModel {
  const factory GatewayModel({
  @nullable int statusCode,
  @nullable GatewayDetailsModel body,
}) = _GatewayModel;

  factory GatewayModel.initial() => GatewayModel(
    statusCode: 0,
    body: GatewayDetailsModel.initial(),
  );

  factory GatewayModel.fromJson(Map<dynamic, dynamic> json) => _$GatewayModelFromJson(json);
}

@freezed
@immutable
abstract class GatewayDetailsModel with _$GatewayDetailsModel {
  const factory GatewayDetailsModel({
  @nullable String name,
  @nullable String gateway_id,
  @nullable List<GatewayReadsModel> data,
}) = _GatewayDetailsModel;

  factory GatewayDetailsModel.initial() => GatewayDetailsModel(
    gateway_id: '',
    name: '',
    data: [GatewayReadsModel.initial()],
  );

  factory GatewayDetailsModel.fromJson(Map<dynamic, dynamic> json) => _$GatewayDetailsModelFromJson(json);
}

@freezed
@immutable
abstract class GatewayReadsModel with _$GatewayReadsModel {
  const factory GatewayReadsModel({
  @nullable GatewayReadsDetailsModelModel data,
}) = _GatewayReadsModel;

  factory GatewayReadsModel.initial() => GatewayReadsModel(
    data: GatewayReadsDetailsModelModel.initial(),
  );

  factory GatewayReadsModel.fromJson(Map<dynamic, dynamic> json) => _$GatewayReadsModelFromJson(json);
}

@freezed
@immutable
abstract class GatewayReadsDetailsModelModel with _$GatewayReadsDetailsModelModel {
  const factory GatewayReadsDetailsModelModel({
  @nullable double AIR_TEMP,
  @nullable double AIR_HUM,
  @nullable double AIR_LUX,
  @nullable double SOIL_MOISTURE,
  @nullable double SOIL_EC,
  @nullable double SOIL_TEMP,
  @nullable double SOIL_TDS,
  @nullable double SOIL_SALINITY,
  @nullable double SOIL_EPSILON,
  @nullable double SOIL_N,
  @nullable double SOIL_P,
  @nullable double SOIL_K,
  @nullable double SOIL_PH,
}) = _GatewayReadsDetailsModelModel;

  factory GatewayReadsDetailsModelModel.initial() => GatewayReadsDetailsModelModel(
    AIR_HUM: 0.0,
    AIR_LUX: 0.0,
    AIR_TEMP: 0.0,
    SOIL_EC: 0.0,
    SOIL_EPSILON: 0.0,
    SOIL_K: 0.0,
    SOIL_MOISTURE: 0.0,
    SOIL_N: 0.0,
    SOIL_P: 0.0,
    SOIL_PH: 0.0,
    SOIL_SALINITY: 0.0,
    SOIL_TDS: 0.0,
    SOIL_TEMP: 0.0,
  );

  factory GatewayReadsDetailsModelModel.fromJson(Map<dynamic, dynamic> json) => _$GatewayReadsDetailsModelModelFromJson(json);
}