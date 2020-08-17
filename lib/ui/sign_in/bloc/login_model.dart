class LoginModel {
  final int statusCode;
  final LoginBody body;

  LoginModel(var data)
      : statusCode = data['statusCode'],
        body = LoginBody(data['body']);
}

class LoginBody {
  final String message;
  final String token;
  final UserBody user;

  LoginBody(var data)
      : message = data['message'],
        token = data['token'],
        user = UserBody(data['user']);
}

class UserBody {
  final String mobile;
  final String email;
  final String name;

  UserBody(var data)
      : mobile = data['mobile'],
        email = data['email'],
        name = data['name'];
}
