import 'package:dio/dio.dart';
import 'dart:async';

import 'package:farmers21/shared/server/errors.dart';

const BASE_URL = 'https://api.21farmer.com/';

abstract class DioHelper
{
  Future<dynamic> post(String url, {dynamic data, String token});

  Future<dynamic> get(String url, {dynamic query, String token});
}

class DioImpl extends DioHelper
{
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: BASE_URL,
      receiveDataWhenStatusError: true,
    ),
  );

  @override
  Future post(String url, {dynamic data, String token}) async
  {
    dio.options.headers =
    {
      if(token != null)
        'Authorization':'Bearer $token'
    };

    return await _request(
          () async => await dio.post(url, data: data),
    );
  }

  @override
  Future get(String url, {dynamic query, String token}) async
  {
    dio.options.headers =
    {
      if(token != null)
        'Authorization':'Bearer $token'
    };

    return await _request(
          () async => await dio.get(url, queryParameters: query),
    );
  }
}

extension on DioHelper {
  Future _request(Future<Response> request()) async {
    try {
      final r = await request.call();
      return r.data;
    } on DioError catch (e) {
      throw ServerException(e.response.data);
    } catch (e) {
      throw Exception();
    }
  }
}