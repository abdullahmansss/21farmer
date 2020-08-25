// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'gateway_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
GatewayModel _$GatewayModelFromJson(Map<String, dynamic> json) {
  return _GatewayModel.fromJson(json);
}

class _$GatewayModelTearOff {
  const _$GatewayModelTearOff();

  _GatewayModel call(
      {@nullable int statusCode, @nullable GatewayDetailsModel body}) {
    return _GatewayModel(
      statusCode: statusCode,
      body: body,
    );
  }
}

// ignore: unused_element
const $GatewayModel = _$GatewayModelTearOff();

mixin _$GatewayModel {
  @nullable
  int get statusCode;
  @nullable
  GatewayDetailsModel get body;

  Map<String, dynamic> toJson();
  $GatewayModelCopyWith<GatewayModel> get copyWith;
}

abstract class $GatewayModelCopyWith<$Res> {
  factory $GatewayModelCopyWith(
          GatewayModel value, $Res Function(GatewayModel) then) =
      _$GatewayModelCopyWithImpl<$Res>;
  $Res call({@nullable int statusCode, @nullable GatewayDetailsModel body});

  $GatewayDetailsModelCopyWith<$Res> get body;
}

class _$GatewayModelCopyWithImpl<$Res> implements $GatewayModelCopyWith<$Res> {
  _$GatewayModelCopyWithImpl(this._value, this._then);

  final GatewayModel _value;
  // ignore: unused_field
  final $Res Function(GatewayModel) _then;

  @override
  $Res call({
    Object statusCode = freezed,
    Object body = freezed,
  }) {
    return _then(_value.copyWith(
      statusCode: statusCode == freezed ? _value.statusCode : statusCode as int,
      body: body == freezed ? _value.body : body as GatewayDetailsModel,
    ));
  }

  @override
  $GatewayDetailsModelCopyWith<$Res> get body {
    if (_value.body == null) {
      return null;
    }
    return $GatewayDetailsModelCopyWith<$Res>(_value.body, (value) {
      return _then(_value.copyWith(body: value));
    });
  }
}

abstract class _$GatewayModelCopyWith<$Res>
    implements $GatewayModelCopyWith<$Res> {
  factory _$GatewayModelCopyWith(
          _GatewayModel value, $Res Function(_GatewayModel) then) =
      __$GatewayModelCopyWithImpl<$Res>;
  @override
  $Res call({@nullable int statusCode, @nullable GatewayDetailsModel body});

  @override
  $GatewayDetailsModelCopyWith<$Res> get body;
}

class __$GatewayModelCopyWithImpl<$Res> extends _$GatewayModelCopyWithImpl<$Res>
    implements _$GatewayModelCopyWith<$Res> {
  __$GatewayModelCopyWithImpl(
      _GatewayModel _value, $Res Function(_GatewayModel) _then)
      : super(_value, (v) => _then(v as _GatewayModel));

  @override
  _GatewayModel get _value => super._value as _GatewayModel;

  @override
  $Res call({
    Object statusCode = freezed,
    Object body = freezed,
  }) {
    return _then(_GatewayModel(
      statusCode: statusCode == freezed ? _value.statusCode : statusCode as int,
      body: body == freezed ? _value.body : body as GatewayDetailsModel,
    ));
  }
}

@JsonSerializable()
class _$_GatewayModel implements _GatewayModel {
  const _$_GatewayModel({@nullable this.statusCode, @nullable this.body});

  factory _$_GatewayModel.fromJson(Map<String, dynamic> json) =>
      _$_$_GatewayModelFromJson(json);

  @override
  @nullable
  final int statusCode;
  @override
  @nullable
  final GatewayDetailsModel body;

  @override
  String toString() {
    return 'GatewayModel(statusCode: $statusCode, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GatewayModel &&
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
  _$GatewayModelCopyWith<_GatewayModel> get copyWith =>
      __$GatewayModelCopyWithImpl<_GatewayModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GatewayModelToJson(this);
  }
}

abstract class _GatewayModel implements GatewayModel {
  const factory _GatewayModel(
      {@nullable int statusCode,
      @nullable GatewayDetailsModel body}) = _$_GatewayModel;

