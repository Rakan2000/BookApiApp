import 'package:book_app_api/models/user.dart';
import 'package:book_app_api/services/client.dart';
import 'package:dio/dio.dart';

class AuthServcies {
  Future signup({required User user}) async {
    try {
      final Response response = await ApiClient.dio.post("/signup");
      response.data['data'];
      
    } catch (e) {
      throw e.toString();
    }
  }

  Future signin({required User user}) async {
Response response = await ApiClient.dio.post("/signin");

  }
  // final String serverUrl = "https://coded-books-api-crud.eapi.joincoded.com/books";
  // final Dio _dio = Dio();
}
