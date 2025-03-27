import 'dart:developer';

import 'package:dartz/dartz.dart'; 
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'api.dart';
import 'failure/main_failure.dart';

@lazySingleton
class DioClient {
  DioClient()
      : _dio = Dio(
          BaseOptions(
            baseUrl: Api.baseUrl,
            connectTimeout: const Duration(seconds: 10),
            receiveTimeout: const Duration(seconds: 10),
            headers: <String, dynamic>{
              'Content-Type': 'application/json',
              'Accept': 'application/json',
            },
          ),
        ) {
    _dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
    ));
  }

  final Dio _dio;

  // Handles Dio-specific errors and maps them to MainFailure
  MainFailure _handleDioError(DioError error) {
    log('Dio Error: ${error.message}');
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioErrorType.receiveTimeout:
      case DioErrorType.sendTimeout:
      case DioErrorType.connectionError:
        return const MainFailure.clientFailure();

      case DioErrorType.badResponse:
        return const MainFailure.serverrFailure();

      case DioErrorType.cancel:
      case DioErrorType.badCertificate:
      case DioErrorType.unknown:
      return const MainFailure.clientFailure();
    }
  }


bool dataStatusSuccess(Response<dynamic> response) {
  switch (response.statusCode ?? 0) {
    case 200:
    case 201:
      return true;
    default:
      return false;
  }
}


  // GET Method with Either (Success or Failure)
  Future<Either<MainFailure, Response<dynamic>>> get(String endpoint,
      {Map<String, dynamic>? queryParameters}) async {
    try {
      final Response<dynamic> response =
          await _dio.get(endpoint, queryParameters: queryParameters);
      return Right<MainFailure, Response<dynamic>>(response);
    } on DioError catch (e) {
      return Left<MainFailure, Response<dynamic>>(_handleDioError(e));
    } catch (e) {
      log('Unexpected Error: $e');
      return const Left<MainFailure, Response<dynamic>>(MainFailure.clientFailure());
    }
  }

  // POST Method with Either (Success or Failure)
  Future<Either<MainFailure, Response<dynamic>>> post(String endpoint,
      {Map<String, dynamic>? body}) async {
    try {
      final Response<dynamic> response = await _dio.post(endpoint, data: body);
      return Right<MainFailure, Response<dynamic>>(response);
    } on DioError catch (e) {
      return Left<MainFailure, Response<dynamic>>(_handleDioError(e));
    } catch (e) {
      log('Unexpected Error: $e');
      return const Left<MainFailure, Response<dynamic>>(MainFailure.clientFailure());
    }
  }
}
