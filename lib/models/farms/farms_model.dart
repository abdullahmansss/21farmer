import 'package:freezed_annotation/freezed_annotation.dart';

part 'farms_model.freezed.dart';
part 'farms_model.g.dart';

@freezed
@immutable
abstract class FarmsModel with _$FarmsModel {
  const factory FarmsModel({
  @nullable int statusCode,
  @nullable List<FarmDetailsModel> body,
  }) = _FarmsModel;

  factory FarmsModel.initial() => FarmsModel(statusCode: 0, body: [FarmDetailsModel.initial()]);

  factory FarmsModel.fromJson(Map<dynamic, dynamic> json) => _$FarmsModelFromJson(json);
}

@freezed
@immutable
abstract class FarmDetailsModel with _$FarmDetailsModel {
  const factory FarmDetailsModel({
  @nullable String status,
  @nullable String id,
  @nullable String name,
  @nullable String user_id,
}) = _FarmDetailsModel;

  factory FarmDetailsModel.initial() => FarmDetailsModel(name: '', id: '', status: '', user_id: '',);

  factory FarmDetailsModel.fromJson(Map<dynamic, dynamic> json) => _$FarmDetailsModelFromJson(json);
}