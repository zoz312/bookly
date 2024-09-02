import 'package:dio/dio.dart';

class Apisevice {
  final String baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio dio;

  Apisevice(this.dio);

  Future<Map<String, dynamic>> get({required String urlPath}) async {
    Response response = await dio.get('$baseUrl$urlPath');
    Map<String, dynamic> data = response.data;

    return data;
  }
}
