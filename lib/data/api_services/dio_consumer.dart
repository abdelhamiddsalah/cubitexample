// ignore_for_file: avoid_print

import 'package:cubitexample/data/api_services/api_consumer.dart';
import 'package:cubitexample/data/api_services/endpoints.dart';
import 'package:dio/dio.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;

  DioConsumer({required this.dio}) {
    dio.options.baseUrl = Endpoints.baseUrl;
    dio.options.connectTimeout = Duration(seconds: 20); // Timeout in milliseconds (6 seconds)
    dio.options.receiveTimeout = Duration(seconds: 20); // Timeout in milliseconds (6 seconds)

    dio.interceptors.add(LogInterceptor(
      request: true,
      requestBody: true,
      requestHeader: true,
      responseBody: true,
      responseHeader: true,
      error: true,
    ));
  }

  @override
  Future delete(String path,
      {Object? data, Map<String, dynamic>? queryparameters}) async {
    try {
      final response =
          await dio.delete(path, queryParameters: queryparameters, data: data);
      return response.data;
    } on Exception catch (e) {
      print(e.toString());
    }
  }

  @override
  Future get(String path,
      {Object? data, Map<String, dynamic>? queryparameters}) async {
    try {
      final response =
          await dio.get(path, queryParameters: queryparameters, data: data);
      return response.data;
    } on Exception catch (e) {
      print(e.toString());
    }
  }

  @override
  Future patch(String path,
      {Object? data, Map<String, dynamic>? queryparameters}) async {
    try {
      final response =
          await dio.patch(path, queryParameters: queryparameters, data: data);
      return response.data;
    } on Exception catch (e) {
      print(e.toString());
    }
  }

  @override
  Future post(String path,
      {Object? data, Map<String, dynamic>? queryparameters}) async {
    try {
      final response =
          await dio.post(path, queryParameters: queryparameters, data: data);
      return response.data;
    } on Exception catch (e) {
      print(e.toString());
    }
  }
}