  factory _GatewayModel.fromJson(Map<String, dynamic> json) =
      _$_GatewayModel.fromJson;

  @override
  @nullable
  int get statusCode;
  @override
  @nullable
  GatewayDetailsModel get body;
  @override
  _$GatewayModelCopyWith<_GatewayModel> get copyWith;
}

GatewayDetailsModel _$GatewayDetailsModelFromJson(Map<String, dynamic> json) {
  return _GatewayDetailsModel.fromJson(json);
}

class _$GatewayDetailsModelTearOff {
  const _$GatewayDetailsModelTearOff();

  _GatewayDetailsModel call(
      {@nullable String name,
      @nullable String gateway_id,
      @nullable List<GatewayReadsModel> data}) {
    return _GatewayDetailsModel(
      name: name,
      gateway_id: gateway_id,
      data: data,
    );
  }
}

// ignore: unused_element
const $GatewayDetailsModel = _$GatewayDetailsModelTearOff();

mixin _$GatewayDetailsModel {
  @nullable
  String get name;
  @nullable
  String get gateway_id;
  @nullable
  List<GatewayReadsModel> get data;

  Map<String, dynamic> toJson();
  $GatewayDetailsModelCopyWith<GatewayDetailsModel> get copyWith;
}

abstract class $GatewayDetailsModelCopyWith<$Res> {
  factory $GatewayDetailsModelCopyWith(
          GatewayDetailsModel value, $Res Function(GatewayDetailsModel) then) =
      _$GatewayDetailsModelCopyWithImpl<$Res>;
  $Res call(
      {@nullable String name,
      @nullable String gateway_id,
      @nullable List<GatewayReadsModel> data});
}

class _$GatewayDetailsModelCopyWithImpl<$Res>
    implements $GatewayDetailsModelCopyWith<$Res> {
  _$GatewayDetailsModelCopyWithImpl(this._value, this._then);

  final GatewayDetailsModel _value;
  // ignore: unused_field
  final $Res Function(GatewayDetailsModel) _then;

  @override
  $Res call({
    Object name = freezed,
    Object gateway_id = freezed,
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      gateway_id:
          gateway_id == freezed ? _value.gateway_id : gateway_id as String,
      data: data == freezed ? _value.data : data as List<GatewayReadsModel>,
    ));
  }
}

abstract class _$GatewayDetailsModelCopyWith<$Res>
    implements $GatewayDetailsModelCopyWith<$Res> {
  factory _$GatewayDetailsModelCopyWith(_GatewayDetailsModel value,
          $Res Function(_GatewayDetailsModel) then) =
      __$GatewayDetailsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable String name,
      @nullable String gateway_id,
      @nullable List<GatewayReadsModel> data});
}

class __$GatewayDetailsModelCopyWithImpl<$Res>
    extends _$GatewayDetailsModelCopyWithImpl<$Res>
    implements _$GatewayDetailsModelCopyWith<$Res> {
  __$GatewayDetailsModelCopyWithImpl(
      _GatewayDetailsModel _value, $Res Function(_GatewayDetailsModel) _then)
      : super(_value, (v) => _then(v as _GatewayDetailsModel));

  @override
  _GatewayDetailsModel get _value => super._value as _GatewayDetailsModel;

  @override
  $Res call({
    Object name = freezed,
    Object gateway_id = freezed,
    Object data = freezed,
  }) {
    return _then(_GatewayDetailsModel(
      name: name == freezed ? _value.name : name as String,
      gateway_id:
          gateway_id == freezed ? _value.gateway_id : gateway_id as String,
      data: data == freezed ? _value.data : data as List<GatewayReadsModel>,
    ));
  }
}

@JsonSerializable()
class _$_GatewayDetailsModel implements _GatewayDetailsModel {
  const _$_GatewayDetailsModel(
      {@nullable this.name, @nullable this.gateway_id, @nullable this.data});

  factory _$_GatewayDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$_$_GatewayDetailsModelFromJson(json);

  @override
  @nullable
  final String name;
  @override
  @nullable
  final String gateway_id;
  @override
  @nullable
  final List<GatewayReadsModel> data;

