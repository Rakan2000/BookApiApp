import 'package:dio/dio.dart';

class ApiClient {
  static final Dio dio = Dio(BaseOptions(
      baseUrl: "https://coded-books-api-crud.eapi.joincoded.com/books"));
}
