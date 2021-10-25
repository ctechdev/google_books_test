// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookModel _$_$_BookModelFromJson(Map<String, dynamic> json) {
  return _$_BookModel(
    id: json['id'] as String,
    etag: json['etag'] as String,
    selfLink: Uri.parse(json['selfLink'] as String),
    volumeInfo: VolumeInfo.fromJson(json['volumeInfo'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_BookModelToJson(_$_BookModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'etag': instance.etag,
      'selfLink': instance.selfLink.toString(),
      'volumeInfo': instance.volumeInfo,
    };

_$_VolumeInfo _$_$_VolumeInfoFromJson(Map<String, dynamic> json) {
  return _$_VolumeInfo(
    title: json['title'] as String,
    authors:
        (json['authors'] as List<dynamic>?)?.map((e) => e as String).toList(),
    publisher: json['publisher'] as String? ?? '',
    description: json['description'] as String?,
    pageCount: json['pageCount'] as int?,
    printType: json['printType'] as String?,
    categories: (json['categories'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        ['Uncategorized'],
    averageRating: (json['averageRating'] as num?)?.toDouble(),
    ratingsCount: json['ratingsCount'] as int?,
    imageLinks: json['imageLinks'] == null
        ? null
        : ImageLinks.fromJson(json['imageLinks'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_VolumeInfoToJson(_$_VolumeInfo instance) =>
    <String, dynamic>{
      'title': instance.title,
      'authors': instance.authors,
      'publisher': instance.publisher,
      'description': instance.description,
      'pageCount': instance.pageCount,
      'printType': instance.printType,
      'categories': instance.categories,
      'averageRating': instance.averageRating,
      'ratingsCount': instance.ratingsCount,
      'imageLinks': instance.imageLinks,
    };

_$_IndustryIdentifier _$_$_IndustryIdentifierFromJson(
    Map<String, dynamic> json) {
  return _$_IndustryIdentifier(
    json['type'] as String,
    json['identifier'] as String,
  );
}

Map<String, dynamic> _$_$_IndustryIdentifierToJson(
        _$_IndustryIdentifier instance) =>
    <String, dynamic>{
      'type': instance.type,
      'identifier': instance.identifier,
    };

_$_ImageLinks _$_$_ImageLinksFromJson(Map<String, dynamic> json) {
  return _$_ImageLinks(
    smallThumbnail: json['smallThumbnail'] as String,
    thumbnail: json['thumbnail'] as String,
  );
}

Map<String, dynamic> _$_$_ImageLinksToJson(_$_ImageLinks instance) =>
    <String, dynamic>{
      'smallThumbnail': instance.smallThumbnail,
      'thumbnail': instance.thumbnail,
    };
