//class CountriesModel {
//    bool _status;
//    List<Data> _data;
//
//    CountriesModel({bool status, List<Data> data}) {
//        this._status = status;
//        this._data = data;
//    }
//
//    bool get status => _status;
//    set status(bool status) => _status = status;
//    List<Data> get data => _data;
//    set data(List<Data> data) => _data = data;
//
//    CountriesModel.fromJson(Map<String, dynamic> json) {
//        _status = json['status'];
//        if (json['data'] != null) {
//            _data = new List<Data>();
//            json['data'].forEach((v) {
//                _data.add(new Data.fromJson(v));
//            });
//        }
//    }
//
//    Map<String, dynamic> toJson() {
//        final Map<String, dynamic> data = new Map<String, dynamic>();
//        data['status'] = this._status;
//        if (this._data != null) {
//            data['data'] = this._data.map((v) => v.toJson()).toList();
//        }
//        return data;
//    }
//}
//
//class Data {
//    String _countryName;
//    int _id;
//
//    Data({String countryName, int id}) {
//        this._countryName = countryName;
//        this._id = id;
//    }
//
//    String get countryName => _countryName;
//    set countryName(String countryName) => _countryName = countryName;
//    int get id => _id;
//    set id(int id) => _id = id;
//
//    Data.fromJson(Map<String, dynamic> json) {
//        _countryName = json['country_name'];
//        _id = json['id'];
//    }
//
//    Map<String, dynamic> toJson() {
//        final Map<String, dynamic> data = new Map<String, dynamic>();
//        data['country_name'] = this._countryName;
//        data['id'] = this._id;
//        return data;
//    }
//}
