import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'exceptions.dart';

//const String storageBaseUrl = "http://api.21farmer.com/";
const String baseUrl = "http://api.21farmer.com/";

class APIHelper {
  Future<dynamic> get(String url, Map<String, String> headers) async {
//    print('Api Get, url $url');
    var responseJson;
    try {
      final response = await http.get(baseUrl + url, headers: headers);
      responseJson = _returnResponse(response);
    } on SocketException {
//      print('No net');
      throw FetchDataException('No Internet connection');
    }
    //print('api get recieved!');
    return responseJson;
  }

  Future<dynamic> post(String url, dynamic body, dynamic headers) async {
    //print('Api Post, url $url');
    var responseJson;
    try {
      final response = await http.post(baseUrl + url, body: jsonEncode(body), headers: headers);
      responseJson = _returnResponse(response);
    } on SocketException {
      //print('No net');
      throw FetchDataException('No Internet connection');
    }
    //print('api post.');
    return responseJson;
  }

  Future<dynamic> put(String url, dynamic body, dynamic headers) async {
    //print('Api Put, url $url');
    var responseJson;
    try {
      final response = await http.put(baseUrl + url, body: jsonEncode(body), headers: headers);
      responseJson = _returnResponse(response);
    } on SocketException {
      //print('No net');
      throw FetchDataException('No Internet connection');
    }
    //print('api put.');
    //print(responseJson.toString());
    return responseJson;
  }

  Future<dynamic> delete(String url, Map<String, String> headers) async {
    //print('Api delete, url $url');
    var apiResponse;
    try {
      final response = await http.delete(baseUrl + url, headers: headers);
      apiResponse = _returnResponse(response);
    } on SocketException {
      //print('No net');
      throw FetchDataException('No Internet connection');
    }
    //print('api delete.');
    return apiResponse;
  }
}

dynamic _returnResponse(http.Response response) {
  switch (response.statusCode) {
    case 200:
      print(200);
      var responseJson = json.decode(response.body.toString());
      return responseJson;
    case 201:
      print(201);
      var responseJson = json.decode(response.body.toString());
      return responseJson;
    case 400:
      print(400);
      throw BadRequestException(json.decode(response.body.toString())['message']);
    case 401:
      print(401);
      break;
    case 403:
      print(403);
      throw UnauthorisedException(response.body.toString());
    case 404:
      print(404);
      throw UnauthorisedException(response.body.toString());
    case 500:
      print(500);
      break;
    default:
      print('def');
      throw FetchDataException('Error occured while Communication with Server with StatusCode : ${response.statusCode}');
  }
}
