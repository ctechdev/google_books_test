import 'package:google_books_test/app/books/books_repository.dart';
import 'package:google_books_test/app/books/books_state.dart';
import 'package:google_books_test/app/books/books_state_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

///Dependency Injection

//* Logic / StateNotifier
final booksNotifierProvider = StateNotifierProvider<BooksNotifier, BooksState>(
  (ref) => BooksNotifier(
    booksRepository: ref.watch(_booksRepositoryProvider),
  ),
);

//* Repository
final _booksRepositoryProvider = Provider<IBooksRepository>(
  (ref) => BooksRepository(),
);