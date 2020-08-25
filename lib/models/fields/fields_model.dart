import 'package:freezed_annotation/freezed_annotation.dart';

part 'fields_model.freezed.dart';
part 'fields_model.g.dart';

@freezed
@immutable
abstract class FieldsModel with _$FieldsModel {
  const factory FieldsModel({
  @nullable int statusCode,
  @nullable List<FieldDetailsModel> body,
}) = _FieldsModel;

  factory FieldsModel.initial() => FieldsModel(
    statusCode: 0,
    body: [FieldDetailsModel.initial()],
  );

  factory FieldsModel.fromJson(Map<dynamic, dynamic> json) => _$FieldsModelFromJson(json);
}

@freezed
@immutable
abstract class FieldDetailsModel with _$FieldDetailsModel {
  const factory FieldDetailsModel({
  @nullable String status,
  @nullable String field_name,
  @nullable String crop,
  @nullable String createdAt,
  @nullable @JsonKey(name : '_id') String  id,
}) = _FieldDetailsModel;

  factory FieldDetailsModel.initial() => FieldDetailsModel(
    status: '',
    id: '',
    createdAt: '',
    crop: '',
    field_name: '',
  );

  factory FieldDetailsModel.fromJson(Map<dynamic, dynamic> json) => _$FieldDetailsModelFromJson(json);
}