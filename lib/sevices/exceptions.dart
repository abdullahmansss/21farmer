class MyException implements Exception {
  final _message;
  final _prefix;

  MyException([this._message, this._prefix]);

  String toString() {
    return "$_prefix$_message";
  }
}

class FetchDataException extends MyException {
  FetchDataException([String message])
      : super(message, "Error During Communication: ");
}

class BadRequestException extends MyException {
  BadRequestException([message]) : super(message, "Invalid Request: ");
}

class UnauthorisedException extends MyException {
  UnauthorisedException([message]) : super(message, "Unauthorised: ");
}

class InvalidInputException extends MyException {
  InvalidInputException([String message]) : super(message, "Invalid Input: ");
}
