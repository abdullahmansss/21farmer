// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'devices_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
DevicesModel _$DevicesModelFromJson(Map<String, dynamic> json) {
  return _DevicesModel.fromJson(json);
}

class _$DevicesModelTearOff {
  const _$DevicesModelTearOff();

  _DevicesModel call(
      {@nullable int statusCode, @nullable List<DevicesDetailsModel> body}) {
    return _DevicesModel(
      statusCode: statusCode,
      body: body,
    );
  }
}

// ignore: unused_element
const $DevicesModel = _$DevicesModelTearOff();

mixin _$DevicesModel {
  @nullable
  int get statusCode;
  @nullable
  List<DevicesDetailsModel> get body;

  Map<String, dynamic> toJson();
  $DevicesModelCopyWith<DevicesModel> get copyWith;
}

abstract class $DevicesModelCopyWith<$Res> {
  factory $DevicesModelCopyWith(
          DevicesModel value, $Res Function(DevicesModel) then) =
      _$DevicesModelCopyWithImpl<$Res>;
  $Res call(
      {@nullable int statusCode, @nullable List<DevicesDetailsModel> body});
}

class _$DevicesModelCopyWithImpl<$Res> implements $DevicesModelCopyWith<$Res> {
  _$DevicesModelCopyWithImpl(this._value, this._then);

  final DevicesModel _value;
  // ignore: unused_field
  final $Res Function(DevicesModel) _then;

  @override
  $Res call({
    Object statusCode = freezed,
    Object body = freezed,
  }) {
    return _then(_value.copyWith(
      statusCode: statusCode == freezed ? _value.statusCode : statusCode as int,
      body: body == freezed ? _value.body : body as List<DevicesDetailsModel>,
    ));
  }
}

abstract class _$DevicesModelCopyWith<$Res>
    implements $DevicesModelCopyWith<$Res> {
  factory _$DevicesModelCopyWith(
          _DevicesModel value, $Res Function(_DevicesModel) then) =
      __$DevicesModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable int statusCode, @nullable List<DevicesDetailsModel> body});
}

class __$DevicesModelCopyWithImpl<$Res> extends _$DevicesModelCopyWithImpl<$Res>
    implements _$DevicesModelCopyWith<$Res> {
  __$DevicesModelCopyWithImpl(
      _DevicesModel _value, $Res Function(_DevicesModel) _then)
      : super(_value, (v) => _then(v as _DevicesModel));

  @override
  _DevicesModel get _value => super._value as _DevicesModel;

  @override
  $Res call({
    Object statusCode = freezed,
    Object body = freezed,
  }) {
    return _then(_DevicesModel(
      statusCode: statusCode == freezed ? _value.statusCode : statusCode as int,
      body: body == freezed ? _value.body : body as List<DevicesDetailsModel>,
    ));
  }
}

@JsonSerializable()
class _$_DevicesModel implements _DevicesModel {
  const _$_DevicesModel({@nullable this.statusCode, @nullable this.body});

  factory _$_DevicesModel.fromJson(Map<String, dynamic> json) =>
      _$_$_DevicesModelFromJson(json);

  @override
  @nullable
  final int statusCode;
  @override
  @nullable
  final List<DevicesDetailsModel> body;

  @override
  String toString() {
    return 'DevicesModel(statusCode: $statusCode, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DevicesModel &&
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
  _$DevicesModelCopyWith<_DevicesModel> get copyWith =>
      __$DevicesModelCopyWithImpl<_DevicesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DevicesModelToJson(this);
  }
}

abstract class _DevicesModel implements DevicesModel {
  const factory _DevicesModel(
      {@nullable int statusCode,
      @nullable List<DevicesDetailsModel> body}) = _$_DevicesModel;

  factory _DevicesModel.fromJson(Map<String, dynamic> json) =
      _$_DevicesModel.fromJson;

  @override
  @nullable
  int get statusCode;
  @override
  @nullable
  List<DevicesDetailsModel> get body;
  @override
  _$DevicesModelCopyWith<_DevicesModel> get copyWith;
}

DevicesDetailsModel _$DevicesDetailsModelFromJson(Map<String, dynamic> json) {
  return _DevicesDetailsModel.fromJson(json);
}

class _$DevicesDetailsModelTearOff {
  const _$DevicesDetailsModelTearOff();

  _DevicesDetailsModel call(
      {@nullable String name,
      @nullable @JsonKey(name: '_id') String id,
      @nullable String device_id,
      @nullable String field_id,
      @nullable String user_id,
      @nullable String gateway_id}) {
    return _DevicesDetailsModel(
      name: name,
      id: id,
      device_id: device_id,
      field_id: field_id,
      user_id: user_id,
      gateway_id: gateway_id,
    );
  }
}

// ignore: unused_element
const $DevicesDetailsModel = _$DevicesDetailsModelTearOff();

mixin _$DevicesDetailsModel {
  @nullable
  String get name;
  @nullable
  @JsonKey(name: '_id')
  String get id;
  @nullable
  String get device_id;
  @nullable
  String get field_id;
  @nullable
  String get user_id;
  @nullable
  String get gateway_id;

  Map<String, dynamic> toJson();
  $DevicesDetailsModelCopyWith<DevicesDetailsModel> get copyWith;
}

abstract class $DevicesDetailsModelCopyWith<$Res> {
  factory $DevicesDetailsModelCopyWith(
          DevicesDetailsModel value, $Res Function(DevicesDetailsModel) then) =
      _$DevicesDetailsModelCopyWithImpl<$Res>;
  $Res call(
      {@nullable String name,
      @nullable @JsonKey(name: '_id') String id,
      @nullable String device_id,
      @nullable String field_id,
      @nullable String user_id,
      @nullable String gateway_id});
}

