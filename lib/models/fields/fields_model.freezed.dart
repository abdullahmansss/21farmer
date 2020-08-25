// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'fields_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
FieldsModel _$FieldsModelFromJson(Map<String, dynamic> json) {
  return _FieldsModel.fromJson(json);
}

class _$FieldsModelTearOff {
  const _$FieldsModelTearOff();

  _FieldsModel call(
      {@nullable int statusCode, @nullable List<FieldDetailsModel> body}) {
    return _FieldsModel(
      statusCode: statusCode,
      body: body,
    );
  }
}

// ignore: unused_element
const $FieldsModel = _$FieldsModelTearOff();

mixin _$FieldsModel {
  @nullable
  int get statusCode;
  @nullable
  List<FieldDetailsModel> get body;

  Map<String, dynamic> toJson();
  $FieldsModelCopyWith<FieldsModel> get copyWith;
}

abstract class $FieldsModelCopyWith<$Res> {
  factory $FieldsModelCopyWith(
          FieldsModel value, $Res Function(FieldsModel) then) =
      _$FieldsModelCopyWithImpl<$Res>;
  $Res call({@nullable int statusCode, @nullable List<FieldDetailsModel> body});
}

class _$FieldsModelCopyWithImpl<$Res> implements $FieldsModelCopyWith<$Res> {
  _$FieldsModelCopyWithImpl(this._value, this._then);

  final FieldsModel _value;
  // ignore: unused_field
  final $Res Function(FieldsModel) _then;

  @override
  $Res call({
    Object statusCode = freezed,
    Object body = freezed,
  }) {
    return _then(_value.copyWith(
      statusCode: statusCode == freezed ? _value.statusCode : statusCode as int,
      body: body == freezed ? _value.body : body as List<FieldDetailsModel>,
    ));
  }
}

abstract class _$FieldsModelCopyWith<$Res>
    implements $FieldsModelCopyWith<$Res> {
  factory _$FieldsModelCopyWith(
          _FieldsModel value, $Res Function(_FieldsModel) then) =
      __$FieldsModelCopyWithImpl<$Res>;
  @override
  $Res call({@nullable int statusCode, @nullable List<FieldDetailsModel> body});
}

class __$FieldsModelCopyWithImpl<$Res> extends _$FieldsModelCopyWithImpl<$Res>
    implements _$FieldsModelCopyWith<$Res> {
  __$FieldsModelCopyWithImpl(
      _FieldsModel _value, $Res Function(_FieldsModel) _then)
      : super(_value, (v) => _then(v as _FieldsModel));

  @override
  _FieldsModel get _value => super._value as _FieldsModel;

  @override
  $Res call({
    Object statusCode = freezed,
    Object body = freezed,
  }) {
    return _then(_FieldsModel(
      statusCode: statusCode == freezed ? _value.statusCode : statusCode as int,
      body: body == freezed ? _value.body : body as List<FieldDetailsModel>,
    ));
  }
}

@JsonSerializable()
class _$_FieldsModel implements _FieldsModel {
  const _$_FieldsModel({@nullable this.statusCode, @nullable this.body});

  factory _$_FieldsModel.fromJson(Map<String, dynamic> json) =>
      _$_$_FieldsModelFromJson(json);

  @override
  @nullable
  final int statusCode;
  @override
  @nullable
  final List<FieldDetailsModel> body;

  @override
  String toString() {
    return 'FieldsModel(statusCode: $statusCode, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FieldsModel &&
            (identical(other.statusCode, statusCode) ||
                const DeepCollectionEquality()
                    .equals(other.statusCode, statusCode)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(statusCode) ^
      const DeepCollectionEquality().hash(body);

  @override
  _$FieldsModelCopyWith<_FieldsModel> get copyWith =>
      __$FieldsModelCopyWithImpl<_FieldsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FieldsModelToJson(this);
  }
}

abstract class _FieldsModel implements FieldsModel {
  const factory _FieldsModel(
      {@nullable int statusCode,
      @nullable List<FieldDetailsModel> body}) = _$_FieldsModel;

  factory _FieldsModel.fromJson(Map<String, dynamic> json) =
      _$_FieldsModel.fromJson;

  @override
  @nullable
  int get statusCode;
  @override
  @nullable
  List<FieldDetailsModel> get body;
  @override
  _$FieldsModelCopyWith<_FieldsModel> get copyWith;
}

FieldDetailsModel _$FieldDetailsModelFromJson(Map<String, dynamic> json) {
  return _FieldDetailsModel.fromJson(json);
}

class _$FieldDetailsModelTearOff {
  const _$FieldDetailsModelTearOff();