  @override
  String toString() {
    return 'GatewayDetailsModel(name: $name, gateway_id: $gateway_id, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GatewayDetailsModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.gateway_id, gateway_id) ||
                const DeepCollectionEquality()
                    .equals(other.gateway_id, gateway_id)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(gateway_id) ^
      const DeepCollectionEquality().hash(data);

  @override
  _$GatewayDetailsModelCopyWith<_GatewayDetailsModel> get copyWith =>
      __$GatewayDetailsModelCopyWithImpl<_GatewayDetailsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GatewayDetailsModelToJson(this);
  }
}

abstract class _GatewayDetailsModel implements GatewayDetailsModel {
  const factory _GatewayDetailsModel(
      {@nullable String name,
      @nullable String gateway_id,
      @nullable List<GatewayReadsModel> data}) = _$_GatewayDetailsModel;

  factory _GatewayDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_GatewayDetailsModel.fromJson;

  @override
  @nullable
  String get name;
  @override
  @nullable
  String get gateway_id;
  @override
  @nullable
  List<GatewayReadsModel> get data;
  @override
  _$GatewayDetailsModelCopyWith<_GatewayDetailsModel> get copyWith;
}

GatewayReadsModel _$GatewayReadsModelFromJson(Map<String, dynamic> json) {
  return _GatewayReadsModel.fromJson(json);
}

class _$GatewayReadsModelTearOff {
  const _$GatewayReadsModelTearOff();

  _GatewayReadsModel call({@nullable GatewayReadsDetailsModelModel data}) {
    return _GatewayReadsModel(
      data: data,
    );
  }
}

// ignore: unused_element
const $GatewayReadsModel = _$GatewayReadsModelTearOff();

mixin _$GatewayReadsModel {
  @nullable
  GatewayReadsDetailsModelModel get data;

  Map<String, dynamic> toJson();
  $GatewayReadsModelCopyWith<GatewayReadsModel> get copyWith;
}

abstract class $GatewayReadsModelCopyWith<$Res> {
  factory $GatewayReadsModelCopyWith(
          GatewayReadsModel value, $Res Function(GatewayReadsModel) then) =
      _$GatewayReadsModelCopyWithImpl<$Res>;
  $Res call({@nullable GatewayReadsDetailsModelModel data});

  $GatewayReadsDetailsModelModelCopyWith<$Res> get data;
}

class _$GatewayReadsModelCopyWithImpl<$Res>
    implements $GatewayReadsModelCopyWith<$Res> {
  _$GatewayReadsModelCopyWithImpl(this._value, this._then);

  final GatewayReadsModel _value;
  // ignore: unused_field
  final $Res Function(GatewayReadsModel) _then;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      data:
          data == freezed ? _value.data : data as GatewayReadsDetailsModelModel,
    ));
  }

  @override
  $GatewayReadsDetailsModelModelCopyWith<$Res> get data {
    if (_value.data == null) {
      return null;
    }
    return $GatewayReadsDetailsModelModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

abstract class _$GatewayReadsModelCopyWith<$Res>
    implements $GatewayReadsModelCopyWith<$Res> {
  factory _$GatewayReadsModelCopyWith(
          _GatewayReadsModel value, $Res Function(_GatewayReadsModel) then) =
      __$GatewayReadsModelCopyWithImpl<$Res>;
  @override
  $Res call({@nullable GatewayReadsDetailsModelModel data});

  @override
  $GatewayReadsDetailsModelModelCopyWith<$Res> get data;
}

class __$GatewayReadsModelCopyWithImpl<$Res>
    extends _$GatewayReadsModelCopyWithImpl<$Res>
    implements _$GatewayReadsModelCopyWith<$Res> {
  __$GatewayReadsModelCopyWithImpl(
      _GatewayReadsModel _value, $Res Function(_GatewayReadsModel) _then)
      : super(_value, (v) => _then(v as _GatewayReadsModel));

  @override
  _GatewayReadsModel get _value => super._value as _GatewayReadsModel;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_GatewayReadsModel(
      data:
          data == freezed ? _value.data : data as GatewayReadsDetailsModelModel,
    ));
  }
}

@JsonSerializable()
class _$_GatewayReadsModel implements _GatewayReadsModel {
  const _$_GatewayReadsModel({@nullable this.data});

