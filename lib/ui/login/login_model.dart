//class LoginResponseModel {
//    bool _status;
//    String _message;
//    Data _data;
//
//    LoginResponseModel({bool status, String message, Data data}) {
//        this._status = status;
//        this._message = message;
//        this._data = data;
//    }
//
//    bool get status => _status;
//    set status(bool status) => _status = status;
//    String get message => _message;
//    set message(String message) => _message = message;
//    Data get data => _data;
//    set data(Data data) => _data = data;
//
//    LoginResponseModel.fromJson(Map<String, dynamic> json) {
//        _status = json['status'];
//        _message = json['message'];
//        _data = json['data'] != null ? new Data.fromJson(json['data']) : null;
//    }
//
//    Map<String, dynamic> toJson() {
//        final Map<String, dynamic> data = new Map<String, dynamic>();
//        data['status'] = this._status;
//        data['message'] = this._message;
//        if (this._data != null) {
//            data['data'] = this._data.toJson();
//        }
//        return data;
//    }
//}
//
//class Data {
//    int _id;
//    String _name;
//    Null _jobTitle;
//    Null _aboutTeacher;
//    String _email;
//    String _accountType;
//    String _gender;
//    Null _adminId;
//    Null _photo;
//    String _countryId;
//    String _cityId;
//    String _mobile;
//    String _accountStatus;
//    Null _fbId;
//    Null _twitterId;
//    Null _googleId;
//    String _apiToken;
//    String _activeMailHash;
//    Null _deletedAt;
//    Null _rememberToken;
//    String _createdAt;
//    String _updatedAt;
//
//    Data(
//        {int id,
//            String name,
//            Null jobTitle,
//            Null aboutTeacher,
//            String email,
//            String accountType,
//            String gender,
//            Null adminId,
//            Null photo,
//            String countryId,
//            String cityId,
//            String mobile,
//            String accountStatus,
//            Null fbId,
//            Null twitterId,
//            Null googleId,
//            String apiToken,
//            String activeMailHash,
//            Null deletedAt,
//            Null rememberToken,
//            String createdAt,
//            String updatedAt}) {
//        this._id = id;
//        this._name = name;
//        this._jobTitle = jobTitle;
//        this._aboutTeacher = aboutTeacher;
//        this._email = email;
//        this._accountType = accountType;
//        this._gender = gender;
//        this._adminId = adminId;
//        this._photo = photo;
//        this._countryId = countryId;
//        this._cityId = cityId;
//        this._mobile = mobile;
//        this._accountStatus = accountStatus;
//        this._fbId = fbId;
//        this._twitterId = twitterId;
//        this._googleId = googleId;
//        this._apiToken = apiToken;
//        this._activeMailHash = activeMailHash;
//        this._deletedAt = deletedAt;
//        this._rememberToken = rememberToken;
//        this._createdAt = createdAt;
//        this._updatedAt = updatedAt;
//    }
//
//    int get id => _id;
//    set id(int id) => _id = id;
//    String get name => _name;
//    set name(String name) => _name = name;
//    Null get jobTitle => _jobTitle;
//    set jobTitle(Null jobTitle) => _jobTitle = jobTitle;
//    Null get aboutTeacher => _aboutTeacher;
//    set aboutTeacher(Null aboutTeacher) => _aboutTeacher = aboutTeacher;
//    String get email => _email;
//    set email(String email) => _email = email;
//    String get accountType => _accountType;
//    set accountType(String accountType) => _accountType = accountType;
//    String get gender => _gender;
//    set gender(String gender) => _gender = gender;
//    Null get adminId => _adminId;
//    set adminId(Null adminId) => _adminId = adminId;
//    Null get photo => _photo;
//    set photo(Null photo) => _photo = photo;
//    String get countryId => _countryId;
//    set countryId(String countryId) => _countryId = countryId;
//    String get cityId => _cityId;
//    set cityId(String cityId) => _cityId = cityId;
//    String get mobile => _mobile;
//    set mobile(String mobile) => _mobile = mobile;
//    String get accountStatus => _accountStatus;
//    set accountStatus(String accountStatus) => _accountStatus = accountStatus;
//    Null get fbId => _fbId;
//    set fbId(Null fbId) => _fbId = fbId;
//    Null get twitterId => _twitterId;
//    set twitterId(Null twitterId) => _twitterId = twitterId;
//    Null get googleId => _googleId;
//    set googleId(Null googleId) => _googleId = googleId;
//    String get apiToken => _apiToken;
//    set apiToken(String apiToken) => _apiToken = apiToken;
//    String get activeMailHash => _activeMailHash;
//    set activeMailHash(String activeMailHash) => _activeMailHash = activeMailHash;
//    Null get deletedAt => _deletedAt;
//    set deletedAt(Null deletedAt) => _deletedAt = deletedAt;
//    Null get rememberToken => _rememberToken;
//    set rememberToken(Null rememberToken) => _rememberToken = rememberToken;
//    String get createdAt => _createdAt;
//    set createdAt(String createdAt) => _createdAt = createdAt;
//    String get updatedAt => _updatedAt;
//    set updatedAt(String updatedAt) => _updatedAt = updatedAt;
//
//    Data.fromJson(Map<String, dynamic> json) {
//        _id = json['id'];
//        _name = json['name'];
//        _jobTitle = json['job_title'];
//        _aboutTeacher = json['about_teacher'];
//        _email = json['email'];
//        _accountType = json['account_type'];
//        _gender = json['gender'];
//        _adminId = json['admin_id'];
//        _photo = json['photo'];
//        _countryId = json['country_id'];
//        _cityId = json['city_id'];
//        _mobile = json['mobile'];
//        _accountStatus = json['account_status'];
//        _fbId = json['fb_id'];
//        _twitterId = json['twitter_id'];
//        _googleId = json['google_id'];
//        _apiToken = json['api_token'];
//        _activeMailHash = json['active_mail_hash'];
//        _deletedAt = json['deleted_at'];
//        _rememberToken = json['remember_token'];
//        _createdAt = json['created_at'];
//        _updatedAt = json['updated_at'];
//    }
//
//    Map<String, dynamic> toJson() {
//        final Map<String, dynamic> data = new Map<String, dynamic>();
//        data['id'] = this._id;
//        data['name'] = this._name;
//        data['job_title'] = this._jobTitle;
//        data['about_teacher'] = this._aboutTeacher;
//        data['email'] = this._email;
//        data['account_type'] = this._accountType;
//        data['gender'] = this._gender;
//        data['admin_id'] = this._adminId;
//        data['photo'] = this._photo;
//        data['country_id'] = this._countryId;
//        data['city_id'] = this._cityId;
//        data['mobile'] = this._mobile;
//        data['account_status'] = this._accountStatus;
//        data['fb_id'] = this._fbId;
//        data['twitter_id'] = this._twitterId;
//        data['google_id'] = this._googleId;
//        data['api_token'] = this._apiToken;
//        data['active_mail_hash'] = this._activeMailHash;
//        data['deleted_at'] = this._deletedAt;
//        data['remember_token'] = this._rememberToken;
//        data['created_at'] = this._createdAt;
//        data['updated_at'] = this._updatedAt;
//        return data;
//    }
//}
