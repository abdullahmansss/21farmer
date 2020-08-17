class MessageResponseModel {
bool _status;
String _message;

MessageResponseModel({bool status, String message}) {
this._status = status;
this._message = message;
}

bool get status => _status;
set status(bool status) => _status = status;
String get message => _message;
set message(String message) => _message = message;

MessageResponseModel.fromJson(Map<String, dynamic> json) {
_status = json['status'];
_message = json['message'];
}

Map<String, dynamic> toJson() {
final Map<String, dynamic> data = new Map<String, dynamic>();
data['status'] = this._status;
data['message'] = this._message;
return data;
}
}