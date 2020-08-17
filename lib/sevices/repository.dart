import 'dart:convert';

import 'package:farmers21/ui/farms/bloc/farms_model.dart';
import 'package:flutter/cupertino.dart';

import 'network.dart';

class Repository {
  APIHelper _helper = APIHelper();

  Future<dynamic> login({
    @required String email,
    @required String password,
  }) async {
    final response = await _helper.post(
      "auth/login",
      {
        "identifier": email,
        "password": password,
      },
      {
        'Content-Type': 'application/json',
      },
    );
    return response;
  }

  Future<dynamic> register({
    @required String name,
    @required String email,
//    @required String country_code,
    @required String password,
    @required String confirm_password,
    @required String mobile,
  }) async {
    final response = await _helper.post(
      "auth/register",
      jsonEncode({
        "email": email,
        "country_code": "+20",
        "mobile": mobile,
        "name": name,
        "password": password,
        "confirm_password": confirm_password
      }),
      {
        'Content-Type': 'application/json',
      },
    );
    return response;
  }

  Future<dynamic> updateUserData({
    @required String api_token,
    @required String name,
    @required String email,
    @required String mobile,
  }) async {
    final response = await _helper.put(
      "user/update",
      {
        "email": email,
        "mobile": mobile,
        "name": name,
      },
      {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $api_token',
      },
    );
    return response;
  }

  Future<dynamic> updatePassword({
    @required String old_password,
    @required String password,
    @required String confirm_password,
    @required String api_token,
  }) async {
    final response = await _helper.post(
      "user/changePassword",
      {
        "old_password": old_password,
        "password": password,
        "confirm_password": confirm_password,
      },
      {
        'Content-Type': 'application/json',
        "Authorization": 'Bearer $api_token',
      },
    );
    return response;
  }

  Future getUserData({
    @required String token,
  }) async {
    final response = await _helper.get("user", {
      'Content-Type': 'application/json',
      "Authorization": 'Bearer $token',
    });
    return response;
  }

  Future getFarms({
    @required String api_token,
  }) async {
    print('my token is $api_token');
    final response = await _helper.get("farm", {
      'Authorization': 'Bearer $api_token',
      'Content-Type': 'application/json',
    });
    return response;
  }

  Future getFarm({
    @required String api_token,
    @required String farm_id,
  }) async {
    final response = await _helper.get("farm/$farm_id", {
      'Authorization': 'Bearer $api_token',
      'Content-Type': 'application/json',
    });
    return response;
  }

  Future deleteFarm({
    @required String api_token,
    @required String farm_id,
  }) async {
    final response = await _helper.delete("farm/delete/$farm_id", {
      'Authorization': 'Bearer $api_token',
      'Content-Type': 'application/json',
    });
    return response;
  }

  Future createFarm({
    @required String api_token,
    @required String farm_name,
    @required List<Coordinate> coordinates,
  }) async {
    Map<String, dynamic> map = {
      "name": farm_name,
      "coordinate_points": List.generate(
          coordinates.length,
          (index) => {
                "lon": coordinates[index].lon,
                "lat": coordinates[index].lat,
              }),
    };
    final response = await _helper.post(
      "farm",
      map,
      {
        'Authorization': 'Bearer $api_token',
        'Content-Type': 'application/json',
      },
    );
    return response;
  }

  Future updateFarm({
    @required String api_token,
    @required String farm_id,
    @required String farm_name,
    @required String farm_status,
    @required List<Coordinate> coordinates,
  }) async {
    Map<String, dynamic> map = {
      "name": farm_name,
      "status": farm_status,
      "coordinate_points": List.generate(
          coordinates.length,
          (index) => {
                "lon": coordinates[index].lon,
                "lat": coordinates[index].lat,
              }),
    };
    final response = await _helper.put(
      "farm/$farm_id",
      map,
      {
        'Authorization': 'Bearer $api_token',
        'Content-Type': 'application/json',
      },
    );
    return response;
  }

  Future getField({
    @required String api_token,
    @required String field_id,
  }) async {
    final response = await _helper.get("field/single/$field_id", {
      'Authorization': 'Bearer $api_token',
      'Content-Type': 'application/json',
    });
    return response;
  }

  Future deleteField({
    @required String api_token,
    @required String field_id,
  }) async {
    final response = await _helper.delete("field/delete/$field_id", {
      'Authorization': 'Bearer $api_token',
      'Content-Type': 'application/json',
    });
    return response;
  }

  Future getDevices({
    @required String api_token,
    @required String field_id,
  }) async {
    final response = await _helper.get(
      "iot-device/field/$field_id",
      {
        'Authorization': 'Bearer $api_token',
        'Content-Type': 'application/json',
      },
    );
    return response;
  }

  Future getDevice({
    @required String api_token,
    @required String device_id,
  }) async {
    final response = await _helper.get("iot-device/device/$device_id", {
      'Authorization': 'Bearer $api_token',
      'Content-Type': 'application/json',
    });
    return response;
  }

  Future getCropsList({
    @required String api_token,
  }) async {
    final response = await _helper.get(
      "field/crops",
      {
        'Authorization': 'Bearer $api_token',
        'Content-Type': 'application/json',
      },
    );
    return response;
  }

  Future createField({
    @required String api_token,
    @required String farm_id,
    @required String field_name,
    @required String crop,
    @required List<Coordinate> coordinates,
  }) async {
    Map<String, dynamic> map = {
      "field_name": field_name,
      "crop": crop,
      "coordinate_points": List.generate(
          coordinates.length,
          (index) => {
                "lon": coordinates[index].lon,
                "lat": coordinates[index].lat,
              }),
    };
    final response = await _helper.post(
      "field/create/$farm_id",
      map,
      {
        'Authorization': 'Bearer $api_token',
        'Content-Type': 'application/json',
      },
    );
    return response;
  }

  Future updateField({
    @required String api_token,
    @required String field_id,
    @required String field_name,
    @required String field_status,
    @required String crop,
    @required List<Coordinate> coordinates,
  }) async {
    Map<String, dynamic> map = {
      "field_name": field_name,
      "crop": crop,
      "status": field_status,
      "coordinate_points": List.generate(
          coordinates.length,
          (index) => {
                "lon": coordinates[index].lon,
                "lat": coordinates[index].lat,
              }),
    };
    final response = await _helper.put(
      "field/$field_id",
      map,
      {
        'Authorization': 'Bearer $api_token',
        'Content-Type': 'application/json',
      },
    );
    return response;
  }
}
