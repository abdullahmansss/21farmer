import 'package:farmers21/ui/farms/bloc/farms_model.dart';

class FarmModel {
  final int statusCode;
  final FarmBody farm;

  FarmModel(var data)
      : statusCode = data['statusCode'],
        farm = FarmBody(data['body']);
}