  _FieldDetailsModel call(
      {@nullable String status,
      @nullable String field_name,
      @nullable String crop,
      @nullable String createdAt,
      @nullable @JsonKey(name: '_id') String id}) {
    return _FieldDetailsModel(
      status: status,
      field_name: field_name,
      crop: crop,
      createdAt: createdAt,
      id: id,
    );
  }
}

// ignore: unused_element
const $FieldDetailsModel = _$FieldDetailsModelTearOff();

mixin _$FieldDetailsModel {
  @nullable
  String get status;
  @nullable
  String get field_name;
  @nullable
  String get crop;
  @nullable
  String get createdAt;
  @nullable
  @JsonKey(name: '_id')
  String get id;

  Map<String, dynamic> toJson();
  $FieldDetailsModelCopyWith<FieldDetailsModel> get copyWith;
}

abstract class $FieldDetailsModelCopyWith<$Res> {
  factory $FieldDetailsModelCopyWith(
          FieldDetailsModel value, $Res Function(FieldDetailsModel) then) =
      _$FieldDetailsModelCopyWithImpl<$Res>;
  $Res call(
      {@nullable String status,
      @nullable String field_name,
      @nullable String crop,
      @nullable String createdAt,
      @nullable @JsonKey(name: '_id') String id});
}

class _$FieldDetailsModelCopyWithImpl<$Res>
    implements $FieldDetailsModelCopyWith<$Res> {
  _$FieldDetailsModelCopyWithImpl(this._value, this._then);

  final FieldDetailsModel _value;
  // ignore: unused_field
  final $Res Function(FieldDetailsModel) _then;

  @override
  $Res call({
    Object status = freezed,
    Object field_name = freezed,
    Object crop = freezed,
    Object createdAt = freezed,
    Object id = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed ? _value.status : status as String,
      field_name:
          field_name == freezed ? _value.field_name : field_name as String,
      crop: crop == freezed ? _value.crop : crop as String,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

abstract class _$FieldDetailsModelCopyWith<$Res>
    implements $FieldDetailsModelCopyWith<$Res> {
  factory _$FieldDetailsModelCopyWith(
          _FieldDetailsModel value, $Res Function(_FieldDetailsModel) then) =
      __$FieldDetailsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable String status,
      @nullable String field_name,
      @nullable String crop,
      @nullable String createdAt,
      @nullable @JsonKey(name: '_id') String id});
}

class __$FieldDetailsModelCopyWithImpl<$Res>
    extends _$FieldDetailsModelCopyWithImpl<$Res>
    implements _$FieldDetailsModelCopyWith<$Res> {
  __$FieldDetailsModelCopyWithImpl(
      _FieldDetailsModel _value, $Res Function(_FieldDetailsModel) _then)
      : super(_value, (v) => _then(v as _FieldDetailsModel));

  @override
  _FieldDetailsModel get _value => super._value as _FieldDetailsModel;

  @override
  $Res call({
    Object status = freezed,
    Object field_name = freezed,
    Object crop = freezed,
    Object createdAt = freezed,
    Object id = freezed,
  }) {
    return _then(_FieldDetailsModel(
      status: status == freezed ? _value.status : status as String,
      field_name:
          field_name == freezed ? _value.field_name : field_name as String,
      crop: crop == freezed ? _value.crop : crop as String,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

@JsonSerializable()
class _$_FieldDetailsModel implements _FieldDetailsModel {
  const _$_FieldDetailsModel(
      {@nullable this.status,
      @nullable this.field_name,
      @nullable this.crop,
      @nullable this.createdAt,
      @nullable @JsonKey(name: '_id') this.id});

  factory _$_FieldDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$_$_FieldDetailsModelFromJson(json);

  @override
  @nullable
  final String status;
  @override
  @nullable
  final String field_name;
  @override
  @nullable
  final String crop;
  @override
  @nullable
  final String createdAt;
  @override
  @nullable
  @JsonKey(name: '_id')
  final String id;

  @override
  String toString() {
    return 'FieldDetailsModel(status: $status, field_name: $field_name, crop: $crop, createdAt: $createdAt, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FieldDetailsModel &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.field_name, field_name) ||
                const DeepCollectionEquality()
                    .equals(other.field_name, field_name)) &&
            (identical(other.crop, crop) ||
                const DeepCollectionEquality().equals(other.crop, crop)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(field_name) ^
      const DeepCollectionEquality().hash(crop) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(id);

  @override
  _$FieldDetailsModelCopyWith<_FieldDetailsModel> get copyWith =>
      __$FieldDetailsModelCopyWithImpl<_FieldDetailsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FieldDetailsModelToJson(this);
  }
}

abstract class _FieldDetailsModel implements FieldDetailsModel {
  const factory _FieldDetailsModel(
      {@nullable String status,
      @nullable String field_name,
      @nullable String crop,
      @nullable String createdAt,
      @nullable @JsonKey(name: '_id') String id}) = _$_FieldDetailsModel;

  factory _FieldDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_FieldDetailsModel.fromJson;

  @override
  @nullable
  String get status;
  @override
  @nullable
  String get field_name;
  @override
  @nullable
  String get crop;
  @override
  @nullable
  String get createdAt;
  @override
  @nullable
  @JsonKey(name: '_id')
  String get id;
  @override
  _$FieldDetailsModelCopyWith<_FieldDetailsModel> get copyWith;
}
