import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_model.freezed.dart';
part 'book_model.g.dart';

@freezed
class BookModel with _$BookModel {
  const factory BookModel({
    required String id,
    required String etag,
    required Uri selfLink,
    required VolumeInfo volumeInfo,
  }) = _BookModel;

  const BookModel._();
  factory BookModel.fromJson(Map<String, dynamic> json) =>
      _$BookModelFromJson(json);
}

@freezed
class VolumeInfo with _$VolumeInfo {
  const factory VolumeInfo({
    required String title,
    //String? subtitle,
    List<String>? authors,
    @Default('') String? publisher,
    // final String? publishedDate,
    // final String rawPublishedDate,
    String? description,
    int? pageCount,
    String? printType,
    @Default(['Uncategorized'])List<String> categories,
    double? averageRating,
    int? ratingsCount,
    // //final String maturityRating,
    // //final String contentVersion,
    ImageLinks? imageLinks,
    // final String language,
    //final List<IndustryIdentifier> industryIdentifier,
  }) = _VolumeInfo;
  const VolumeInfo._();
  factory VolumeInfo.fromJson(Map<String, dynamic> json) =>
      _$VolumeInfoFromJson(json);
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

@freezed
class ImageLinks with _$ImageLinks {
  const factory ImageLinks({
    required String smallThumbnail,
    required String thumbnail,
  }) = _ImageLinks;
  const ImageLinks._();
  factory ImageLinks.fromJson(Map<String, dynamic> json) =>
      _$ImageLinksFromJson(json);
}
