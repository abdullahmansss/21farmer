// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'reads_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ReadsModel _$ReadsModelFromJson(Map<String, dynamic> json) {
  return _ReadsModel.fromJson(json);
}

class _$ReadsModelTearOff {
  const _$ReadsModelTearOff();

  _ReadsModel call(
      {@nullable int statusCode, @nullable ReadsDetailsModel body}) {
    return _ReadsModel(
      statusCode: statusCode,
      body: body,
    );
  }
}

// ignore: unused_element
const $ReadsModel = _$ReadsModelTearOff();

mixin _$ReadsModel {
  @nullable
  int get statusCode;
  @nullable
  ReadsDetailsModel get body;

  Map<String, dynamic> toJson();
  $ReadsModelCopyWith<ReadsModel> get copyWith;
}

abstract class $ReadsModelCopyWith<$Res> {
  factory $ReadsModelCopyWith(
          ReadsModel value, $Res Function(ReadsModel) then) =
      _$ReadsModelCopyWithImpl<$Res>;
  $Res call({@nullable int statusCode, @nullable ReadsDetailsModel body});

  $ReadsDetailsModelCopyWith<$Res> get body;
}

class _$ReadsModelCopyWithImpl<$Res> implements $ReadsModelCopyWith<$Res> {
  _$ReadsModelCopyWithImpl(this._value, this._then);

  final ReadsModel _value;
  // ignore: unused_field
  final $Res Function(ReadsModel) _then;

  @override
  $Res call({
    Object statusCode = freezed,
    Object body = freezed,
  }) {
    return _then(_value.copyWith(
      statusCode: statusCode == freezed ? _value.statusCode : statusCode as int,
      body: body == freezed ? _value.body : body as ReadsDetailsModel,
    ));
  }

  @override
  $ReadsDetailsModelCopyWith<$Res> get body {
    if (_value.body == null) {
      return null;
    }
    return $ReadsDetailsModelCopyWith<$Res>(_value.body, (value) {
      return _then(_value.copyWith(body: value));
    });
  }
}

abstract class _$ReadsModelCopyWith<$Res> implements $ReadsModelCopyWith<$Res> {
  factory _$ReadsModelCopyWith(
          _ReadsModel value, $Res Function(_ReadsModel) then) =
      __$ReadsModelCopyWithImpl<$Res>;
  @override
  $Res call({@nullable int statusCode, @nullable ReadsDetailsModel body});

  @override
  $ReadsDetailsModelCopyWith<$Res> get body;
}

class __$ReadsModelCopyWithImpl<$Res> extends _$ReadsModelCopyWithImpl<$Res>
    implements _$ReadsModelCopyWith<$Res> {
  __$ReadsModelCopyWithImpl(
      _ReadsModel _value, $Res Function(_ReadsModel) _then)
      : super(_value, (v) => _then(v as _ReadsModel));

  @override
  _ReadsModel get _value => super._value as _ReadsModel;

  @override
  $Res call({
    Object statusCode = freezed,
    Object body = freezed,
  }) {
    return _then(_ReadsModel(
      statusCode: statusCode == freezed ? _value.statusCode : statusCode as int,
      body: body == freezed ? _value.body : body as ReadsDetailsModel,
    ));
  }
}

@JsonSerializable()
class _$_ReadsModel implements _ReadsModel {
  const _$_ReadsModel({@nullable this.statusCode, @nullable this.body});

  factory _$_ReadsModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ReadsModelFromJson(json);

  @override
  @nullable
  final int statusCode;
  @override
  @nullable
  final ReadsDetailsModel body;

  @override
  String toString() {
    return 'ReadsModel(statusCode: $statusCode, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReadsModel &&
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
  _$ReadsModelCopyWith<_ReadsModel> get copyWith =>
      __$ReadsModelCopyWithImpl<_ReadsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ReadsModelToJson(this);
  }
}

abstract class _ReadsModel implements ReadsModel {
  const factory _ReadsModel(
      {@nullable int statusCode,
      @nullable ReadsDetailsModel body}) = _$_ReadsModel;

