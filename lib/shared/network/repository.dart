import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:farmers21/models/Reads/reads_model.dart';
import 'package:farmers21/models/devices/devices_model.dart';
import 'package:farmers21/models/farms/farms_model.dart';
import 'package:farmers21/models/fields/fields_model.dart';
import 'package:farmers21/models/login/login_model.dart';
import 'package:farmers21/shared/network/remote/dio_helper.dart';
import 'package:farmers21/shared/server/errors.dart';
import 'package:flutter/foundation.dart';

abstract class Repository
{
  Future<Either<String, LoginModel>> login({
    String url,
    String email,
    String password,
  });

  Future<Either<String, FarmsModel>> getFarms({
    String url,
    String token,
  });

  Future<Either<String, FieldsModel>> getFields({
    String url,
    String token,
    String id,
  });

  Future<Either<String, DevicesModel>> getDevices({
    String url,
    String token,
    String id,
  });

  Future<Either<String, ReadsModel>> getDeviceReads({
    String url,
    String token,
    String id,
  });
}

class RepoImpl extends Repository
{
  final DioHelper dioHelper;

  RepoImpl({this.dioHelper});

  @override
  Future<Either<String, LoginModel>> login({
    String url,
    String email,
    String password,
  }) async {
    return _basicErrorHandling<LoginModel>(
      onSuccess: () async {
        final f = await dioHelper.post(
          url,
          token: null,
          data: {
            'identifier': email,
            'password': password,
          },
        );

        return LoginModel.fromJson(f);
      },
      onServerError: (exception) async {
        final f = exception.error;
        print('error is : $f');

        final msg = _handleErrorMessages(f['message']);

        return msg;
      },
    );
  }

  @override
  Future<Either<String, FarmsModel>> getFarms({
    String url,
    String token,
  }) async {
    return _basicErrorHandling<FarmsModel>(
      onSuccess: () async {
        final f = await dioHelper.get(
          url,
          token: token,
          query: null,
        );

        return FarmsModel.fromJson(f);
      },
      onServerError: (exception) async {
        final f = exception.error;
        print('error is : $f');

        final msg = _handleErrorMessages(f['message']);

        return msg;
      },
    );
  }

  @override
  Future<Either<String, FieldsModel>> getFields({
    String url,
    String token,
    String id,
  }) async {
    return _basicErrorHandling<FieldsModel>(
      onSuccess: () async {
        final f = await dioHelper.get(
          url + id,
          token: token,
          query: null,
        );

        return FieldsModel.fromJson(f);
      },
      onServerError: (exception) async {
        final f = exception.error;
        print('error is : $f');

        final msg = _handleErrorMessages(f['message']);

        return msg;
      },
    );
  }

  @override
  Future<Either<String, DevicesModel>> getDevices({
    String url,
    String token,
    String id,
  }) async {
    return _basicErrorHandling<DevicesModel>(
      onSuccess: () async {
        final f = await dioHelper.get(
          url + id,
          token: token,
          query: null,
        );

        return DevicesModel.fromJson(f);
      },
      onServerError: (exception) async {
        final f = exception.error;
        print('error is : $f');

        final msg = _handleErrorMessages(f['message']);

        return msg;
      },
    );
  }

  @override
  Future<Either<String, ReadsModel>> getDeviceReads({
    String url,
    String token,
    String id,
  }) async {
    return _basicErrorHandling<ReadsModel>(
      onSuccess: () async {
        final f = await dioHelper.get(
          url + id,
          token: token,
          query: null,
        );

        return ReadsModel.fromJson(f);
      },
      onServerError: (exception) async {
        final f = exception.error;
        print('error is : $f');

        final msg = _handleErrorMessages(f['message']);

        return msg;
      },
    );
  }
}

extension on Repository
{
  String _handleErrorMessages(final dynamic f)
  {
    String msg = '';
    if (f is String)
    {
      msg = f;
    } else if (f is Map)
    {
      for (dynamic l in f.values)
      {
        if (l is List)
        {
          for (final s in l)
          {
            msg += '$s\n';
          }
        }
      }
      if (msg.contains('\n')) {
        msg = msg.substring(0, msg.lastIndexOf('\n'));
      }
      if (msg.isEmpty) {
        msg = 'Server Error';
      }
    } else {
      msg = 'Server Error';
    }
    return msg;
  }

  Future<Either<String, T>> _basicErrorHandling<T>({
    @required Future<T> onSuccess(),
    Future<String> onServerError(ServerException exception),
    Future<String> onCacheError(CacheException exception),
    Future<String> onOtherError(Exception exception),
  }) async {
    try {
      final f = await onSuccess();
      return Right(f);
    } on ServerException catch (e) {
      if (onServerError != null) {
        final f = await onServerError(e);
        return Left(f);
      }
      return Left('Server Error');
    } on CacheException catch (e) {
      if (onCacheError != null) {
        final f = await onCacheError(e);
        return Left(f);
      }
      return Left('Cache Error');
    } catch (e) {
      if (onOtherError != null) {
        final f = await onOtherError(e);
        return Left(f);
      }
      return Left(e.toString());
    }
  }
}