  factory _$_GatewayReadsModel.fromJson(Map<String, dynamic> json) =>
      _$_$_GatewayReadsModelFromJson(json);

  @override
  @nullable
  final GatewayReadsDetailsModelModel data;

  @override
  String toString() {
    return 'GatewayReadsModel(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GatewayReadsModel &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @override
  _$GatewayReadsModelCopyWith<_GatewayReadsModel> get copyWith =>
      __$GatewayReadsModelCopyWithImpl<_GatewayReadsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GatewayReadsModelToJson(this);
  }
}

abstract class _GatewayReadsModel implements GatewayReadsModel {
  const factory _GatewayReadsModel(
      {@nullable GatewayReadsDetailsModelModel data}) = _$_GatewayReadsModel;

  factory _GatewayReadsModel.fromJson(Map<String, dynamic> json) =
      _$_GatewayReadsModel.fromJson;

  @override
  @nullable
  GatewayReadsDetailsModelModel get data;
  @override
  _$GatewayReadsModelCopyWith<_GatewayReadsModel> get copyWith;
}

GatewayReadsDetailsModelModel _$GatewayReadsDetailsModelModelFromJson(
    Map<String, dynamic> json) {
  return _GatewayReadsDetailsModelModel.fromJson(json);
}

class _$GatewayReadsDetailsModelModelTearOff {
  const _$GatewayReadsDetailsModelModelTearOff();

  _GatewayReadsDetailsModelModel call(
      {@nullable double AIR_TEMP,
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
      @nullable double SOIL_PH}) {
    return _GatewayReadsDetailsModelModel(
      AIR_TEMP: AIR_TEMP,
      AIR_HUM: AIR_HUM,
      AIR_LUX: AIR_LUX,
      SOIL_MOISTURE: SOIL_MOISTURE,
      SOIL_EC: SOIL_EC,
      SOIL_TEMP: SOIL_TEMP,
      SOIL_TDS: SOIL_TDS,
      SOIL_SALINITY: SOIL_SALINITY,
      SOIL_EPSILON: SOIL_EPSILON,
      SOIL_N: SOIL_N,
      SOIL_P: SOIL_P,
      SOIL_K: SOIL_K,
      SOIL_PH: SOIL_PH,
    );
  }
}

// ignore: unused_element
const $GatewayReadsDetailsModelModel = _$GatewayReadsDetailsModelModelTearOff();

mixin _$GatewayReadsDetailsModelModel {
  @nullable
  double get AIR_TEMP;
  @nullable
  double get AIR_HUM;
  @nullable
  double get AIR_LUX;
  @nullable
  double get SOIL_MOISTURE;
  @nullable
  double get SOIL_EC;
  @nullable
  double get SOIL_TEMP;
  @nullable
  double get SOIL_TDS;
  @nullable
  double get SOIL_SALINITY;
  @nullable
  double get SOIL_EPSILON;
  @nullable
  double get SOIL_N;
  @nullable
  double get SOIL_P;
  @nullable
  double get SOIL_K;
  @nullable
  double get SOIL_PH;

  Map<String, dynamic> toJson();
  $GatewayReadsDetailsModelModelCopyWith<GatewayReadsDetailsModelModel>
      get copyWith;
}

abstract class $GatewayReadsDetailsModelModelCopyWith<$Res> {
  factory $GatewayReadsDetailsModelModelCopyWith(
          GatewayReadsDetailsModelModel value,
          $Res Function(GatewayReadsDetailsModelModel) then) =
      _$GatewayReadsDetailsModelModelCopyWithImpl<$Res>;
  $Res call(
      {@nullable double AIR_TEMP,
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
      @nullable double SOIL_PH});
}