  factory _ReadsModel.fromJson(Map<String, dynamic> json) =
      _$_ReadsModel.fromJson;

  @override
  @nullable
  int get statusCode;
  @override
  @nullable
  ReadsDetailsModel get body;
  @override
  _$ReadsModelCopyWith<_ReadsModel> get copyWith;
}

ReadsDetailsModel _$ReadsDetailsModelFromJson(Map<String, dynamic> json) {
  return _ReadsDetailsModel.fromJson(json);
}

class _$ReadsDetailsModelTearOff {
  const _$ReadsDetailsModelTearOff();

  _ReadsDetailsModel call(
      {@nullable @JsonKey(name: '_id') String id,
      @nullable String name,
      @nullable ReadsDataModel data}) {
    return _ReadsDetailsModel(
      id: id,
      name: name,
      data: data,
    );
  }
}

// ignore: unused_element
const $ReadsDetailsModel = _$ReadsDetailsModelTearOff();

mixin _$ReadsDetailsModel {
  @nullable
  @JsonKey(name: '_id')
  String get id;
  @nullable
  String get name;
  @nullable
  ReadsDataModel get data;

  Map<String, dynamic> toJson();
  $ReadsDetailsModelCopyWith<ReadsDetailsModel> get copyWith;
}

abstract class $ReadsDetailsModelCopyWith<$Res> {
  factory $ReadsDetailsModelCopyWith(
          ReadsDetailsModel value, $Res Function(ReadsDetailsModel) then) =
      _$ReadsDetailsModelCopyWithImpl<$Res>;
  $Res call(
      {@nullable @JsonKey(name: '_id') String id,
      @nullable String name,
      @nullable ReadsDataModel data});

  $ReadsDataModelCopyWith<$Res> get data;
}

class _$ReadsDetailsModelCopyWithImpl<$Res>
    implements $ReadsDetailsModelCopyWith<$Res> {
  _$ReadsDetailsModelCopyWithImpl(this._value, this._then);

  final ReadsDetailsModel _value;
  // ignore: unused_field
  final $Res Function(ReadsDetailsModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      data: data == freezed ? _value.data : data as ReadsDataModel,
    ));
  }

  @override
  $ReadsDataModelCopyWith<$Res> get data {
    if (_value.data == null) {
      return null;
    }
    return $ReadsDataModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

abstract class _$ReadsDetailsModelCopyWith<$Res>
    implements $ReadsDetailsModelCopyWith<$Res> {
  factory _$ReadsDetailsModelCopyWith(
          _ReadsDetailsModel value, $Res Function(_ReadsDetailsModel) then) =
      __$ReadsDetailsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable @JsonKey(name: '_id') String id,
      @nullable String name,
      @nullable ReadsDataModel data});

  @override
  $ReadsDataModelCopyWith<$Res> get data;
}

class __$ReadsDetailsModelCopyWithImpl<$Res>
    extends _$ReadsDetailsModelCopyWithImpl<$Res>
    implements _$ReadsDetailsModelCopyWith<$Res> {
  __$ReadsDetailsModelCopyWithImpl(
      _ReadsDetailsModel _value, $Res Function(_ReadsDetailsModel) _then)
      : super(_value, (v) => _then(v as _ReadsDetailsModel));

  @override
  _ReadsDetailsModel get _value => super._value as _ReadsDetailsModel;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object data = freezed,
  }) {
    return _then(_ReadsDetailsModel(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      data: data == freezed ? _value.data : data as ReadsDataModel,
    ));
  }
}

@JsonSerializable()
class _$_ReadsDetailsModel implements _ReadsDetailsModel {
  const _$_ReadsDetailsModel(
      {@nullable @JsonKey(name: '_id') this.id,
      @nullable this.name,
      @nullable this.data});

  factory _$_ReadsDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ReadsDetailsModelFromJson(json);

  @override
  @nullable
  @JsonKey(name: '_id')
  final String id;
  @override
  @nullable
  final String name;
  @override
  @nullable
  final ReadsDataModel data;

