import 'package:dio/dio.dart';

class DioHelper {
  late final Dio _dio;

  DioHelper() {
    _dio = Dio(
      BaseOptions(
        baseUrl: 'http://192.168.1.3:8000/api/v1/',
      ),
    );
  }

  Future<Map<String, dynamic>> postRequest({
    required Map<String, dynamic> body,
    required String endPoint,
    String? token,
  }) async {
    Map<String, dynamic> headers = {
      'Content-Type': 'application/json',
    };

    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }

    Response response = await _dio.post(
      endPoint,
      data: body,
      options: Options(
        headers: headers,
      ),
    );

    return response.data;
  }
}
