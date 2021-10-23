// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookModel _$BookModelFromJson(Map<String, dynamic> json) {
  return _BookModel.fromJson(json);
}

/// @nodoc
class _$BookModelTearOff {
  const _$BookModelTearOff();

  _BookModel call(String id, String? etag, Uri? selfLink, BookInfo info) {
    return _BookModel(
      id,
      etag,
      selfLink,
      info,
    );
  }

  BookModel fromJson(Map<String, Object?> json) {
    return BookModel.fromJson(json);
  }
}

/// @nodoc
const $BookModel = _$BookModelTearOff();

/// @nodoc
mixin _$BookModel {
  String get id => throw _privateConstructorUsedError;
  String? get etag => throw _privateConstructorUsedError;
  Uri? get selfLink => throw _privateConstructorUsedError;
  BookInfo get info => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookModelCopyWith<BookModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookModelCopyWith<$Res> {
  factory $BookModelCopyWith(BookModel value, $Res Function(BookModel) then) =
      _$BookModelCopyWithImpl<$Res>;
  $Res call({String id, String? etag, Uri? selfLink, BookInfo info});

  $BookInfoCopyWith<$Res> get info;
}

/// @nodoc
class _$BookModelCopyWithImpl<$Res> implements $BookModelCopyWith<$Res> {
  _$BookModelCopyWithImpl(this._value, this._then);

  final BookModel _value;
  // ignore: unused_field
  final $Res Function(BookModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? etag = freezed,
    Object? selfLink = freezed,
    Object? info = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      etag: etag == freezed
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
      selfLink: selfLink == freezed
          ? _value.selfLink
          : selfLink // ignore: cast_nullable_to_non_nullable
              as Uri?,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as BookInfo,
    ));
  }

  @override
  $BookInfoCopyWith<$Res> get info {
    return $BookInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc
abstract class _$BookModelCopyWith<$Res> implements $BookModelCopyWith<$Res> {
  factory _$BookModelCopyWith(
          _BookModel value, $Res Function(_BookModel) then) =
      __$BookModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, String? etag, Uri? selfLink, BookInfo info});

  @override
  $BookInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$BookModelCopyWithImpl<$Res> extends _$BookModelCopyWithImpl<$Res>
    implements _$BookModelCopyWith<$Res> {
  __$BookModelCopyWithImpl(_BookModel _value, $Res Function(_BookModel) _then)
      : super(_value, (v) => _then(v as _BookModel));

  @override
  _BookModel get _value => super._value as _BookModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? etag = freezed,
    Object? selfLink = freezed,
    Object? info = freezed,
  }) {
    return _then(_BookModel(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      etag == freezed
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
      selfLink == freezed
          ? _value.selfLink
          : selfLink // ignore: cast_nullable_to_non_nullable
              as Uri?,
      info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as BookInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookModel extends _BookModel with DiagnosticableTreeMixin {
  const _$_BookModel(this.id, this.etag, this.selfLink, this.info) : super._();

  factory _$_BookModel.fromJson(Map<String, dynamic> json) =>
      _$$_BookModelFromJson(json);

  @override
  final String id;
  @override
  final String? etag;
  @override
  final Uri? selfLink;
  @override
  final BookInfo info;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BookModel(id: $id, etag: $etag, selfLink: $selfLink, info: $info)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BookModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('etag', etag))
      ..add(DiagnosticsProperty('selfLink', selfLink))
      ..add(DiagnosticsProperty('info', info));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.etag, etag) || other.etag == etag) &&
            (identical(other.selfLink, selfLink) ||
                other.selfLink == selfLink) &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, etag, selfLink, info);

  @JsonKey(ignore: true)
  @override
  _$BookModelCopyWith<_BookModel> get copyWith =>
      __$BookModelCopyWithImpl<_BookModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookModelToJson(this);
  }
}

abstract class _BookModel extends BookModel {
  const factory _BookModel(
      String id, String? etag, Uri? selfLink, BookInfo info) = _$_BookModel;
  const _BookModel._() : super._();