class _$DevicesDetailsModelCopyWithImpl<$Res>
    implements $DevicesDetailsModelCopyWith<$Res> {
  _$DevicesDetailsModelCopyWithImpl(this._value, this._then);

  final DevicesDetailsModel _value;
  // ignore: unused_field
  final $Res Function(DevicesDetailsModel) _then;

  @override
  $Res call({
    Object name = freezed,
    Object id = freezed,
    Object device_id = freezed,
    Object field_id = freezed,
    Object user_id = freezed,
    Object gateway_id = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      id: id == freezed ? _value.id : id as String,
      device_id: device_id == freezed ? _value.device_id : device_id as String,
      field_id: field_id == freezed ? _value.field_id : field_id as String,
      user_id: user_id == freezed ? _value.user_id : user_id as String,
      gateway_id:
          gateway_id == freezed ? _value.gateway_id : gateway_id as String,
    ));
  }
}

abstract class _$DevicesDetailsModelCopyWith<$Res>
    implements $DevicesDetailsModelCopyWith<$Res> {
  factory _$DevicesDetailsModelCopyWith(_DevicesDetailsModel value,
          $Res Function(_DevicesDetailsModel) then) =
      __$DevicesDetailsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable String name,
      @nullable @JsonKey(name: '_id') String id,
      @nullable String device_id,
      @nullable String field_id,
      @nullable String user_id,
      @nullable String gateway_id});
}

class __$DevicesDetailsModelCopyWithImpl<$Res>
    extends _$DevicesDetailsModelCopyWithImpl<$Res>
    implements _$DevicesDetailsModelCopyWith<$Res> {
  __$DevicesDetailsModelCopyWithImpl(
      _DevicesDetailsModel _value, $Res Function(_DevicesDetailsModel) _then)
      : super(_value, (v) => _then(v as _DevicesDetailsModel));

  @override
  _DevicesDetailsModel get _value => super._value as _DevicesDetailsModel;

  @override
  $Res call({
    Object name = freezed,
    Object id = freezed,
    Object device_id = freezed,
    Object field_id = freezed,
    Object user_id = freezed,
    Object gateway_id = freezed,
  }) {
    return _then(_DevicesDetailsModel(
      name: name == freezed ? _value.name : name as String,
      id: id == freezed ? _value.id : id as String,
      device_id: device_id == freezed ? _value.device_id : device_id as String,
      field_id: field_id == freezed ? _value.field_id : field_id as String,
      user_id: user_id == freezed ? _value.user_id : user_id as String,
      gateway_id:
          gateway_id == freezed ? _value.gateway_id : gateway_id as String,
    ));
  }
}

@JsonSerializable()
class _$_DevicesDetailsModel implements _DevicesDetailsModel {
  const _$_DevicesDetailsModel(
      {@nullable this.name,
      @nullable @JsonKey(name: '_id') this.id,
      @nullable this.device_id,
      @nullable this.field_id,
      @nullable this.user_id,
      @nullable this.gateway_id});

  factory _$_DevicesDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$_$_DevicesDetailsModelFromJson(json);

  @override
  @nullable
  final String name;
  @override
  @nullable
  @JsonKey(name: '_id')
  final String id;
  @override
  @nullable
  final String device_id;
  @override
  @nullable
  final String field_id;
  @override
  @nullable
  final String user_id;
  @override
  @nullable
  final String gateway_id;

  @override
  String toString() {
    return 'DevicesDetailsModel(name: $name, id: $id, device_id: $device_id, field_id: $field_id, user_id: $user_id, gateway_id: $gateway_id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DevicesDetailsModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.device_id, device_id) ||
                const DeepCollectionEquality()
                    .equals(other.device_id, device_id)) &&
            (identical(other.field_id, field_id) ||
                const DeepCollectionEquality()
                    .equals(other.field_id, field_id)) &&
            (identical(other.user_id, user_id) ||
                const DeepCollectionEquality()
                    .equals(other.user_id, user_id)) &&
            (identical(other.gateway_id, gateway_id) ||
                const DeepCollectionEquality()
                    .equals(other.gateway_id, gateway_id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(device_id) ^
      const DeepCollectionEquality().hash(field_id) ^
      const DeepCollectionEquality().hash(user_id) ^
      const DeepCollectionEquality().hash(gateway_id);

  @override
  _$DevicesDetailsModelCopyWith<_DevicesDetailsModel> get copyWith =>
      __$DevicesDetailsModelCopyWithImpl<_DevicesDetailsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DevicesDetailsModelToJson(this);
  }
}

abstract class _DevicesDetailsModel implements DevicesDetailsModel {
  const factory _DevicesDetailsModel(
      {@nullable String name,
      @nullable @JsonKey(name: '_id') String id,
      @nullable String device_id,
      @nullable String field_id,
      @nullable String user_id,
      @nullable String gateway_id}) = _$_DevicesDetailsModel;

  factory _DevicesDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_DevicesDetailsModel.fromJson;

  @override
  @nullable
  String get name;
  @override
  @nullable
  @JsonKey(name: '_id')
  String get id;
  @override
  @nullable
  String get device_id;
  @override
  @nullable
  String get field_id;
  @override
  @nullable
  String get user_id;
  @override
  @nullable
  String get gateway_id;
  @override
  _$DevicesDetailsModelCopyWith<_DevicesDetailsModel> get copyWith;
}
