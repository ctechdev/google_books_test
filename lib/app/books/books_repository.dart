import 'dart:convert';
import 'package:google_books_test/models/book_model.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

abstract class IBooksRepository {
  Future<List<BookModel>> getGoogleBooks(String keyword);
}

class BooksRepository implements IBooksRepository {
  @override
  Future<List<BookModel>> getGoogleBooks(String query) async {
    const int maxResults = 40;
    assert(query.isNotEmpty);
    final Logger logger = Logger(printer: PrettyPrinter(printEmojis: false));

    // assert(startIndex <= maxResults);

    final q =
        'https://www.googleapis.com/books/v1/volumes?q=${query.trim().replaceAll(' ', '+')}&maxResults=$maxResults';

    final result = await http.get(Uri.parse(q));
    print(result.statusCode);
    if (result.statusCode == 200) {
      final books = <BookModel>[];
      final list = (jsonDecode(result.body))['items'] as List<dynamic>?;
      logger.i(list!.first);
      if (list == null) return [];
      for (final e in list) {
        books.add(BookModel.fromJson(e as Map<String, dynamic>));
      }

      return books;
    } else {
      throw result.body;
    }
  }
}