  factory _BookModel.fromJson(Map<String, dynamic> json) =
      _$_BookModel.fromJson;

  @override
  String get id;
  @override
  String? get etag;
  @override
  Uri? get selfLink;
  @override
  BookInfo get info;
  @override
  @JsonKey(ignore: true)
  _$BookModelCopyWith<_BookModel> get copyWith =>
      throw _privateConstructorUsedError;
}

BookInfo _$BookInfoFromJson(Map<String, dynamic> json) {
  return _BookInfo.fromJson(json);
}

/// @nodoc
class _$BookInfoTearOff {
  const _$BookInfoTearOff();

  _BookInfo call(
      String title,
      List<String> authors,
      String publisher,
      String? publishedDate,
      String rawPublishedDate,
      String description,
      int pageCount,
      String printType,
      List<String> categories,
      double averageRating,
      int ratingsCount,
      Map<String, Uri> imageLinks,
      String language,
      List<IndustryIdentifier> industryIdentifier) {
    return _BookInfo(
      title,
      authors,
      publisher,
      publishedDate,
      rawPublishedDate,
      description,
      pageCount,
      printType,
      categories,
      averageRating,
      ratingsCount,
      imageLinks,
      language,
      industryIdentifier,
    );
  }

  BookInfo fromJson(Map<String, Object?> json) {
    return BookInfo.fromJson(json);
  }
}

/// @nodoc
const $BookInfo = _$BookInfoTearOff();

/// @nodoc
mixin _$BookInfo {
  String get title => throw _privateConstructorUsedError;
  List<String> get authors => throw _privateConstructorUsedError;
  String get publisher => throw _privateConstructorUsedError;
  String? get publishedDate => throw _privateConstructorUsedError;
  String get rawPublishedDate => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get pageCount => throw _privateConstructorUsedError;
  String get printType => throw _privateConstructorUsedError;
  List<String> get categories => throw _privateConstructorUsedError;
  double get averageRating => throw _privateConstructorUsedError;
  int get ratingsCount =>
      throw _privateConstructorUsedError; //final String maturityRating,
//final String contentVersion,
  Map<String, Uri> get imageLinks => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  List<IndustryIdentifier> get industryIdentifier =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookInfoCopyWith<BookInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookInfoCopyWith<$Res> {
  factory $BookInfoCopyWith(BookInfo value, $Res Function(BookInfo) then) =
      _$BookInfoCopyWithImpl<$Res>;
  $Res call(
      {String title,
      List<String> authors,
      String publisher,
      String? publishedDate,
      String rawPublishedDate,
      String description,
      int pageCount,
      String printType,
      List<String> categories,
      double averageRating,
      int ratingsCount,
      Map<String, Uri> imageLinks,
      String language,
      List<IndustryIdentifier> industryIdentifier});
}

/// @nodoc
class _$BookInfoCopyWithImpl<$Res> implements $BookInfoCopyWith<$Res> {
  _$BookInfoCopyWithImpl(this._value, this._then);

  final BookInfo _value;
  // ignore: unused_field
  final $Res Function(BookInfo) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? authors = freezed,
    Object? publisher = freezed,
    Object? publishedDate = freezed,
    Object? rawPublishedDate = freezed,
    Object? description = freezed,
    Object? pageCount = freezed,
    Object? printType = freezed,
    Object? categories = freezed,
    Object? averageRating = freezed,
    Object? ratingsCount = freezed,
    Object? imageLinks = freezed,
    Object? language = freezed,
    Object? industryIdentifier = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      authors: authors == freezed
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      publisher: publisher == freezed
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String,
      publishedDate: publishedDate == freezed
          ? _value.publishedDate
          : publishedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      rawPublishedDate: rawPublishedDate == freezed
          ? _value.rawPublishedDate
          : rawPublishedDate // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      pageCount: pageCount == freezed
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int,
      printType: printType == freezed
          ? _value.printType
          : printType // ignore: cast_nullable_to_non_nullable
              as String,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      averageRating: averageRating == freezed
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      ratingsCount: ratingsCount == freezed
          ? _value.ratingsCount
          : ratingsCount // ignore: cast_nullable_to_non_nullable
              as int,
      imageLinks: imageLinks == freezed
          ? _value.imageLinks
          : imageLinks // ignore: cast_nullable_to_non_nullable
              as Map<String, Uri>,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      industryIdentifier: industryIdentifier == freezed
          ? _value.industryIdentifier
          : industryIdentifier // ignore: cast_nullable_to_non_nullable
              as List<IndustryIdentifier>,
    ));
  }
}

