import 'package:google_books_test/models/extensions.dart';

class Book {
  /// The id of the book
  final String id;
  final String? etag;

  /// A self link containing more especific information
  final Uri? selfLink;

  /// The informations about the book
  final BookInfo info;

  const Book({
    required this.id,
    this.etag,
    required this.info,
    this.selfLink,
  });

  @override
  String toString() => '$id:${info.title}';

  static Book fromJson(
    Map<String, dynamic> json, {
    bool reschemeImageLinks = false,
  }) {
    return Book(
      id: json['id'] as String,
      etag: json['etag'] as String,
      info: BookInfo.fromJson(
        json['volumeInfo'] as Map<String, dynamic>,
        reschemeImageLinks: reschemeImageLinks,
      ),
      selfLink: Uri.parse(json['selfLink'] as String) ,
    );
  }
}

class IndustryIdentifier {
  final String type;
  final String identifier;

  const IndustryIdentifier({
    required this.type,
    required this.identifier,
  });

  @override
  String toString() => '$type:$identifier';

  static IndustryIdentifier fromJson(Map<String, dynamic> json) {
    return IndustryIdentifier(
      type: json['type'] as String,
      identifier: json['identifier'] as String,
    );
  }
}

class BookInfo {
  /// The book title
  final String title;

  /// A list with the name of all the authors of the book
  final List<String> authors;

  /// The publisher name
  final String publisher;

  /// The date the book was published
  final String? publishedDate;

  /// The date the book was published in raw string format
  final String rawPublishedDate;

  /// The description of the book
  final String description;

  /// The amount of pages the book has
  final int pageCount;

  final String printType;

  /// The categories the book is in
  final List<String> categories;

  /// The average rating
  final double averageRating;

  /// How many people rated the book
  final int ratingsCount;

  /// Wether the book is mature or not
  final String maturityRating;

  /// The content version
  final String contentVersion;

  /// Some image links
  final Map<String, Uri> imageLinks;

  /// The original language of the book
  final String language;

  /// The industryIdentifiers of the book (ISBN)
  final List<IndustryIdentifier> industryIdentifier;

  const BookInfo({
    required this.title,
    required this.authors,
    required this.publisher,
    required this.averageRating,
    required this.categories,
    required this.contentVersion,
    required this.description,
    required this.imageLinks,
    required this.language,
    required this.maturityRating,
    required this.pageCount,
    required this.printType,
    required this.publishedDate,
    required this.rawPublishedDate,
    required this.ratingsCount,
    required this.industryIdentifier,
  });

  static BookInfo fromJson(
    Map<String, dynamic> json, {
    bool reschemeImageLinks = false,
  }) {

    String publishedDate = ((json['publishedDate']).toString());

    final imageLinks = <String, Uri>{};
    (json['imageLinks'] as Map<String, dynamic>?)?.forEach((key, value) {
      Uri uri = Uri.parse(value.toString());
      if (reschemeImageLinks) {
        if (uri.isScheme('HTTP')) {
          uri = Uri.parse(value.toString().replaceAll('http://', 'https://'));
        }
      }
      imageLinks.addAll({key: uri});
    });

    return BookInfo(
      title: json['title'] as String? ?? '',
      authors: ((json['authors'] as List<dynamic>?) ?? []).toStringList(),
      publisher: json['publisher'] as String? ?? '',
      averageRating: ((json['averageRating'] ?? 0) as num).toDouble(),
      categories: ((json['categories'] as List<dynamic>?) ?? []).toStringList(),
      contentVersion: json['contentVersion'] as String? ?? '',
      description: json['description'] as String? ?? '',
      language: json['language'] as String? ?? '',
      maturityRating: json['maturityRating'] as String? ?? '',
      pageCount: json['pageCount'] as int? ?? 0,
      printType: json['printType'] as String? ?? '',
      ratingsCount: json['ratingsCount'] as int? ?? 0,
      publishedDate: publishedDate,
      rawPublishedDate: (json['publishedDate'] as String?) ?? '',
      imageLinks: imageLinks,
      industryIdentifier: ((json['industryIdentifiers'] ?? []) as List)
          .map((i) => IndustryIdentifier.fromJson(i as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'title': title,
        'authors': authors,
        'publisher': publisher,
        'publishedDate': publishedDate,
        'rawPublishedDate': rawPublishedDate,
        'averageRating': averageRating,
        'categories': categories,
        'contentVersion': contentVersion,
        'description': description,
        'language': language,
        'maturityRating': maturityRating,
        'pageCount': pageCount,
        'printType': printType,
        'ratingsCount': ratingsCount,
        'imageLinks': imageLinks,
        'industryIdentifiers': industryIdentifier,
      };

  Map<String, dynamic> toMap() {
    return {
       'title': title,
        'authors': authors,
        'averageRating': averageRating,
        'categories': categories,
    };
  }

  @override
  String toString() {
    return '''
    title: $title
    authors: $authors
    publisher: $publisher
    publishedDate: $publishedDate
    rawPublishedDate: $rawPublishedDate
    averageRating: $averageRating
    categories: $categories
    contentVersion $contentVersion
    description: $description
    language: $language
    maturityRating: $maturityRating
    pageCount: $pageCount
    printType: $printType
    ratingsCount: $ratingsCount
    imageLinks: $imageLinks
    industryIdentifiers: $industryIdentifier
    ''';
  }
}
