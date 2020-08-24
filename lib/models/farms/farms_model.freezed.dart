// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'farms_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
FarmsModel _$FarmsModelFromJson(Map<String, dynamic> json) {
  return _FarmsModel.fromJson(json);
}

class _$FarmsModelTearOff {
  const _$FarmsModelTearOff();

  _FarmsModel call(
      {@nullable int statusCode, @nullable List<FarmDetailsModel> body}) {
    return _FarmsModel(
      statusCode: statusCode,
      body: body,
    );
  }
}

// ignore: unused_element
const $FarmsModel = _$FarmsModelTearOff();

mixin _$FarmsModel {
  @nullable
  int get statusCode;
  @nullable
  List<FarmDetailsModel> get body;

  Map<String, dynamic> toJson();
  $FarmsModelCopyWith<FarmsModel> get copyWith;
}

abstract class $FarmsModelCopyWith<$Res> {
  factory $FarmsModelCopyWith(
          FarmsModel value, $Res Function(FarmsModel) then) =
      _$FarmsModelCopyWithImpl<$Res>;
  $Res call({@nullable int statusCode, @nullable List<FarmDetailsModel> body});
}

class _$FarmsModelCopyWithImpl<$Res> implements $FarmsModelCopyWith<$Res> {
  _$FarmsModelCopyWithImpl(this._value, this._then);

  final FarmsModel _value;
  // ignore: unused_field
  final $Res Function(FarmsModel) _then;

  @override
  $Res call({
    Object statusCode = freezed,
    Object body = freezed,
  }) {
    return _then(_value.copyWith(
      statusCode: statusCode == freezed ? _value.statusCode : statusCode as int,
      body: body == freezed ? _value.body : body as List<FarmDetailsModel>,
    ));
  }
}

abstract class _$FarmsModelCopyWith<$Res> implements $FarmsModelCopyWith<$Res> {
  factory _$FarmsModelCopyWith(
          _FarmsModel value, $Res Function(_FarmsModel) then) =
      __$FarmsModelCopyWithImpl<$Res>;
  @override
  $Res call({@nullable int statusCode, @nullable List<FarmDetailsModel> body});
}

class __$FarmsModelCopyWithImpl<$Res> extends _$FarmsModelCopyWithImpl<$Res>
    implements _$FarmsModelCopyWith<$Res> {
  __$FarmsModelCopyWithImpl(
      _FarmsModel _value, $Res Function(_FarmsModel) _then)
      : super(_value, (v) => _then(v as _FarmsModel));

  @override
  _FarmsModel get _value => super._value as _FarmsModel;

  @override
  $Res call({
    Object statusCode = freezed,
    Object body = freezed,
  }) {
    return _then(_FarmsModel(
      statusCode: statusCode == freezed ? _value.statusCode : statusCode as int,
      body: body == freezed ? _value.body : body as List<FarmDetailsModel>,
    ));
  }
}

@JsonSerializable()
class _$_FarmsModel implements _FarmsModel {
  const _$_FarmsModel({@nullable this.statusCode, @nullable this.body});

  factory _$_FarmsModel.fromJson(Map<String, dynamic> json) =>
      _$_$_FarmsModelFromJson(json);

  @override
  @nullable
  final int statusCode;
  @override
  @nullable
  final List<FarmDetailsModel> body;

  @override
  String toString() {
    return 'FarmsModel(statusCode: $statusCode, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FarmsModel &&
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
  _$FarmsModelCopyWith<_FarmsModel> get copyWith =>
      __$FarmsModelCopyWithImpl<_FarmsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FarmsModelToJson(this);
  }
}

abstract class _FarmsModel implements FarmsModel {
  const factory _FarmsModel(
      {@nullable int statusCode,
      @nullable List<FarmDetailsModel> body}) = _$_FarmsModel;

  factory _FarmsModel.fromJson(Map<String, dynamic> json) =
      _$_FarmsModel.fromJson;

  @override
  @nullable
  int get statusCode;
  @override
  @nullable
  List<FarmDetailsModel> get body;
  @override
  _$FarmsModelCopyWith<_FarmsModel> get copyWith;
}

FarmDetailsModel _$FarmDetailsModelFromJson(Map<String, dynamic> json) {
  return _FarmDetailsModel.fromJson(json);
}

class _$FarmDetailsModelTearOff {
  const _$FarmDetailsModelTearOff();

