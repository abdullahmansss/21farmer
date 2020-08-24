// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LoginModel _$LoginModelFromJson(Map<String, dynamic> json) {
  return _LoginModel.fromJson(json);
}

class _$LoginModelTearOff {
  const _$LoginModelTearOff();

  _LoginModel call({@nullable int statusCode, @nullable UserModel body}) {
    return _LoginModel(
      statusCode: statusCode,
      body: body,
    );
  }
}

// ignore: unused_element
const $LoginModel = _$LoginModelTearOff();

mixin _$LoginModel {
  @nullable
  int get statusCode;
  @nullable
  UserModel get body;

  Map<String, dynamic> toJson();
  $LoginModelCopyWith<LoginModel> get copyWith;
}

abstract class $LoginModelCopyWith<$Res> {
  factory $LoginModelCopyWith(
          LoginModel value, $Res Function(LoginModel) then) =
      _$LoginModelCopyWithImpl<$Res>;
  $Res call({@nullable int statusCode, @nullable UserModel body});

  $UserModelCopyWith<$Res> get body;
}

class _$LoginModelCopyWithImpl<$Res> implements $LoginModelCopyWith<$Res> {
  _$LoginModelCopyWithImpl(this._value, this._then);

  final LoginModel _value;
  // ignore: unused_field
  final $Res Function(LoginModel) _then;

  @override
  $Res call({
    Object statusCode = freezed,
    Object body = freezed,
  }) {
    return _then(_value.copyWith(
      statusCode: statusCode == freezed ? _value.statusCode : statusCode as int,
      body: body == freezed ? _value.body : body as UserModel,
    ));
  }

  @override
  $UserModelCopyWith<$Res> get body {
    if (_value.body == null) {
      return null;
    }
    return $UserModelCopyWith<$Res>(_value.body, (value) {
      return _then(_value.copyWith(body: value));
    });
  }
}

abstract class _$LoginModelCopyWith<$Res> implements $LoginModelCopyWith<$Res> {
  factory _$LoginModelCopyWith(
          _LoginModel value, $Res Function(_LoginModel) then) =
      __$LoginModelCopyWithImpl<$Res>;
  @override
  $Res call({@nullable int statusCode, @nullable UserModel body});

  @override
  $UserModelCopyWith<$Res> get body;
}

class __$LoginModelCopyWithImpl<$Res> extends _$LoginModelCopyWithImpl<$Res>
    implements _$LoginModelCopyWith<$Res> {
  __$LoginModelCopyWithImpl(
      _LoginModel _value, $Res Function(_LoginModel) _then)
      : super(_value, (v) => _then(v as _LoginModel));

  @override
  _LoginModel get _value => super._value as _LoginModel;

  @override
  $Res call({
    Object statusCode = freezed,
    Object body = freezed,
  }) {
    return _then(_LoginModel(
      statusCode: statusCode == freezed ? _value.statusCode : statusCode as int,
      body: body == freezed ? _value.body : body as UserModel,
    ));
  }
}

@JsonSerializable()
class _$_LoginModel implements _LoginModel {
  const _$_LoginModel({@nullable this.statusCode, @nullable this.body});

  factory _$_LoginModel.fromJson(Map<String, dynamic> json) =>
      _$_$_LoginModelFromJson(json);

  @override
  @nullable
  final int statusCode;
  @override
  @nullable
  final UserModel body;

  @override
  String toString() {
    return 'LoginModel(statusCode: $statusCode, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginModel &&
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
  _$LoginModelCopyWith<_LoginModel> get copyWith =>
      __$LoginModelCopyWithImpl<_LoginModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LoginModelToJson(this);
  }
}

abstract class _LoginModel implements LoginModel {
  const factory _LoginModel(
      {@nullable int statusCode, @nullable UserModel body}) = _$_LoginModel;

  factory _LoginModel.fromJson(Map<String, dynamic> json) =
      _$_LoginModel.fromJson;

  @override
  @nullable
  int get statusCode;
  @override
  @nullable
  UserModel get body;
  @override
  _$LoginModelCopyWith<_LoginModel> get copyWith;
}

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

class _$UserModelTearOff {
  const _$UserModelTearOff();

  _UserModel call(
      {@nullable String message,
      @nullable String token,
      @nullable UserDetailsModel user}) {
    return _UserModel(
      message: message,
      token: token,
      user: user,
    );
  }
}

// ignore: unused_element
const $UserModel = _$UserModelTearOff();

mixin _$UserModel {
  @nullable
  String get message;
  @nullable
  String get token;
  @nullable
  UserDetailsModel get user;

  Map<String, dynamic> toJson();
  $UserModelCopyWith<UserModel> get copyWith;
}

abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res>;
  $Res call(
      {@nullable String message,
      @nullable String token,
      @nullable UserDetailsModel user});

  $UserDetailsModelCopyWith<$Res> get user;
}

class _$UserModelCopyWithImpl<$Res> implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  final UserModel _value;
  // ignore: unused_field
  final $Res Function(UserModel) _then;

  @override
  $Res call({
    Object message = freezed,
    Object token = freezed,
    Object user = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed ? _value.message : message as String,
      token: token == freezed ? _value.token : token as String,
      user: user == freezed ? _value.user : user as UserDetailsModel,
    ));
  }

  @override
  $UserDetailsModelCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserDetailsModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

abstract class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(
          _UserModel value, $Res Function(_UserModel) then) =
      __$UserModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable String message,
      @nullable String token,
      @nullable UserDetailsModel user});

  @override
  $UserDetailsModelCopyWith<$Res> get user;
}