/// @nodoc
abstract class _$BookInfoCopyWith<$Res> implements $BookInfoCopyWith<$Res> {
  factory _$BookInfoCopyWith(_BookInfo value, $Res Function(_BookInfo) then) =
      __$BookInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      List<String> authors,
      String publisher,
      String? publishedDate,
      String rawPublishedDate,
      String description,
      int pageCount,
      String printType,
      List<String> categories,
      double averageRating,
      int ratingsCount,
      Map<String, Uri> imageLinks,
      String language,
      List<IndustryIdentifier> industryIdentifier});
}

/// @nodoc
class __$BookInfoCopyWithImpl<$Res> extends _$BookInfoCopyWithImpl<$Res>
    implements _$BookInfoCopyWith<$Res> {
  __$BookInfoCopyWithImpl(_BookInfo _value, $Res Function(_BookInfo) _then)
      : super(_value, (v) => _then(v as _BookInfo));

  @override
  _BookInfo get _value => super._value as _BookInfo;

  @override
  $Res call({
    Object? title = freezed,
    Object? authors = freezed,
    Object? publisher = freezed,
    Object? publishedDate = freezed,
    Object? rawPublishedDate = freezed,
    Object? description = freezed,
    Object? pageCount = freezed,
    Object? printType = freezed,
    Object? categories = freezed,
    Object? averageRating = freezed,
    Object? ratingsCount = freezed,
    Object? imageLinks = freezed,
    Object? language = freezed,
    Object? industryIdentifier = freezed,
  }) {
    return _then(_BookInfo(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      authors == freezed
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      publisher == freezed
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String,
      publishedDate == freezed
          ? _value.publishedDate
          : publishedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      rawPublishedDate == freezed
          ? _value.rawPublishedDate
          : rawPublishedDate // ignore: cast_nullable_to_non_nullable
              as String,
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      pageCount == freezed
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int,
      printType == freezed
          ? _value.printType
          : printType // ignore: cast_nullable_to_non_nullable
              as String,
      categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      averageRating == freezed
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      ratingsCount == freezed
          ? _value.ratingsCount
          : ratingsCount // ignore: cast_nullable_to_non_nullable
              as int,
      imageLinks == freezed
          ? _value.imageLinks
          : imageLinks // ignore: cast_nullable_to_non_nullable
              as Map<String, Uri>,
      language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      industryIdentifier == freezed
          ? _value.industryIdentifier
          : industryIdentifier // ignore: cast_nullable_to_non_nullable
              as List<IndustryIdentifier>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookInfo extends _BookInfo with DiagnosticableTreeMixin {
  const _$_BookInfo(
      this.title,
      this.authors,
      this.publisher,
      this.publishedDate,
      this.rawPublishedDate,
      this.description,
      this.pageCount,
      this.printType,
      this.categories,
      this.averageRating,
      this.ratingsCount,
      this.imageLinks,
      this.language,
      this.industryIdentifier)
      : super._();

  factory _$_BookInfo.fromJson(Map<String, dynamic> json) =>
      _$$_BookInfoFromJson(json);

  @override
  final String title;
  @override
  final List<String> authors;
  @override
  final String publisher;
  @override
  final String? publishedDate;
  @override
  final String rawPublishedDate;
  @override
  final String description;
  @override
  final int pageCount;
  @override
  final String printType;
  @override
  final List<String> categories;
  @override
  final double averageRating;
  @override
  final int ratingsCount;
  @override //final String maturityRating,
//final String contentVersion,
  final Map<String, Uri> imageLinks;
  @override
  final String language;
  @override
  final List<IndustryIdentifier> industryIdentifier;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BookInfo(title: $title, authors: $authors, publisher: $publisher, publishedDate: $publishedDate, rawPublishedDate: $rawPublishedDate, description: $description, pageCount: $pageCount, printType: $printType, categories: $categories, averageRating: $averageRating, ratingsCount: $ratingsCount, imageLinks: $imageLinks, language: $language, industryIdentifier: $industryIdentifier)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BookInfo'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('authors', authors))
      ..add(DiagnosticsProperty('publisher', publisher))
      ..add(DiagnosticsProperty('publishedDate', publishedDate))
      ..add(DiagnosticsProperty('rawPublishedDate', rawPublishedDate))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('pageCount', pageCount))
      ..add(DiagnosticsProperty('printType', printType))
      ..add(DiagnosticsProperty('categories', categories))
      ..add(DiagnosticsProperty('averageRating', averageRating))
      ..add(DiagnosticsProperty('ratingsCount', ratingsCount))
      ..add(DiagnosticsProperty('imageLinks', imageLinks))
      ..add(DiagnosticsProperty('language', language))
      ..add(DiagnosticsProperty('industryIdentifier', industryIdentifier));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookInfo &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other.authors, authors) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.publishedDate, publishedDate) ||
                other.publishedDate == publishedDate) &&
            (identical(other.rawPublishedDate, rawPublishedDate) ||
                other.rawPublishedDate == rawPublishedDate) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.pageCount, pageCount) ||
                other.pageCount == pageCount) &&
            (identical(other.printType, printType) ||
                other.printType == printType) &&
            const DeepCollectionEquality()
                .equals(other.categories, categories) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.ratingsCount, ratingsCount) ||
                other.ratingsCount == ratingsCount) &&
            const DeepCollectionEquality()
                .equals(other.imageLinks, imageLinks) &&
            (identical(other.language, language) ||
                other.language == language) &&
            const DeepCollectionEquality()
                .equals(other.industryIdentifier, industryIdentifier));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      const DeepCollectionEquality().hash(authors),
      publisher,
      publishedDate,
      rawPublishedDate,
      description,
      pageCount,
      printType,
      const DeepCollectionEquality().hash(categories),
      averageRating,
      ratingsCount,
      const DeepCollectionEquality().hash(imageLinks),
      language,
      const DeepCollectionEquality().hash(industryIdentifier));

  @JsonKey(ignore: true)
  @override
  _$BookInfoCopyWith<_BookInfo> get copyWith =>
      __$BookInfoCopyWithImpl<_BookInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookInfoToJson(this);
  }
}

