import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_model.freezed.dart';
part 'book_model.g.dart';

@freezed
class BookModel with _$BookModel {
  const factory BookModel(
    final String id,
    final String? etag,
    final Uri? selfLink,
    final BookInfo info,
  ) = _BookModel;

  const BookModel._();
  factory BookModel.fromJson(Map<String, dynamic> json) =>
      _$BookModelFromJson(json);
}

@freezed
class BookInfo with _$BookInfo {
  const factory BookInfo(
    final String title,
    final List<String> authors,
    final String publisher,
    final String? publishedDate,
    final String rawPublishedDate,
    final String description,
    final int pageCount,
    final String printType,
    final List<String> categories,
    final double averageRating,
    final int ratingsCount,
    //final String maturityRating,
    //final String contentVersion,
    final Map<String, Uri> imageLinks,
    final String language,
    final List<IndustryIdentifier> industryIdentifier,
  ) = _BookInfo;
  const BookInfo._();
  factory BookInfo.fromJson(Map<String, dynamic> json) =>
      _$BookInfoFromJson(json);
}

@freezed
class IndustryIdentifier with _$IndustryIdentifier {
  const factory IndustryIdentifier(
    final String type,
    final String identifier,
  ) = _IndustryIdentifier;
  const IndustryIdentifier._();
  factory IndustryIdentifier.fromJson(Map<String, dynamic> json) =>
      _$IndustryIdentifierFromJson(json);
}