class __$UserModelCopyWithImpl<$Res> extends _$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(_UserModel _value, $Res Function(_UserModel) _then)
      : super(_value, (v) => _then(v as _UserModel));

  @override
  _UserModel get _value => super._value as _UserModel;

  @override
  $Res call({
    Object message = freezed,
    Object token = freezed,
    Object user = freezed,
  }) {
    return _then(_UserModel(
      message: message == freezed ? _value.message : message as String,
      token: token == freezed ? _value.token : token as String,
      user: user == freezed ? _value.user : user as UserDetailsModel,
    ));
  }
}

@JsonSerializable()
class _$_UserModel implements _UserModel {
  const _$_UserModel(
      {@nullable this.message, @nullable this.token, @nullable this.user});

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$_$_UserModelFromJson(json);

  @override
  @nullable
  final String message;
  @override
  @nullable
  final String token;
  @override
  @nullable
  final UserDetailsModel user;

  @override
  String toString() {
    return 'UserModel(message: $message, token: $token, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserModel &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(user);

  @override
  _$UserModelCopyWith<_UserModel> get copyWith =>
      __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserModelToJson(this);
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {@nullable String message,
      @nullable String token,
      @nullable UserDetailsModel user}) = _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  @nullable
  String get message;
  @override
  @nullable
  String get token;
  @override
  @nullable
  UserDetailsModel get user;
  @override
  _$UserModelCopyWith<_UserModel> get copyWith;
}

UserDetailsModel _$UserDetailsModelFromJson(Map<String, dynamic> json) {
  return _UserDetailsModel.fromJson(json);
}

class _$UserDetailsModelTearOff {
  const _$UserDetailsModelTearOff();

  _UserDetailsModel call(
      {@nullable String mobile,
      @nullable String email,
      @nullable String name}) {
    return _UserDetailsModel(
      mobile: mobile,
      email: email,
      name: name,
    );
  }
}

// ignore: unused_element
const $UserDetailsModel = _$UserDetailsModelTearOff();

mixin _$UserDetailsModel {
  @nullable
  String get mobile;
  @nullable
  String get email;
  @nullable
  String get name;

  Map<String, dynamic> toJson();
  $UserDetailsModelCopyWith<UserDetailsModel> get copyWith;
}

abstract class $UserDetailsModelCopyWith<$Res> {
  factory $UserDetailsModelCopyWith(
          UserDetailsModel value, $Res Function(UserDetailsModel) then) =
      _$UserDetailsModelCopyWithImpl<$Res>;
  $Res call(
      {@nullable String mobile, @nullable String email, @nullable String name});
}

class _$UserDetailsModelCopyWithImpl<$Res>
    implements $UserDetailsModelCopyWith<$Res> {
  _$UserDetailsModelCopyWithImpl(this._value, this._then);

  final UserDetailsModel _value;
  // ignore: unused_field
  final $Res Function(UserDetailsModel) _then;

  @override
  $Res call({
    Object mobile = freezed,
    Object email = freezed,
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      mobile: mobile == freezed ? _value.mobile : mobile as String,
      email: email == freezed ? _value.email : email as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

abstract class _$UserDetailsModelCopyWith<$Res>
    implements $UserDetailsModelCopyWith<$Res> {
  factory _$UserDetailsModelCopyWith(
          _UserDetailsModel value, $Res Function(_UserDetailsModel) then) =
      __$UserDetailsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable String mobile, @nullable String email, @nullable String name});
}

class __$UserDetailsModelCopyWithImpl<$Res>
    extends _$UserDetailsModelCopyWithImpl<$Res>
    implements _$UserDetailsModelCopyWith<$Res> {
  __$UserDetailsModelCopyWithImpl(
      _UserDetailsModel _value, $Res Function(_UserDetailsModel) _then)
      : super(_value, (v) => _then(v as _UserDetailsModel));

  @override
  _UserDetailsModel get _value => super._value as _UserDetailsModel;

  @override
  $Res call({
    Object mobile = freezed,
    Object email = freezed,
    Object name = freezed,
  }) {
    return _then(_UserDetailsModel(
      mobile: mobile == freezed ? _value.mobile : mobile as String,
      email: email == freezed ? _value.email : email as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()
class _$_UserDetailsModel implements _UserDetailsModel {
  const _$_UserDetailsModel(
      {@nullable this.mobile, @nullable this.email, @nullable this.name});

  factory _$_UserDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDetailsModelFromJson(json);

  @override
  @nullable
  final String mobile;
  @override
  @nullable
  final String email;
  @override
  @nullable
  final String name;

  @override
  String toString() {
    return 'UserDetailsModel(mobile: $mobile, email: $email, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDetailsModel &&
            (identical(other.mobile, mobile) ||
                const DeepCollectionEquality().equals(other.mobile, mobile)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(mobile) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(name);

  @override
  _$UserDetailsModelCopyWith<_UserDetailsModel> get copyWith =>
      __$UserDetailsModelCopyWithImpl<_UserDetailsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserDetailsModelToJson(this);
  }
}

abstract class _UserDetailsModel implements UserDetailsModel {
  const factory _UserDetailsModel(
      {@nullable String mobile,
      @nullable String email,
      @nullable String name}) = _$_UserDetailsModel;

  factory _UserDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_UserDetailsModel.fromJson;

  @override
  @nullable
  String get mobile;
  @override
  @nullable
  String get email;
  @override
  @nullable
  String get name;
  @override
  _$UserDetailsModelCopyWith<_UserDetailsModel> get copyWith;
}
