import 'package:farmers21/ui/farms/bloc/farms_model.dart';

class FieldModel {
  final int statusCode;
  final FieldBody field;

  FieldModel(var data)
      : statusCode = data['statusCode'],
        field = FieldBody(data['body']);
}
