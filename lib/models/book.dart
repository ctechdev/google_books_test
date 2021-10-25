import 'package:google_books_test/models/extensions.dart';

class Book {
  const Book({
    required this.id,
    this.etag,
    required this.info,
    this.selfLink,
  });

  final String id;
  final String? etag;
  final Uri? selfLink;
  final BookInfo info;

  @override
  String toString() => '$id:${info.title}';

  factory Book.fromJson(
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
      selfLink: Uri.parse(json['selfLink'] as String),
    );
  }
}

class IndustryIdentifier {
  const IndustryIdentifier({
    required this.type,
    required this.identifier,
  });

  factory IndustryIdentifier.fromJson(Map<String, dynamic> json) {
    return IndustryIdentifier(
      type: json['type'] as String,
      identifier: json['identifier'] as String,
    );
  }

  final String type;
  final String identifier;

  @override
  String toString() => '$type:$identifier';
}

class BookInfo {
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

  factory BookInfo.fromJson(
    Map<String, dynamic> json, {
    bool reschemeImageLinks = false,
  }) {
    final String publishedDate = (json['publishedDate']).toString();

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

  final String title;
  final List<String> authors;
  final String publisher;
  final String? publishedDate;
  final String rawPublishedDate;
  final String description;
  final int pageCount;
  final String printType;
  final List<String> categories;
  final double averageRating;
  final int ratingsCount;
  final String maturityRating;
  final String contentVersion;
  final Map<String, Uri> imageLinks;
  final String language;
  final List<IndustryIdentifier> industryIdentifier;

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
