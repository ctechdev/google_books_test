import 'dart:convert';
import 'package:google_books_test/models/book.dart';
import 'package:http/http.dart' as http;

abstract class IBooksRepository {
  Future<List<Book>> getGoogleBooks(String keyword);
}

class BooksRepository implements IBooksRepository {
  @override
  Future<List<Book>> getGoogleBooks(String query) async {
    int maxResults = 40;
    assert(query.isNotEmpty);

    // assert(startIndex <= maxResults);

    var q =
        'https://www.googleapis.com/books/v1/volumes?q=${query.trim().replaceAll(' ', '+')}&maxResults=$maxResults';

    final result = await http.get(Uri.parse(q));

    if (result.statusCode == 200) {
      final books = <Book>[];
      final list = (jsonDecode(result.body))['items'] as List<dynamic>?;
      if (list == null) return [];
      for (var e in list) {
        books.add(Book.fromJson(e));
      }

      return books;
    } else {
      throw (result.body);
    }
  }
}
