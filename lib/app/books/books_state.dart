import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_books_test/models/book_model.dart';

part 'books_state.freezed.dart';

extension BooksGetters on BooksState {
  bool get isLoading => this is _BooksStateLoading;
}

@freezed
class BooksState with _$BooksState {
  ///Initial
  const factory BooksState.initial() = _BooksStateInitial;

  ///Loading
  const factory BooksState.loading() = _BooksStateLoading;

  ///Data
  const factory BooksState.data({required List<BookModel> books}) =
      _BooksStateData;

  ///Error
  const factory BooksState.error([String? error]) = _BooksStateError;
}
