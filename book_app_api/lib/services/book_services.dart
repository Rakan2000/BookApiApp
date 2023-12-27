import 'package:book_app_api/models/book_model.dart';
import 'package:dio/dio.dart';

class BookService {
  final String serverUrl = "https://coded-books-api-crud.eapi.joincoded.com/books";
  final Dio _dio = Dio();

  Future<List<Books>?> getBookList() async {
    try {
      final response = await _dio.get(serverUrl);
      BookModel bookModel = BookModel.fromJson(response.data);
      return bookModel.data;
    } catch (e) {
      throw e.toString();
    }
  }

  addBook(String title, bool? value) async {
    try {
      final response = await _dio.post(serverUrl, data: {
        "todoName": title,
        "isComplete": value,
      });
      return response.data;
    } catch (e) {
      throw e.toString();
    }
  }

  updateBookName(String id, bool? value) async {
    try {
      final response =
          await _dio.put("$serverUrl/$id", data: {"isComplete": value});
      return response.data;
    } catch (e) {
      throw e.toString();
    }
  }

  
}