  @override
  String toString() {
    return 'ReadsDetailsModel(id: $id, name: $name, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReadsDetailsModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(data);

  @override
  _$ReadsDetailsModelCopyWith<_ReadsDetailsModel> get copyWith =>
      __$ReadsDetailsModelCopyWithImpl<_ReadsDetailsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ReadsDetailsModelToJson(this);
  }
}

abstract class _ReadsDetailsModel implements ReadsDetailsModel {
  const factory _ReadsDetailsModel(
      {@nullable @JsonKey(name: '_id') String id,
      @nullable String name,
      @nullable ReadsDataModel data}) = _$_ReadsDetailsModel;

  factory _ReadsDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_ReadsDetailsModel.fromJson;

  @override
  @nullable
  @JsonKey(name: '_id')
  String get id;
  @override
  @nullable
  String get name;
  @override
  @nullable
  ReadsDataModel get data;
  @override
  _$ReadsDetailsModelCopyWith<_ReadsDetailsModel> get copyWith;
}

ReadsDataModel _$ReadsDataModelFromJson(Map<String, dynamic> json) {
  return _ReadsDataModel.fromJson(json);
}

class _$ReadsDataModelTearOff {
  const _$ReadsDataModelTearOff();

  _ReadsDataModel call(
      {@nullable String hardwareDateTime,
      @nullable ReadsDataDetailsModel data}) {
    return _ReadsDataModel(
      hardwareDateTime: hardwareDateTime,
      data: data,
    );
  }
}

// ignore: unused_element
const $ReadsDataModel = _$ReadsDataModelTearOff();

mixin _$ReadsDataModel {
  @nullable
  String get hardwareDateTime;
  @nullable
  ReadsDataDetailsModel get data;

  Map<String, dynamic> toJson();
  $ReadsDataModelCopyWith<ReadsDataModel> get copyWith;
}

abstract class $ReadsDataModelCopyWith<$Res> {
  factory $ReadsDataModelCopyWith(
          ReadsDataModel value, $Res Function(ReadsDataModel) then) =
      _$ReadsDataModelCopyWithImpl<$Res>;
  $Res call(
      {@nullable String hardwareDateTime,
      @nullable ReadsDataDetailsModel data});

  $ReadsDataDetailsModelCopyWith<$Res> get data;
}

class _$ReadsDataModelCopyWithImpl<$Res>
    implements $ReadsDataModelCopyWith<$Res> {
  _$ReadsDataModelCopyWithImpl(this._value, this._then);

  final ReadsDataModel _value;
  // ignore: unused_field
  final $Res Function(ReadsDataModel) _then;

  @override
  $Res call({
    Object hardwareDateTime = freezed,
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      hardwareDateTime: hardwareDateTime == freezed
          ? _value.hardwareDateTime
          : hardwareDateTime as String,
      data: data == freezed ? _value.data : data as ReadsDataDetailsModel,
    ));
  }

  @override
  $ReadsDataDetailsModelCopyWith<$Res> get data {
    if (_value.data == null) {
      return null;
    }
    return $ReadsDataDetailsModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

abstract class _$ReadsDataModelCopyWith<$Res>
    implements $ReadsDataModelCopyWith<$Res> {
  factory _$ReadsDataModelCopyWith(
          _ReadsDataModel value, $Res Function(_ReadsDataModel) then) =
      __$ReadsDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable String hardwareDateTime,
      @nullable ReadsDataDetailsModel data});

  @override
  $ReadsDataDetailsModelCopyWith<$Res> get data;
}

class __$ReadsDataModelCopyWithImpl<$Res>
    extends _$ReadsDataModelCopyWithImpl<$Res>
    implements _$ReadsDataModelCopyWith<$Res> {
  __$ReadsDataModelCopyWithImpl(
      _ReadsDataModel _value, $Res Function(_ReadsDataModel) _then)
      : super(_value, (v) => _then(v as _ReadsDataModel));

  @override
  _ReadsDataModel get _value => super._value as _ReadsDataModel;

  @override
  $Res call({
    Object hardwareDateTime = freezed,
    Object data = freezed,
  }) {
    return _then(_ReadsDataModel(
      hardwareDateTime: hardwareDateTime == freezed
          ? _value.hardwareDateTime
          : hardwareDateTime as String,
      data: data == freezed ? _value.data : data as ReadsDataDetailsModel,
    ));
  }
}