abstract class _BookInfo extends BookInfo {
  const factory _BookInfo(
      String title,
      List<String> authors,
      String publisher,
      String? publishedDate,
      String rawPublishedDate,
      String description,
      int pageCount,
      String printType,
      List<String> categories,
      double averageRating,
      int ratingsCount,
      Map<String, Uri> imageLinks,
      String language,
      List<IndustryIdentifier> industryIdentifier) = _$_BookInfo;
  const _BookInfo._() : super._();

  factory _BookInfo.fromJson(Map<String, dynamic> json) = _$_BookInfo.fromJson;

  @override
  String get title;
  @override
  List<String> get authors;
  @override
  String get publisher;
  @override
  String? get publishedDate;
  @override
  String get rawPublishedDate;
  @override
  String get description;
  @override
  int get pageCount;
  @override
  String get printType;
  @override
  List<String> get categories;
  @override
  double get averageRating;
  @override
  int get ratingsCount;
  @override //final String maturityRating,
//final String contentVersion,
  Map<String, Uri> get imageLinks;
  @override
  String get language;
  @override
  List<IndustryIdentifier> get industryIdentifier;
  @override
  @JsonKey(ignore: true)
  _$BookInfoCopyWith<_BookInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

IndustryIdentifier _$IndustryIdentifierFromJson(Map<String, dynamic> json) {
  return _IndustryIdentifier.fromJson(json);
}

/// @nodoc
class _$IndustryIdentifierTearOff {
  const _$IndustryIdentifierTearOff();