class _$GatewayReadsDetailsModelModelCopyWithImpl<$Res>
    implements $GatewayReadsDetailsModelModelCopyWith<$Res> {
  _$GatewayReadsDetailsModelModelCopyWithImpl(this._value, this._then);

  final GatewayReadsDetailsModelModel _value;
  // ignore: unused_field
  final $Res Function(GatewayReadsDetailsModelModel) _then;

  @override
  $Res call({
    Object AIR_TEMP = freezed,
    Object AIR_HUM = freezed,
    Object AIR_LUX = freezed,
    Object SOIL_MOISTURE = freezed,
    Object SOIL_EC = freezed,
    Object SOIL_TEMP = freezed,
    Object SOIL_TDS = freezed,
    Object SOIL_SALINITY = freezed,
    Object SOIL_EPSILON = freezed,
    Object SOIL_N = freezed,
    Object SOIL_P = freezed,
    Object SOIL_K = freezed,
    Object SOIL_PH = freezed,
  }) {
    return _then(_value.copyWith(
      AIR_TEMP: AIR_TEMP == freezed ? _value.AIR_TEMP : AIR_TEMP as double,
      AIR_HUM: AIR_HUM == freezed ? _value.AIR_HUM : AIR_HUM as double,
      AIR_LUX: AIR_LUX == freezed ? _value.AIR_LUX : AIR_LUX as double,
      SOIL_MOISTURE: SOIL_MOISTURE == freezed
          ? _value.SOIL_MOISTURE
          : SOIL_MOISTURE as double,
      SOIL_EC: SOIL_EC == freezed ? _value.SOIL_EC : SOIL_EC as double,
      SOIL_TEMP: SOIL_TEMP == freezed ? _value.SOIL_TEMP : SOIL_TEMP as double,
      SOIL_TDS: SOIL_TDS == freezed ? _value.SOIL_TDS : SOIL_TDS as double,
      SOIL_SALINITY: SOIL_SALINITY == freezed
          ? _value.SOIL_SALINITY
          : SOIL_SALINITY as double,
      SOIL_EPSILON: SOIL_EPSILON == freezed
          ? _value.SOIL_EPSILON
          : SOIL_EPSILON as double,
      SOIL_N: SOIL_N == freezed ? _value.SOIL_N : SOIL_N as double,
      SOIL_P: SOIL_P == freezed ? _value.SOIL_P : SOIL_P as double,
      SOIL_K: SOIL_K == freezed ? _value.SOIL_K : SOIL_K as double,
      SOIL_PH: SOIL_PH == freezed ? _value.SOIL_PH : SOIL_PH as double,
    ));
  }
}

abstract class _$GatewayReadsDetailsModelModelCopyWith<$Res>
    implements $GatewayReadsDetailsModelModelCopyWith<$Res> {
  factory _$GatewayReadsDetailsModelModelCopyWith(
          _GatewayReadsDetailsModelModel value,
          $Res Function(_GatewayReadsDetailsModelModel) then) =
      __$GatewayReadsDetailsModelModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable double AIR_TEMP,
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
      @nullable double SOIL_PH});
}

class __$GatewayReadsDetailsModelModelCopyWithImpl<$Res>
    extends _$GatewayReadsDetailsModelModelCopyWithImpl<$Res>
    implements _$GatewayReadsDetailsModelModelCopyWith<$Res> {
  __$GatewayReadsDetailsModelModelCopyWithImpl(
      _GatewayReadsDetailsModelModel _value,
      $Res Function(_GatewayReadsDetailsModelModel) _then)
      : super(_value, (v) => _then(v as _GatewayReadsDetailsModelModel));

  @override
  _GatewayReadsDetailsModelModel get _value =>
      super._value as _GatewayReadsDetailsModelModel;

  @override
  $Res call({
    Object AIR_TEMP = freezed,
    Object AIR_HUM = freezed,
    Object AIR_LUX = freezed,
    Object SOIL_MOISTURE = freezed,
    Object SOIL_EC = freezed,
    Object SOIL_TEMP = freezed,
    Object SOIL_TDS = freezed,
    Object SOIL_SALINITY = freezed,
    Object SOIL_EPSILON = freezed,
    Object SOIL_N = freezed,
    Object SOIL_P = freezed,
    Object SOIL_K = freezed,
    Object SOIL_PH = freezed,
  }) {
    return _then(_GatewayReadsDetailsModelModel(
      AIR_TEMP: AIR_TEMP == freezed ? _value.AIR_TEMP : AIR_TEMP as double,
      AIR_HUM: AIR_HUM == freezed ? _value.AIR_HUM : AIR_HUM as double,
      AIR_LUX: AIR_LUX == freezed ? _value.AIR_LUX : AIR_LUX as double,
      SOIL_MOISTURE: SOIL_MOISTURE == freezed
          ? _value.SOIL_MOISTURE
          : SOIL_MOISTURE as double,
      SOIL_EC: SOIL_EC == freezed ? _value.SOIL_EC : SOIL_EC as double,
      SOIL_TEMP: SOIL_TEMP == freezed ? _value.SOIL_TEMP : SOIL_TEMP as double,
      SOIL_TDS: SOIL_TDS == freezed ? _value.SOIL_TDS : SOIL_TDS as double,
      SOIL_SALINITY: SOIL_SALINITY == freezed
          ? _value.SOIL_SALINITY
          : SOIL_SALINITY as double,
      SOIL_EPSILON: SOIL_EPSILON == freezed
          ? _value.SOIL_EPSILON
          : SOIL_EPSILON as double,
      SOIL_N: SOIL_N == freezed ? _value.SOIL_N : SOIL_N as double,
      SOIL_P: SOIL_P == freezed ? _value.SOIL_P : SOIL_P as double,
      SOIL_K: SOIL_K == freezed ? _value.SOIL_K : SOIL_K as double,
      SOIL_PH: SOIL_PH == freezed ? _value.SOIL_PH : SOIL_PH as double,
    ));
  }
}

