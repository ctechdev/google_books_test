// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookModel _$$_BookModelFromJson(Map<String, dynamic> json) => _$_BookModel(
      json['id'] as String,
      json['etag'] as String?,
      json['selfLink'] == null ? null : Uri.parse(json['selfLink'] as String),
      BookInfo.fromJson(json['info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BookModelToJson(_$_BookModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'etag': instance.etag,
      'selfLink': instance.selfLink?.toString(),
      'info': instance.info,
    };

_$_BookInfo _$$_BookInfoFromJson(Map<String, dynamic> json) => _$_BookInfo(
      json['title'] as String,
      (json['authors'] as List<dynamic>).map((e) => e as String).toList(),
      json['publisher'] as String,
      json['publishedDate'] as String?,
      json['rawPublishedDate'] as String,
      json['description'] as String,
      json['pageCount'] as int,
      json['printType'] as String,
      (json['categories'] as List<dynamic>).map((e) => e as String).toList(),
      (json['averageRating'] as num).toDouble(),
      json['ratingsCount'] as int,
      (json['imageLinks'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Uri.parse(e as String)),
      ),
      json['language'] as String,
      (json['industryIdentifier'] as List<dynamic>)
          .map((e) => IndustryIdentifier.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BookInfoToJson(_$_BookInfo instance) =>
    <String, dynamic>{
      'title': instance.title,
      'authors': instance.authors,
      'publisher': instance.publisher,
      'publishedDate': instance.publishedDate,
      'rawPublishedDate': instance.rawPublishedDate,
      'description': instance.description,
      'pageCount': instance.pageCount,
      'printType': instance.printType,
      'categories': instance.categories,
      'averageRating': instance.averageRating,
      'ratingsCount': instance.ratingsCount,
      'imageLinks':
          instance.imageLinks.map((k, e) => MapEntry(k, e.toString())),
      'language': instance.language,
      'industryIdentifier': instance.industryIdentifier,
    };

_$_IndustryIdentifier _$$_IndustryIdentifierFromJson(
        Map<String, dynamic> json) =>
    _$_IndustryIdentifier(
      json['type'] as String,
      json['identifier'] as String,
    );

Map<String, dynamic> _$$_IndustryIdentifierToJson(
        _$_IndustryIdentifier instance) =>
    <String, dynamic>{
      'type': instance.type,
      'identifier': instance.identifier,
    };
