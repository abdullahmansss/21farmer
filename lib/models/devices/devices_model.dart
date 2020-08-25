import 'package:freezed_annotation/freezed_annotation.dart';

part 'devices_model.freezed.dart';
part 'devices_model.g.dart';

@freezed
@immutable
abstract class DevicesModel with _$DevicesModel {
  const factory DevicesModel({
  @nullable int statusCode,
  @nullable List<DevicesDetailsModel> body,
}) = _DevicesModel;

  factory DevicesModel.initial() => DevicesModel(
    statusCode: 0,
    body: [DevicesDetailsModel.initial()],
  );

  factory DevicesModel.fromJson(Map<dynamic, dynamic> json) => _$DevicesModelFromJson(json);
}

@freezed
@immutable
abstract class DevicesDetailsModel with _$DevicesDetailsModel {
  const factory DevicesDetailsModel({
  @nullable String name,
  @nullable @JsonKey(name: '_id') String id,
  @nullable String device_id,
  @nullable String field_id,
  @nullable String user_id,
  @nullable String gateway_id,
}) = _DevicesDetailsModel;

  factory DevicesDetailsModel.initial() => DevicesDetailsModel(
    user_id: '',
    name: '',
    device_id: '',
    id: '',
    field_id: '',
    gateway_id: '',
  );

  factory DevicesDetailsModel.fromJson(Map<dynamic, dynamic> json) => _$DevicesDetailsModelFromJson(json);
}