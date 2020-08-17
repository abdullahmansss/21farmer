//class RegisterResponseModel {
//  bool _status;
//  String _message;
//  Messages _messages;
//  Data _data;
//
//  RegisterResponseModel(
//      {bool status, String message, Messages messages, Data data}) {
//    this._status = status;
//    this._message = message;
//    this._messages = messages;
//    this._data = data;
//  }
//
//  bool get status => _status;
//  set status(bool status) => _status = status;
//  String get message => _message;
//  set message(String message) => _message = message;
//  Messages get messages => _messages;
//  set messages(Messages messages) => _messages = messages;
//  Data get data => _data;
//  set data(Data data) => _data = data;
//
//  RegisterResponseModel.fromJson(Map<String, dynamic> json) {
//    _status = json['status'];
//    _message = json['message'];
//    _messages = json['messages'] != null
//        ? new Messages.fromJson(json['messages'])
//        : null;
//    _data = json['data'] != null ? new Data.fromJson(json['data']) : null;
//  }
//
//  Map<String, dynamic> toJson() {
//    final Map<String, dynamic> data = new Map<String, dynamic>();
//    data['status'] = this._status;
//    data['message'] = this._message;
//    if (this._messages != null) {
//      data['messages'] = this._messages.toJson();
//    }
//    if (this._data != null) {
//      data['data'] = this._data.toJson();
//    }
//    return data;
//  }
//}
//
//class Messages {
//  List<String> _name;
//  List<String> _email;
//  List<String> _password;
//  List<String> _gender;
//  List<String> _mobile;
//  List<String> _countryId;
//  List<String> _cityId;
//  List<String> _agreement;
//
//  Messages(
//      {List<String> name,
//        List<String> email,
//        List<String> password,
//        List<String> gender,
//        List<String> mobile,
//        List<String> countryId,
//        List<String> cityId,
//        List<String> agreement}) {
//    this._name = name;
//    this._email = email;
//    this._password = password;
//    this._gender = gender;
//    this._mobile = mobile;
//    this._countryId = countryId;
//    this._cityId = cityId;
//    this._agreement = agreement;
//  }
//
//  List<String> get name => _name;
//  set name(List<String> name) => _name = name;
//  List<String> get email => _email;
//  set email(List<String> email) => _email = email;
//  List<String> get password => _password;
//  set password(List<String> password) => _password = password;
//  List<String> get gender => _gender;
//  set gender(List<String> gender) => _gender = gender;
//  List<String> get mobile => _mobile;
//  set mobile(List<String> mobile) => _mobile = mobile;
//  List<String> get countryId => _countryId;
//  set countryId(List<String> countryId) => _countryId = countryId;
//  List<String> get cityId => _cityId;
//  set cityId(List<String> cityId) => _cityId = cityId;
//  List<String> get agreement => _agreement;
//  set agreement(List<String> agreement) => _agreement = agreement;
//
//  Messages.fromJson(Map<String, dynamic> json) {
//    _name = json['name'].cast<String>();
//    _email = json['email'].cast<String>();
//    _password = json['password'].cast<String>();
//    _gender = json['gender'].cast<String>();
//    _mobile = json['mobile'].cast<String>();
//    _countryId = json['country_id'].cast<String>();
//    _cityId = json['city_id'].cast<String>();
//    _agreement = json['agreement'].cast<String>();
//  }
//
//  Map<String, dynamic> toJson() {
//    final Map<String, dynamic> data = new Map<String, dynamic>();
//    data['name'] = this._name;
//    data['email'] = this._email;
//    data['password'] = this._password;
//    data['gender'] = this._gender;
//    data['mobile'] = this._mobile;
//    data['country_id'] = this._countryId;
//    data['city_id'] = this._cityId;
//    data['agreement'] = this._agreement;
//    return data;
//  }
//}
//
//class Data {
//  int _id;
//  String _name;
//  Null _jobTitle;
//  Null _aboutTeacher;
//  String _email;
//  String _accountType;
//  String _gender;
//  Null _adminId;
//  Null _photo;
//  List<CountryId> _countryId;
//  List<CityId> _cityId;
//  String _mobile;
//  String _accountStatus;
//  Null _fbId;
//  Null _twitterId;
//  Null _googleId;
//  String _apiToken;
//  String _activeMailHash;
//  Null _deletedAt;
//  Null _rememberToken;
//  String _createdAt;
//  String _updatedAt;
//
//  Data(
//      {int id,
//        String name,
//        Null jobTitle,
//        Null aboutTeacher,
//        String email,
//        String accountType,
//        String gender,
//        Null adminId,
//        Null photo,
//        List<CountryId> countryId,
//        List<CityId> cityId,
//        String mobile,
//        String accountStatus,
//        Null fbId,
//        Null twitterId,
//        Null googleId,
//        String apiToken,
//        String activeMailHash,
//        Null deletedAt,
//        Null rememberToken,
//        String createdAt,
//        String updatedAt}) {
//    this._id = id;
//    this._name = name;
//    this._jobTitle = jobTitle;
//    this._aboutTeacher = aboutTeacher;
//    this._email = email;
//    this._accountType = accountType;
//    this._gender = gender;
//    this._adminId = adminId;
//    this._photo = photo;
//    this._countryId = countryId;
//    this._cityId = cityId;
//    this._mobile = mobile;
//    this._accountStatus = accountStatus;
//    this._fbId = fbId;
//    this._twitterId = twitterId;
//    this._googleId = googleId;
//    this._apiToken = apiToken;
//    this._activeMailHash = activeMailHash;
//    this._deletedAt = deletedAt;
//    this._rememberToken = rememberToken;
//    this._createdAt = createdAt;
//    this._updatedAt = updatedAt;
//  }
//
//  int get id => _id;
//  set id(int id) => _id = id;
//  String get name => _name;
//  set name(String name) => _name = name;
//  Null get jobTitle => _jobTitle;
//  set jobTitle(Null jobTitle) => _jobTitle = jobTitle;
//  Null get aboutTeacher => _aboutTeacher;
//  set aboutTeacher(Null aboutTeacher) => _aboutTeacher = aboutTeacher;
//  String get email => _email;
//  set email(String email) => _email = email;
//  String get accountType => _accountType;
//  set accountType(String accountType) => _accountType = accountType;
//  String get gender => _gender;
//  set gender(String gender) => _gender = gender;
//  Null get adminId => _adminId;
//  set adminId(Null adminId) => _adminId = adminId;
//  Null get photo => _photo;
//  set photo(Null photo) => _photo = photo;
//  List<CountryId> get countryId => _countryId;
//  set countryId(List<CountryId> countryId) => _countryId = countryId;
//  List<CityId> get cityId => _cityId;
//  set cityId(List<CityId> cityId) => _cityId = cityId;
//  String get mobile => _mobile;
//  set mobile(String mobile) => _mobile = mobile;
//  String get accountStatus => _accountStatus;
//  set accountStatus(String accountStatus) => _accountStatus = accountStatus;
//  Null get fbId => _fbId;
//  set fbId(Null fbId) => _fbId = fbId;
//  Null get twitterId => _twitterId;
//  set twitterId(Null twitterId) => _twitterId = twitterId;
//  Null get googleId => _googleId;
//  set googleId(Null googleId) => _googleId = googleId;
//  String get apiToken => _apiToken;
//  set apiToken(String apiToken) => _apiToken = apiToken;
//  String get activeMailHash => _activeMailHash;
//  set activeMailHash(String activeMailHash) => _activeMailHash = activeMailHash;
//  Null get deletedAt => _deletedAt;
//  set deletedAt(Null deletedAt) => _deletedAt = deletedAt;
//  Null get rememberToken => _rememberToken;
//  set rememberToken(Null rememberToken) => _rememberToken = rememberToken;
//  String get createdAt => _createdAt;
//  set createdAt(String createdAt) => _createdAt = createdAt;
//  String get updatedAt => _updatedAt;
//  set updatedAt(String updatedAt) => _updatedAt = updatedAt;
//
//  Data.fromJson(Map<String, dynamic> json) {
//    _id = json['id'];
//    _name = json['name'];
//    _jobTitle = json['job_title'];
//    _aboutTeacher = json['about_teacher'];
//    _email = json['email'];
//    _accountType = json['account_type'];
//    _gender = json['gender'];
//    _adminId = json['admin_id'];
//    _photo = json['photo'];
//    if (json['country_id'] != null) {
//      _countryId = new List<CountryId>();
//      json['country_id'].forEach((v) {
//        _countryId.add(new CountryId.fromJson(v));
//      });
//    }
//    if (json['city_id'] != null) {
//      _cityId = new List<CityId>();
//      json['city_id'].forEach((v) {
//        _cityId.add(new CityId.fromJson(v));
//      });
//    }
//    _mobile = json['mobile'];
//    _accountStatus = json['account_status'];
//    _fbId = json['fb_id'];
//    _twitterId = json['twitter_id'];
//    _googleId = json['google_id'];
//    _apiToken = json['api_token'];
//    _activeMailHash = json['active_mail_hash'];
//    _deletedAt = json['deleted_at'];
//    _rememberToken = json['remember_token'];
//    _createdAt = json['created_at'];
//    _updatedAt = json['updated_at'];
//  }
//
//  Map<String, dynamic> toJson() {
//    final Map<String, dynamic> data = new Map<String, dynamic>();
//    data['id'] = this._id;
//    data['name'] = this._name;
//    data['job_title'] = this._jobTitle;
//    data['about_teacher'] = this._aboutTeacher;
//    data['email'] = this._email;
//    data['account_type'] = this._accountType;
//    data['gender'] = this._gender;
//    data['admin_id'] = this._adminId;
//    data['photo'] = this._photo;
//    if (this._countryId != null) {
//      data['country_id'] = this._countryId.map((v) => v.toJson()).toList();
//    }
//    if (this._cityId != null) {
//      data['city_id'] = this._cityId.map((v) => v.toJson()).toList();
//    }
//    data['mobile'] = this._mobile;
//    data['account_status'] = this._accountStatus;
//    data['fb_id'] = this._fbId;
//    data['twitter_id'] = this._twitterId;
//    data['google_id'] = this._googleId;
//    data['api_token'] = this._apiToken;
//    data['active_mail_hash'] = this._activeMailHash;
//    data['deleted_at'] = this._deletedAt;
//    data['remember_token'] = this._rememberToken;
//    data['created_at'] = this._createdAt;
//    data['updated_at'] = this._updatedAt;
//    return data;
//  }
//}
//
//class CountryId {
//  int _id;
//  String _adminId;
//  String _countryName;
//  Null _flag;
//  String _code;
//  String _symbol;
//  String _createdAt;
//  String _updatedAt;
//
//  CountryId(
//      {int id,
//        String adminId,
//        String countryName,
//        Null flag,
//        String code,
//        String symbol,
//        String createdAt,
//        String updatedAt}) {
//    this._id = id;
//    this._adminId = adminId;
//    this._countryName = countryName;
//    this._flag = flag;
//    this._code = code;
//    this._symbol = symbol;
//    this._createdAt = createdAt;
//    this._updatedAt = updatedAt;
//  }
//
//  int get id => _id;
//  set id(int id) => _id = id;
//  String get adminId => _adminId;
//  set adminId(String adminId) => _adminId = adminId;
//  String get countryName => _countryName;
//  set countryName(String countryName) => _countryName = countryName;
//  Null get flag => _flag;
//  set flag(Null flag) => _flag = flag;
//  String get code => _code;
//  set code(String code) => _code = code;
//  String get symbol => _symbol;
//  set symbol(String symbol) => _symbol = symbol;
//  String get createdAt => _createdAt;
//  set createdAt(String createdAt) => _createdAt = createdAt;
//  String get updatedAt => _updatedAt;
//  set updatedAt(String updatedAt) => _updatedAt = updatedAt;
//
//  CountryId.fromJson(Map<String, dynamic> json) {
//    _id = json['id'];
//    _adminId = json['admin_id'];
//    _countryName = json['country_name'];
//    _flag = json['flag'];
//    _code = json['code'];
//    _symbol = json['symbol'];
//    _createdAt = json['created_at'];
//    _updatedAt = json['updated_at'];
//  }
//
//  Map<String, dynamic> toJson() {
//    final Map<String, dynamic> data = new Map<String, dynamic>();
//    data['id'] = this._id;
//    data['admin_id'] = this._adminId;
//    data['country_name'] = this._countryName;
//    data['flag'] = this._flag;
//    data['code'] = this._code;
//    data['symbol'] = this._symbol;
//    data['created_at'] = this._createdAt;
//    data['updated_at'] = this._updatedAt;
//    return data;
//  }
//}
//
//class CityId {
//  int _id;
//  String _adminId;
//  String _countryId;
//  String _cityName;
//  String _createdAt;
//  String _updatedAt;
//
//  CityId(
//      {int id,
//        String adminId,
//        String countryId,
//        String cityName,
//        String createdAt,
//        String updatedAt}) {
//    this._id = id;
//    this._adminId = adminId;
//    this._countryId = countryId;
//    this._cityName = cityName;
//    this._createdAt = createdAt;
//    this._updatedAt = updatedAt;
//  }
//
//  int get id => _id;
//  set id(int id) => _id = id;
//  String get adminId => _adminId;
//  set adminId(String adminId) => _adminId = adminId;
//  String get countryId => _countryId;
//  set countryId(String countryId) => _countryId = countryId;
//  String get cityName => _cityName;
//  set cityName(String cityName) => _cityName = cityName;
//  String get createdAt => _createdAt;
//  set createdAt(String createdAt) => _createdAt = createdAt;
//  String get updatedAt => _updatedAt;
//  set updatedAt(String updatedAt) => _updatedAt = updatedAt;
//
//  CityId.fromJson(Map<String, dynamic> json) {
//    _id = json['id'];
//    _adminId = json['admin_id'];
//    _countryId = json['country_id'];
//    _cityName = json['city_name'];
//    _createdAt = json['created_at'];
//    _updatedAt = json['updated_at'];
//  }
//
//  Map<String, dynamic> toJson() {
//    final Map<String, dynamic> data = new Map<String, dynamic>();
//    data['id'] = this._id;
//    data['admin_id'] = this._adminId;
//    data['country_id'] = this._countryId;
//    data['city_name'] = this._cityName;
//    data['created_at'] = this._createdAt;
//    data['updated_at'] = this._updatedAt;
//    return data;
//  }
//}