  _IndustryIdentifier call(String type, String identifier) {
    return _IndustryIdentifier(
      type,
      identifier,
    );
  }

  IndustryIdentifier fromJson(Map<String, Object?> json) {
    return IndustryIdentifier.fromJson(json);
  }
}

/// @nodoc
const $IndustryIdentifier = _$IndustryIdentifierTearOff();

/// @nodoc
mixin _$IndustryIdentifier {
  String get type => throw _privateConstructorUsedError;
  String get identifier => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IndustryIdentifierCopyWith<IndustryIdentifier> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndustryIdentifierCopyWith<$Res> {
  factory $IndustryIdentifierCopyWith(
          IndustryIdentifier value, $Res Function(IndustryIdentifier) then) =
      _$IndustryIdentifierCopyWithImpl<$Res>;
  $Res call({String type, String identifier});
}

/// @nodoc
class _$IndustryIdentifierCopyWithImpl<$Res>
    implements $IndustryIdentifierCopyWith<$Res> {
  _$IndustryIdentifierCopyWithImpl(this._value, this._then);

  final IndustryIdentifier _value;
  // ignore: unused_field
  final $Res Function(IndustryIdentifier) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? identifier = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      identifier: identifier == freezed
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$IndustryIdentifierCopyWith<$Res>
    implements $IndustryIdentifierCopyWith<$Res> {
  factory _$IndustryIdentifierCopyWith(
          _IndustryIdentifier value, $Res Function(_IndustryIdentifier) then) =
      __$IndustryIdentifierCopyWithImpl<$Res>;
  @override
  $Res call({String type, String identifier});
}

/// @nodoc
class __$IndustryIdentifierCopyWithImpl<$Res>
    extends _$IndustryIdentifierCopyWithImpl<$Res>
    implements _$IndustryIdentifierCopyWith<$Res> {
  __$IndustryIdentifierCopyWithImpl(
      _IndustryIdentifier _value, $Res Function(_IndustryIdentifier) _then)
      : super(_value, (v) => _then(v as _IndustryIdentifier));

  @override
  _IndustryIdentifier get _value => super._value as _IndustryIdentifier;

  @override
  $Res call({
    Object? type = freezed,
    Object? identifier = freezed,
  }) {
    return _then(_IndustryIdentifier(
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      identifier == freezed
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IndustryIdentifier extends _IndustryIdentifier
    with DiagnosticableTreeMixin {
  const _$_IndustryIdentifier(this.type, this.identifier) : super._();

  factory _$_IndustryIdentifier.fromJson(Map<String, dynamic> json) =>
      _$$_IndustryIdentifierFromJson(json);

  @override
  final String type;
  @override
  final String identifier;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IndustryIdentifier(type: $type, identifier: $identifier)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IndustryIdentifier'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('identifier', identifier));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IndustryIdentifier &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, identifier);

  @JsonKey(ignore: true)
  @override
  _$IndustryIdentifierCopyWith<_IndustryIdentifier> get copyWith =>
      __$IndustryIdentifierCopyWithImpl<_IndustryIdentifier>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IndustryIdentifierToJson(this);
  }
}

abstract class _IndustryIdentifier extends IndustryIdentifier {
  const factory _IndustryIdentifier(String type, String identifier) =
      _$_IndustryIdentifier;
  const _IndustryIdentifier._() : super._();

  factory _IndustryIdentifier.fromJson(Map<String, dynamic> json) =
      _$_IndustryIdentifier.fromJson;

  @override
  String get type;
  @override
  String get identifier;
  @override
  @JsonKey(ignore: true)
  _$IndustryIdentifierCopyWith<_IndustryIdentifier> get copyWith =>
      throw _privateConstructorUsedError;
}
