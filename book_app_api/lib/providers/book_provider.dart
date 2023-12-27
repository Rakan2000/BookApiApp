import 'package:book_app_api/models/book_model.dart';
import 'package:book_app_api/services/book_services.dart';
import 'package:flutter/material.dart';


class BookProvider extends ChangeNotifier {
  List<Books> bookList = [];
  final _bookService = BookService();

  Future<void> getTodos() async {
    bookList = (await _bookService.getBookList())!;
    notifyListeners();
  }

  updateBook(String id, bool? value) async {
    await _bookService.updateBookName(id, value);
    await getTodos();
  }

  addNewBook(String title, bool? isComplete) async {
    await _bookService.addBook(title, isComplete);
    await getTodos();
  }
}