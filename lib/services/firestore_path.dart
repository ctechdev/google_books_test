class FirestorePath {
  static String books(String uid) => 'users/$uid/books';
  static String book(String uid, String bookId) =>
      'users/$uid/books/$bookId';
}