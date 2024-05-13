import 'package:data/network/http_params.dart';
import 'package:dio/dio.dart';

enum Method { get, put, patch, post, delete }
abstract class DioClient{
  DioClient({required HttpParams httpParams})
      : _dio = Dio(
          BaseOptions(
            baseUrl: httpParams.baseURL,
            connectTimeout: Duration(milliseconds: httpParams.connectionTimeout),
            receiveTimeout: Duration(milliseconds: httpParams.receiveTimeout),
            responseType: ResponseType.json,
            contentType: "application/json",
            headers: {'Accept': 'application/json'},
            followRedirects: false
          ),
        );

  late final Dio _dio;

  Future<Response<dynamic>> call(
      {required String path,
      required Method type,
      Map<String, dynamic>? queryParameters,
      dynamic data}) async {
        return switch (type) {
          Method.get => await _dio.get(path, queryParameters: queryParameters),
          Method.put => await _dio.put(path, queryParameters: queryParameters, data: data),
          Method.patch =>
            await _dio.patch(path, queryParameters: queryParameters, data: data),
          Method.post =>
            await _dio.post(path, queryParameters: queryParameters, data: data),
          Method.delete =>
            await _dio.delete(path, queryParameters: queryParameters, data: data)
        };
    }
}
