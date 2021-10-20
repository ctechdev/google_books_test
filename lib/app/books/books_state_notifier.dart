import 'package:google_books_test/app/books/books_repository.dart';
import 'package:google_books_test/app/books/books_state.dart';
import 'package:state_notifier/state_notifier.dart';

class BooksNotifier extends StateNotifier<BooksState> {
  BooksNotifier({
    required IBooksRepository booksRepository,
  })  : _booksRepository = booksRepository,
        super(const BooksState.initial());

  final IBooksRepository _booksRepository;

  Future<void> getBooks(String keyword) async {
    state = const BooksState.loading();

    try {
      final books = await _booksRepository.getGoogleBooks(keyword);

      state = BooksState.data(books: books);
    } catch (e) {
      state = const BooksState.error('Error!');
    }
  }
}