@JsonSerializable()
class _$_ReadsDataModel implements _ReadsDataModel {
  const _$_ReadsDataModel(
      {@nullable this.hardwareDateTime, @nullable this.data});

  factory _$_ReadsDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ReadsDataModelFromJson(json);

  @override
  @nullable
  final String hardwareDateTime;
  @override
  @nullable
  final ReadsDataDetailsModel data;

  @override
  String toString() {
    return 'ReadsDataModel(hardwareDateTime: $hardwareDateTime, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReadsDataModel &&
            (identical(other.hardwareDateTime, hardwareDateTime) ||
                const DeepCollectionEquality()
                    .equals(other.hardwareDateTime, hardwareDateTime)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(hardwareDateTime) ^
      const DeepCollectionEquality().hash(data);

  @override
  _$ReadsDataModelCopyWith<_ReadsDataModel> get copyWith =>
      __$ReadsDataModelCopyWithImpl<_ReadsDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ReadsDataModelToJson(this);
  }
}

abstract class _ReadsDataModel implements ReadsDataModel {
  const factory _ReadsDataModel(
      {@nullable String hardwareDateTime,
      @nullable ReadsDataDetailsModel data}) = _$_ReadsDataModel;

  factory _ReadsDataModel.fromJson(Map<String, dynamic> json) =
      _$_ReadsDataModel.fromJson;

  @override
  @nullable
  String get hardwareDateTime;
  @override
  @nullable
  ReadsDataDetailsModel get data;
  @override
  _$ReadsDataModelCopyWith<_ReadsDataModel> get copyWith;
}

ReadsDataDetailsModel _$ReadsDataDetailsModelFromJson(
    Map<String, dynamic> json) {
  return _ReadsDataDetailsModel.fromJson(json);
}

class _$ReadsDataDetailsModelTearOff {
  const _$ReadsDataDetailsModelTearOff();

  _ReadsDataDetailsModel call(
      {@nullable double AIR_TEMP,
      @nullable double AIR_HUM,
      @nullable double AIR_LUX,
      @nullable double SOIL_MOISTURE,
      @nullable double SOIL_EC,
      @nullable double SOIL_TEMP,
      @nullable double SOIL_TDS,
      @nullable double SOIL_SALINITY,
      @nullable double SOIL_EPSILON}) {
    return _ReadsDataDetailsModel(
      AIR_TEMP: AIR_TEMP,
      AIR_HUM: AIR_HUM,
      AIR_LUX: AIR_LUX,
      SOIL_MOISTURE: SOIL_MOISTURE,
      SOIL_EC: SOIL_EC,
      SOIL_TEMP: SOIL_TEMP,
      SOIL_TDS: SOIL_TDS,
      SOIL_SALINITY: SOIL_SALINITY,
      SOIL_EPSILON: SOIL_EPSILON,
    );
  }
}

// ignore: unused_element
const $ReadsDataDetailsModel = _$ReadsDataDetailsModelTearOff();

mixin _$ReadsDataDetailsModel {
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

  Map<String, dynamic> toJson();
  $ReadsDataDetailsModelCopyWith<ReadsDataDetailsModel> get copyWith;
}

abstract class $ReadsDataDetailsModelCopyWith<$Res> {
  factory $ReadsDataDetailsModelCopyWith(ReadsDataDetailsModel value,
          $Res Function(ReadsDataDetailsModel) then) =
      _$ReadsDataDetailsModelCopyWithImpl<$Res>;
  $Res call(
      {@nullable double AIR_TEMP,
      @nullable double AIR_HUM,
      @nullable double AIR_LUX,
      @nullable double SOIL_MOISTURE,
      @nullable double SOIL_EC,
      @nullable double SOIL_TEMP,
      @nullable double SOIL_TDS,
      @nullable double SOIL_SALINITY,
      @nullable double SOIL_EPSILON});
}

class _$ReadsDataDetailsModelCopyWithImpl<$Res>
    implements $ReadsDataDetailsModelCopyWith<$Res> {
  _$ReadsDataDetailsModelCopyWithImpl(this._value, this._then);

  final ReadsDataDetailsModel _value;
  // ignore: unused_field
  final $Res Function(ReadsDataDetailsModel) _then;

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
    ));
  }
}