@JsonSerializable()
class _$_GatewayReadsDetailsModelModel
    implements _GatewayReadsDetailsModelModel {
  const _$_GatewayReadsDetailsModelModel(
      {@nullable this.AIR_TEMP,
      @nullable this.AIR_HUM,
      @nullable this.AIR_LUX,
      @nullable this.SOIL_MOISTURE,
      @nullable this.SOIL_EC,
      @nullable this.SOIL_TEMP,
      @nullable this.SOIL_TDS,
      @nullable this.SOIL_SALINITY,
      @nullable this.SOIL_EPSILON,
      @nullable this.SOIL_N,
      @nullable this.SOIL_P,
      @nullable this.SOIL_K,
      @nullable this.SOIL_PH});

  factory _$_GatewayReadsDetailsModelModel.fromJson(
          Map<String, dynamic> json) =>
      _$_$_GatewayReadsDetailsModelModelFromJson(json);

  @override
  @nullable
  final double AIR_TEMP;
  @override
  @nullable
  final double AIR_HUM;
  @override
  @nullable
  final double AIR_LUX;
  @override
  @nullable
  final double SOIL_MOISTURE;
  @override
  @nullable
  final double SOIL_EC;
  @override
  @nullable
  final double SOIL_TEMP;
  @override
  @nullable
  final double SOIL_TDS;
  @override
  @nullable
  final double SOIL_SALINITY;
  @override
  @nullable
  final double SOIL_EPSILON;
  @override
  @nullable
  final double SOIL_N;
  @override
  @nullable
  final double SOIL_P;
  @override
  @nullable
  final double SOIL_K;
  @override
  @nullable
  final double SOIL_PH;

  @override
  String toString() {
    return 'GatewayReadsDetailsModelModel(AIR_TEMP: $AIR_TEMP, AIR_HUM: $AIR_HUM, AIR_LUX: $AIR_LUX, SOIL_MOISTURE: $SOIL_MOISTURE, SOIL_EC: $SOIL_EC, SOIL_TEMP: $SOIL_TEMP, SOIL_TDS: $SOIL_TDS, SOIL_SALINITY: $SOIL_SALINITY, SOIL_EPSILON: $SOIL_EPSILON, SOIL_N: $SOIL_N, SOIL_P: $SOIL_P, SOIL_K: $SOIL_K, SOIL_PH: $SOIL_PH)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GatewayReadsDetailsModelModel &&
            (identical(other.AIR_TEMP, AIR_TEMP) ||
                const DeepCollectionEquality()
                    .equals(other.AIR_TEMP, AIR_TEMP)) &&
            (identical(other.AIR_HUM, AIR_HUM) ||
                const DeepCollectionEquality()
                    .equals(other.AIR_HUM, AIR_HUM)) &&
            (identical(other.AIR_LUX, AIR_LUX) ||
                const DeepCollectionEquality()
                    .equals(other.AIR_LUX, AIR_LUX)) &&
            (identical(other.SOIL_MOISTURE, SOIL_MOISTURE) ||
                const DeepCollectionEquality()
                    .equals(other.SOIL_MOISTURE, SOIL_MOISTURE)) &&
            (identical(other.SOIL_EC, SOIL_EC) ||
                const DeepCollectionEquality()
                    .equals(other.SOIL_EC, SOIL_EC)) &&
            (identical(other.SOIL_TEMP, SOIL_TEMP) ||
                const DeepCollectionEquality()
                    .equals(other.SOIL_TEMP, SOIL_TEMP)) &&
            (identical(other.SOIL_TDS, SOIL_TDS) ||
                const DeepCollectionEquality()
                    .equals(other.SOIL_TDS, SOIL_TDS)) &&
            (identical(other.SOIL_SALINITY, SOIL_SALINITY) ||
                const DeepCollectionEquality()
                    .equals(other.SOIL_SALINITY, SOIL_SALINITY)) &&
            (identical(other.SOIL_EPSILON, SOIL_EPSILON) ||
                const DeepCollectionEquality()
                    .equals(other.SOIL_EPSILON, SOIL_EPSILON)) &&
            (identical(other.SOIL_N, SOIL_N) ||
                const DeepCollectionEquality().equals(other.SOIL_N, SOIL_N)) &&
            (identical(other.SOIL_P, SOIL_P) ||
                const DeepCollectionEquality().equals(other.SOIL_P, SOIL_P)) &&
            (identical(other.SOIL_K, SOIL_K) ||
                const DeepCollectionEquality().equals(other.SOIL_K, SOIL_K)) &&
            (identical(other.SOIL_PH, SOIL_PH) ||
                const DeepCollectionEquality().equals(other.SOIL_PH, SOIL_PH)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(AIR_TEMP) ^
      const DeepCollectionEquality().hash(AIR_HUM) ^
      const DeepCollectionEquality().hash(AIR_LUX) ^
      const DeepCollectionEquality().hash(SOIL_MOISTURE) ^
      const DeepCollectionEquality().hash(SOIL_EC) ^
      const DeepCollectionEquality().hash(SOIL_TEMP) ^
      const DeepCollectionEquality().hash(SOIL_TDS) ^
      const DeepCollectionEquality().hash(SOIL_SALINITY) ^
      const DeepCollectionEquality().hash(SOIL_EPSILON) ^
      const DeepCollectionEquality().hash(SOIL_N) ^
      const DeepCollectionEquality().hash(SOIL_P) ^
      const DeepCollectionEquality().hash(SOIL_K) ^
      const DeepCollectionEquality().hash(SOIL_PH);

  @override
  _$GatewayReadsDetailsModelModelCopyWith<_GatewayReadsDetailsModelModel>
      get copyWith => __$GatewayReadsDetailsModelModelCopyWithImpl<
          _GatewayReadsDetailsModelModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GatewayReadsDetailsModelModelToJson(this);
  }
}

abstract class _GatewayReadsDetailsModelModel
    implements GatewayReadsDetailsModelModel {
  const factory _GatewayReadsDetailsModelModel(
      {@nullable double AIR_TEMP,
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
      @nullable double SOIL_PH}) = _$_GatewayReadsDetailsModelModel;

  factory _GatewayReadsDetailsModelModel.fromJson(Map<String, dynamic> json) =
      _$_GatewayReadsDetailsModelModel.fromJson;

  @override
  @nullable
  double get AIR_TEMP;
  @override
  @nullable
  double get AIR_HUM;
  @override
  @nullable
  double get AIR_LUX;
  @override
  @nullable
  double get SOIL_MOISTURE;
  @override
  @nullable
  double get SOIL_EC;
  @override
  @nullable
  double get SOIL_TEMP;
  @override
  @nullable
  double get SOIL_TDS;
  @override
  @nullable
  double get SOIL_SALINITY;
  @override
  @nullable
  double get SOIL_EPSILON;
  @override
  @nullable
  double get SOIL_N;
  @override
  @nullable
  double get SOIL_P;
  @override
  @nullable
  double get SOIL_K;
  @override
  @nullable
  double get SOIL_PH;
  @override
  _$GatewayReadsDetailsModelModelCopyWith<_GatewayReadsDetailsModelModel>
      get copyWith;
}
