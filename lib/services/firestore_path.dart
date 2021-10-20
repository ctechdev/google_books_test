class FirestorePath {
  static String book(String uid, String bookId) => 'users/$uid/books/$bookId';
  static String books(String uid) => 'users/$uid/books';
}