abstract class _$ReadsDataDetailsModelCopyWith<$Res>
    implements $ReadsDataDetailsModelCopyWith<$Res> {
  factory _$ReadsDataDetailsModelCopyWith(_ReadsDataDetailsModel value,
          $Res Function(_ReadsDataDetailsModel) then) =
      __$ReadsDataDetailsModelCopyWithImpl<$Res>;
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
      @nullable double SOIL_EPSILON});
}

class __$ReadsDataDetailsModelCopyWithImpl<$Res>
    extends _$ReadsDataDetailsModelCopyWithImpl<$Res>
    implements _$ReadsDataDetailsModelCopyWith<$Res> {
  __$ReadsDataDetailsModelCopyWithImpl(_ReadsDataDetailsModel _value,
      $Res Function(_ReadsDataDetailsModel) _then)
      : super(_value, (v) => _then(v as _ReadsDataDetailsModel));

  @override
  _ReadsDataDetailsModel get _value => super._value as _ReadsDataDetailsModel;

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
  }) {
    return _then(_ReadsDataDetailsModel(
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
    ));
  }
}

@JsonSerializable()
class _$_ReadsDataDetailsModel implements _ReadsDataDetailsModel {
  const _$_ReadsDataDetailsModel(
      {@nullable this.AIR_TEMP,
      @nullable this.AIR_HUM,
      @nullable this.AIR_LUX,
      @nullable this.SOIL_MOISTURE,
      @nullable this.SOIL_EC,
      @nullable this.SOIL_TEMP,
      @nullable this.SOIL_TDS,
      @nullable this.SOIL_SALINITY,
      @nullable this.SOIL_EPSILON});

  factory _$_ReadsDataDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ReadsDataDetailsModelFromJson(json);

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
  String toString() {
    return 'ReadsDataDetailsModel(AIR_TEMP: $AIR_TEMP, AIR_HUM: $AIR_HUM, AIR_LUX: $AIR_LUX, SOIL_MOISTURE: $SOIL_MOISTURE, SOIL_EC: $SOIL_EC, SOIL_TEMP: $SOIL_TEMP, SOIL_TDS: $SOIL_TDS, SOIL_SALINITY: $SOIL_SALINITY, SOIL_EPSILON: $SOIL_EPSILON)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReadsDataDetailsModel &&
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
                    .equals(other.SOIL_EPSILON, SOIL_EPSILON)));
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
      const DeepCollectionEquality().hash(SOIL_EPSILON);

  @override
  _$ReadsDataDetailsModelCopyWith<_ReadsDataDetailsModel> get copyWith =>
      __$ReadsDataDetailsModelCopyWithImpl<_ReadsDataDetailsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ReadsDataDetailsModelToJson(this);
  }
}

abstract class _ReadsDataDetailsModel implements ReadsDataDetailsModel {
  const factory _ReadsDataDetailsModel(
      {@nullable double AIR_TEMP,
      @nullable double AIR_HUM,
      @nullable double AIR_LUX,
      @nullable double SOIL_MOISTURE,
      @nullable double SOIL_EC,
      @nullable double SOIL_TEMP,
      @nullable double SOIL_TDS,
      @nullable double SOIL_SALINITY,
      @nullable double SOIL_EPSILON}) = _$_ReadsDataDetailsModel;

  factory _ReadsDataDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_ReadsDataDetailsModel.fromJson;

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
  _$ReadsDataDetailsModelCopyWith<_ReadsDataDetailsModel> get copyWith;
}