  _FarmDetailsModel call(
      {@nullable String status,
      @nullable String id,
      @nullable String name,
      @nullable String user_id}) {
    return _FarmDetailsModel(
      status: status,
      id: id,
      name: name,
      user_id: user_id,
    );
  }
}

// ignore: unused_element
const $FarmDetailsModel = _$FarmDetailsModelTearOff();

mixin _$FarmDetailsModel {
  @nullable
  String get status;
  @nullable
  String get id;
  @nullable
  String get name;
  @nullable
  String get user_id;

  Map<String, dynamic> toJson();
  $FarmDetailsModelCopyWith<FarmDetailsModel> get copyWith;
}

abstract class $FarmDetailsModelCopyWith<$Res> {
  factory $FarmDetailsModelCopyWith(
          FarmDetailsModel value, $Res Function(FarmDetailsModel) then) =
      _$FarmDetailsModelCopyWithImpl<$Res>;
  $Res call(
      {@nullable String status,
      @nullable String id,
      @nullable String name,
      @nullable String user_id});
}

class _$FarmDetailsModelCopyWithImpl<$Res>
    implements $FarmDetailsModelCopyWith<$Res> {
  _$FarmDetailsModelCopyWithImpl(this._value, this._then);

  final FarmDetailsModel _value;
  // ignore: unused_field
  final $Res Function(FarmDetailsModel) _then;

  @override
  $Res call({
    Object status = freezed,
    Object id = freezed,
    Object name = freezed,
    Object user_id = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed ? _value.status : status as String,
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      user_id: user_id == freezed ? _value.user_id : user_id as String,
    ));
  }
}

abstract class _$FarmDetailsModelCopyWith<$Res>
    implements $FarmDetailsModelCopyWith<$Res> {
  factory _$FarmDetailsModelCopyWith(
          _FarmDetailsModel value, $Res Function(_FarmDetailsModel) then) =
      __$FarmDetailsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable String status,
      @nullable String id,
      @nullable String name,
      @nullable String user_id});
}

class __$FarmDetailsModelCopyWithImpl<$Res>
    extends _$FarmDetailsModelCopyWithImpl<$Res>
    implements _$FarmDetailsModelCopyWith<$Res> {
  __$FarmDetailsModelCopyWithImpl(
      _FarmDetailsModel _value, $Res Function(_FarmDetailsModel) _then)
      : super(_value, (v) => _then(v as _FarmDetailsModel));

  @override
  _FarmDetailsModel get _value => super._value as _FarmDetailsModel;

  @override
  $Res call({
    Object status = freezed,
    Object id = freezed,
    Object name = freezed,
    Object user_id = freezed,
  }) {
    return _then(_FarmDetailsModel(
      status: status == freezed ? _value.status : status as String,
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      user_id: user_id == freezed ? _value.user_id : user_id as String,
    ));
  }
}

@JsonSerializable()
class _$_FarmDetailsModel implements _FarmDetailsModel {
  const _$_FarmDetailsModel(
      {@nullable this.status,
      @nullable this.id,
      @nullable this.name,
      @nullable this.user_id});

  factory _$_FarmDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$_$_FarmDetailsModelFromJson(json);

  @override
  @nullable
  final String status;
  @override
  @nullable
  final String id;
  @override
  @nullable
  final String name;
  @override
  @nullable
  final String user_id;

  @override
  String toString() {
    return 'FarmDetailsModel(status: $status, id: $id, name: $name, user_id: $user_id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FarmDetailsModel &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.user_id, user_id) ||
                const DeepCollectionEquality().equals(other.user_id, user_id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(user_id);

  @override
  _$FarmDetailsModelCopyWith<_FarmDetailsModel> get copyWith =>
      __$FarmDetailsModelCopyWithImpl<_FarmDetailsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FarmDetailsModelToJson(this);
  }
}

abstract class _FarmDetailsModel implements FarmDetailsModel {
  const factory _FarmDetailsModel(
      {@nullable String status,
      @nullable String id,
      @nullable String name,
      @nullable String user_id}) = _$_FarmDetailsModel;

  factory _FarmDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_FarmDetailsModel.fromJson;

  @override
  @nullable
  String get status;
  @override
  @nullable
  String get id;
  @override
  @nullable
  String get name;
  @override
  @nullable
  String get user_id;
  @override
  _$FarmDetailsModelCopyWith<_FarmDetailsModel> get copyWith;
}
