//class CitiesModel {
//    bool _status;
//    List<Data> _data;
//
//    CitiesModel({bool status, List<Data> data}) {
//        this._status = status;
//        this._data = data;
//    }
//
//    bool get status => _status;
//    set status(bool status) => _status = status;
//    List<Data> get data => _data;
//    set data(List<Data> data) => _data = data;
//
//    CitiesModel.fromJson(Map<String, dynamic> json) {
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
//    String _cityName;
//    int _id;
//
//    Data({String cityName, int id}) {
//        this._cityName = cityName;
//        this._id = id;
//    }
//
//    String get cityName => _cityName;
//    set cityName(String cityName) => _cityName = cityName;
//    int get id => _id;
//    set id(int id) => _id = id;
//
//    Data.fromJson(Map<String, dynamic> json) {
//        _cityName = json['city_name'];
//        _id = json['id'];
//    }
//
//    Map<String, dynamic> toJson() {
//        final Map<String, dynamic> data = new Map<String, dynamic>();
//        data['city_name'] = this._cityName;
//        data['id'] = this._id;
//        return data;
//    }
//}
