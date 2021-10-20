import 'dart:async';

import 'package:google_books_test/models/book.dart';
import 'package:google_books_test/services/firestore_path.dart';
import 'package:google_books_test/services/firestore_service.dart';

String documentIdFromCurrentDate() => DateTime.now().toIso8601String();

class FirestoreDatabase {
  FirestoreDatabase({required this.uid});
  final String uid;

  final _service = FirestoreService.instance;

  Future<void> setJob(Book book) => _service.setData(
        path: FirestorePath.book(uid, book.id),
        data: book.info.toJson(),
      );

  Future<void> deleteBook(Book book) async {
    
        // delete book
    await _service.deleteData(path: FirestorePath.book(uid, book.id));
  }

  Stream<Book> bookStream({required String bookId}) => _service.documentStream(
        path: FirestorePath.book(uid, bookId),
        builder: (data, documentId) => Book.fromJson(data!),
      );

  Stream<List<Book>> bookLisStream() => _service.collectionStream(
        path: FirestorePath.books(uid),
        builder: (data, documentId) => Book.fromJson(data!),
      );
}
