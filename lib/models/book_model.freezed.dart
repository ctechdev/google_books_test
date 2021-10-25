// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

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

  _BookModel call(
      {required String id,
      required String etag,
      required Uri selfLink,
      required VolumeInfo volumeInfo}) {
    return _BookModel(
      id: id,
      etag: etag,
      selfLink: selfLink,
      volumeInfo: volumeInfo,
    );
  }

  BookModel fromJson(Map<String, Object> json) {
    return BookModel.fromJson(json);
  }
}

/// @nodoc
const $BookModel = _$BookModelTearOff();

/// @nodoc
mixin _$BookModel {
  String get id => throw _privateConstructorUsedError;
  String get etag => throw _privateConstructorUsedError;
  Uri get selfLink => throw _privateConstructorUsedError;
  VolumeInfo get volumeInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookModelCopyWith<BookModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookModelCopyWith<$Res> {
  factory $BookModelCopyWith(BookModel value, $Res Function(BookModel) then) =
      _$BookModelCopyWithImpl<$Res>;
  $Res call({String id, String etag, Uri selfLink, VolumeInfo volumeInfo});

  $VolumeInfoCopyWith<$Res> get volumeInfo;
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
    Object? volumeInfo = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      etag: etag == freezed
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String,
      selfLink: selfLink == freezed
          ? _value.selfLink
          : selfLink // ignore: cast_nullable_to_non_nullable
              as Uri,
      volumeInfo: volumeInfo == freezed
          ? _value.volumeInfo
          : volumeInfo // ignore: cast_nullable_to_non_nullable
              as VolumeInfo,
    ));
  }

  @override
  $VolumeInfoCopyWith<$Res> get volumeInfo {
    return $VolumeInfoCopyWith<$Res>(_value.volumeInfo, (value) {
      return _then(_value.copyWith(volumeInfo: value));
    });
  }
}

/// @nodoc
abstract class _$BookModelCopyWith<$Res> implements $BookModelCopyWith<$Res> {
  factory _$BookModelCopyWith(
          _BookModel value, $Res Function(_BookModel) then) =
      __$BookModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, String etag, Uri selfLink, VolumeInfo volumeInfo});

  @override
  $VolumeInfoCopyWith<$Res> get volumeInfo;
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
    Object? volumeInfo = freezed,
  }) {
    return _then(_BookModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      etag: etag == freezed
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String,
      selfLink: selfLink == freezed
          ? _value.selfLink
          : selfLink // ignore: cast_nullable_to_non_nullable
              as Uri,
      volumeInfo: volumeInfo == freezed
          ? _value.volumeInfo
          : volumeInfo // ignore: cast_nullable_to_non_nullable
              as VolumeInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookModel extends _BookModel with DiagnosticableTreeMixin {
  const _$_BookModel(
      {required this.id,
      required this.etag,
      required this.selfLink,
      required this.volumeInfo})
      : super._();

  factory _$_BookModel.fromJson(Map<String, dynamic> json) =>
      _$_$_BookModelFromJson(json);

  @override
  final String id;
  @override
  final String etag;
  @override
  final Uri selfLink;
  @override
  final VolumeInfo volumeInfo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BookModel(id: $id, etag: $etag, selfLink: $selfLink, volumeInfo: $volumeInfo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BookModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('etag', etag))
      ..add(DiagnosticsProperty('selfLink', selfLink))
      ..add(DiagnosticsProperty('volumeInfo', volumeInfo));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BookModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.etag, etag) ||
                const DeepCollectionEquality().equals(other.etag, etag)) &&
            (identical(other.selfLink, selfLink) ||
                const DeepCollectionEquality()
                    .equals(other.selfLink, selfLink)) &&
            (identical(other.volumeInfo, volumeInfo) ||
                const DeepCollectionEquality()
                    .equals(other.volumeInfo, volumeInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(etag) ^
      const DeepCollectionEquality().hash(selfLink) ^
      const DeepCollectionEquality().hash(volumeInfo);

  @JsonKey(ignore: true)
  @override
  _$BookModelCopyWith<_BookModel> get copyWith =>
      __$BookModelCopyWithImpl<_BookModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BookModelToJson(this);
  }
}

abstract class _BookModel extends BookModel {
  const factory _BookModel(
      {required String id,
      required String etag,
      required Uri selfLink,
      required VolumeInfo volumeInfo}) = _$_BookModel;
  const _BookModel._() : super._();

  factory _BookModel.fromJson(Map<String, dynamic> json) =
      _$_BookModel.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get etag => throw _privateConstructorUsedError;
  @override
  Uri get selfLink => throw _privateConstructorUsedError;
  @override
  VolumeInfo get volumeInfo => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BookModelCopyWith<_BookModel> get copyWith =>
      throw _privateConstructorUsedError;
}

VolumeInfo _$VolumeInfoFromJson(Map<String, dynamic> json) {
  return _VolumeInfo.fromJson(json);
}

/// @nodoc
class _$VolumeInfoTearOff {
  const _$VolumeInfoTearOff();

  _VolumeInfo call(
      {required String title,
      List<String>? authors,
      String? publisher = '',
      String? description,
      int? pageCount,
      String? printType,
      List<String> categories = const ['Uncategorized'],
      double? averageRating,
      int? ratingsCount,
      ImageLinks? imageLinks}) {
    return _VolumeInfo(
      title: title,
      authors: authors,
      publisher: publisher,
      description: description,
      pageCount: pageCount,
      printType: printType,
      categories: categories,
      averageRating: averageRating,
      ratingsCount: ratingsCount,
      imageLinks: imageLinks,
    );
  }

  VolumeInfo fromJson(Map<String, Object> json) {
    return VolumeInfo.fromJson(json);
  }
}

/// @nodoc
const $VolumeInfo = _$VolumeInfoTearOff();

/// @nodoc
mixin _$VolumeInfo {
  String get title => throw _privateConstructorUsedError; //String? subtitle,
  List<String>? get authors => throw _privateConstructorUsedError;
  String? get publisher =>
      throw _privateConstructorUsedError; // final String? publishedDate,
// final String rawPublishedDate,
  String? get description => throw _privateConstructorUsedError;
  int? get pageCount => throw _privateConstructorUsedError;
  String? get printType => throw _privateConstructorUsedError;
  List<String> get categories => throw _privateConstructorUsedError;
  double? get averageRating => throw _privateConstructorUsedError;
  int? get ratingsCount =>
      throw _privateConstructorUsedError; // //final String maturityRating,
// //final String contentVersion,
  ImageLinks? get imageLinks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VolumeInfoCopyWith<VolumeInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VolumeInfoCopyWith<$Res> {
  factory $VolumeInfoCopyWith(
          VolumeInfo value, $Res Function(VolumeInfo) then) =
      _$VolumeInfoCopyWithImpl<$Res>;
  $Res call(
      {String title,
      List<String>? authors,
      String? publisher,
      String? description,
      int? pageCount,
      String? printType,
      List<String> categories,
      double? averageRating,
      int? ratingsCount,
      ImageLinks? imageLinks});

  $ImageLinksCopyWith<$Res>? get imageLinks;
}

/// @nodoc
class _$VolumeInfoCopyWithImpl<$Res> implements $VolumeInfoCopyWith<$Res> {
  _$VolumeInfoCopyWithImpl(this._value, this._then);

  final VolumeInfo _value;
  // ignore: unused_field
  final $Res Function(VolumeInfo) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? authors = freezed,
    Object? publisher = freezed,
    Object? description = freezed,
    Object? pageCount = freezed,
    Object? printType = freezed,
    Object? categories = freezed,
    Object? averageRating = freezed,
    Object? ratingsCount = freezed,
    Object? imageLinks = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      authors: authors == freezed
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      publisher: publisher == freezed
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      pageCount: pageCount == freezed
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int?,
      printType: printType == freezed
          ? _value.printType
          : printType // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      averageRating: averageRating == freezed
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double?,
      ratingsCount: ratingsCount == freezed
          ? _value.ratingsCount
          : ratingsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      imageLinks: imageLinks == freezed
          ? _value.imageLinks
          : imageLinks // ignore: cast_nullable_to_non_nullable
              as ImageLinks?,
    ));
  }

  @override
  $ImageLinksCopyWith<$Res>? get imageLinks {
    if (_value.imageLinks == null) {
      return null;
    }

    return $ImageLinksCopyWith<$Res>(_value.imageLinks!, (value) {
      return _then(_value.copyWith(imageLinks: value));
    });
  }
}

/// @nodoc
abstract class _$VolumeInfoCopyWith<$Res> implements $VolumeInfoCopyWith<$Res> {
  factory _$VolumeInfoCopyWith(
          _VolumeInfo value, $Res Function(_VolumeInfo) then) =
      __$VolumeInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      List<String>? authors,
      String? publisher,
      String? description,
      int? pageCount,
      String? printType,
      List<String> categories,
      double? averageRating,
      int? ratingsCount,
      ImageLinks? imageLinks});

  @override
  $ImageLinksCopyWith<$Res>? get imageLinks;
}

/// @nodoc
class __$VolumeInfoCopyWithImpl<$Res> extends _$VolumeInfoCopyWithImpl<$Res>
    implements _$VolumeInfoCopyWith<$Res> {
  __$VolumeInfoCopyWithImpl(
      _VolumeInfo _value, $Res Function(_VolumeInfo) _then)
      : super(_value, (v) => _then(v as _VolumeInfo));

  @override
  _VolumeInfo get _value => super._value as _VolumeInfo;

  @override
  $Res call({
    Object? title = freezed,
    Object? authors = freezed,
    Object? publisher = freezed,
    Object? description = freezed,
    Object? pageCount = freezed,
    Object? printType = freezed,
    Object? categories = freezed,
    Object? averageRating = freezed,
    Object? ratingsCount = freezed,
    Object? imageLinks = freezed,
  }) {
    return _then(_VolumeInfo(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      authors: authors == freezed
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      publisher: publisher == freezed
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      pageCount: pageCount == freezed
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int?,
      printType: printType == freezed
          ? _value.printType
          : printType // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      averageRating: averageRating == freezed
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double?,
      ratingsCount: ratingsCount == freezed
          ? _value.ratingsCount
          : ratingsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      imageLinks: imageLinks == freezed
          ? _value.imageLinks
          : imageLinks // ignore: cast_nullable_to_non_nullable
              as ImageLinks?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VolumeInfo extends _VolumeInfo with DiagnosticableTreeMixin {
  const _$_VolumeInfo(
      {required this.title,
      this.authors,
      this.publisher = '',
      this.description,
      this.pageCount,
      this.printType,
      this.categories = const ['Uncategorized'],
      this.averageRating,
      this.ratingsCount,
      this.imageLinks})
      : super._();

  factory _$_VolumeInfo.fromJson(Map<String, dynamic> json) =>
      _$_$_VolumeInfoFromJson(json);

  @override
  final String title;
  @override //String? subtitle,
  final List<String>? authors;
  @JsonKey(defaultValue: '')
  @override
  final String? publisher;
  @override // final String? publishedDate,
// final String rawPublishedDate,
  final String? description;
  @override
  final int? pageCount;
  @override
  final String? printType;
  @JsonKey(defaultValue: const ['Uncategorized'])
  @override
  final List<String> categories;
  @override
  final double? averageRating;
  @override
  final int? ratingsCount;
  @override // //final String maturityRating,
// //final String contentVersion,
  final ImageLinks? imageLinks;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VolumeInfo(title: $title, authors: $authors, publisher: $publisher, description: $description, pageCount: $pageCount, printType: $printType, categories: $categories, averageRating: $averageRating, ratingsCount: $ratingsCount, imageLinks: $imageLinks)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VolumeInfo'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('authors', authors))
      ..add(DiagnosticsProperty('publisher', publisher))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('pageCount', pageCount))
      ..add(DiagnosticsProperty('printType', printType))
      ..add(DiagnosticsProperty('categories', categories))
      ..add(DiagnosticsProperty('averageRating', averageRating))
      ..add(DiagnosticsProperty('ratingsCount', ratingsCount))
      ..add(DiagnosticsProperty('imageLinks', imageLinks));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VolumeInfo &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.authors, authors) ||
                const DeepCollectionEquality()
                    .equals(other.authors, authors)) &&
            (identical(other.publisher, publisher) ||
                const DeepCollectionEquality()
                    .equals(other.publisher, publisher)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.pageCount, pageCount) ||
                const DeepCollectionEquality()
                    .equals(other.pageCount, pageCount)) &&
            (identical(other.printType, printType) ||
                const DeepCollectionEquality()
                    .equals(other.printType, printType)) &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)) &&
            (identical(other.averageRating, averageRating) ||
                const DeepCollectionEquality()
                    .equals(other.averageRating, averageRating)) &&
            (identical(other.ratingsCount, ratingsCount) ||
                const DeepCollectionEquality()
                    .equals(other.ratingsCount, ratingsCount)) &&
            (identical(other.imageLinks, imageLinks) ||
                const DeepCollectionEquality()
                    .equals(other.imageLinks, imageLinks)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(authors) ^
      const DeepCollectionEquality().hash(publisher) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(pageCount) ^
      const DeepCollectionEquality().hash(printType) ^
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(averageRating) ^
      const DeepCollectionEquality().hash(ratingsCount) ^
      const DeepCollectionEquality().hash(imageLinks);

  @JsonKey(ignore: true)
  @override
  _$VolumeInfoCopyWith<_VolumeInfo> get copyWith =>
      __$VolumeInfoCopyWithImpl<_VolumeInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VolumeInfoToJson(this);
  }
}

abstract class _VolumeInfo extends VolumeInfo {
  const factory _VolumeInfo(
      {required String title,
      List<String>? authors,
      String? publisher,
      String? description,
      int? pageCount,
      String? printType,
      List<String> categories,
      double? averageRating,
      int? ratingsCount,
      ImageLinks? imageLinks}) = _$_VolumeInfo;
  const _VolumeInfo._() : super._();

  factory _VolumeInfo.fromJson(Map<String, dynamic> json) =
      _$_VolumeInfo.fromJson;

  @override
  String get title => throw _privateConstructorUsedError;
  @override //String? subtitle,
  List<String>? get authors => throw _privateConstructorUsedError;
  @override
  String? get publisher => throw _privateConstructorUsedError;
  @override // final String? publishedDate,
// final String rawPublishedDate,
  String? get description => throw _privateConstructorUsedError;
  @override
  int? get pageCount => throw _privateConstructorUsedError;
  @override
  String? get printType => throw _privateConstructorUsedError;
  @override
  List<String> get categories => throw _privateConstructorUsedError;
  @override
  double? get averageRating => throw _privateConstructorUsedError;
  @override
  int? get ratingsCount => throw _privateConstructorUsedError;
  @override // //final String maturityRating,
// //final String contentVersion,
  ImageLinks? get imageLinks => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VolumeInfoCopyWith<_VolumeInfo> get copyWith =>
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

  IndustryIdentifier fromJson(Map<String, Object> json) {
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
      _$_$_IndustryIdentifierFromJson(json);

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
        (other is _IndustryIdentifier &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.identifier, identifier) ||
                const DeepCollectionEquality()
                    .equals(other.identifier, identifier)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(identifier);

  @JsonKey(ignore: true)
  @override
  _$IndustryIdentifierCopyWith<_IndustryIdentifier> get copyWith =>
      __$IndustryIdentifierCopyWithImpl<_IndustryIdentifier>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_IndustryIdentifierToJson(this);
  }
}

abstract class _IndustryIdentifier extends IndustryIdentifier {
  const factory _IndustryIdentifier(String type, String identifier) =
      _$_IndustryIdentifier;
  const _IndustryIdentifier._() : super._();

  factory _IndustryIdentifier.fromJson(Map<String, dynamic> json) =
      _$_IndustryIdentifier.fromJson;

  @override
  String get type => throw _privateConstructorUsedError;
  @override
  String get identifier => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$IndustryIdentifierCopyWith<_IndustryIdentifier> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageLinks _$ImageLinksFromJson(Map<String, dynamic> json) {
  return _ImageLinks.fromJson(json);
}

/// @nodoc
class _$ImageLinksTearOff {
  const _$ImageLinksTearOff();

  _ImageLinks call(
      {required String smallThumbnail, required String thumbnail}) {
    return _ImageLinks(
      smallThumbnail: smallThumbnail,
      thumbnail: thumbnail,
    );
  }

  ImageLinks fromJson(Map<String, Object> json) {
    return ImageLinks.fromJson(json);
  }
}

/// @nodoc
const $ImageLinks = _$ImageLinksTearOff();

/// @nodoc
mixin _$ImageLinks {
  String get smallThumbnail => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageLinksCopyWith<ImageLinks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageLinksCopyWith<$Res> {
  factory $ImageLinksCopyWith(
          ImageLinks value, $Res Function(ImageLinks) then) =
      _$ImageLinksCopyWithImpl<$Res>;
  $Res call({String smallThumbnail, String thumbnail});
}

/// @nodoc
class _$ImageLinksCopyWithImpl<$Res> implements $ImageLinksCopyWith<$Res> {
  _$ImageLinksCopyWithImpl(this._value, this._then);

  final ImageLinks _value;
  // ignore: unused_field
  final $Res Function(ImageLinks) _then;

  @override
  $Res call({
    Object? smallThumbnail = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_value.copyWith(
      smallThumbnail: smallThumbnail == freezed
          ? _value.smallThumbnail
          : smallThumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ImageLinksCopyWith<$Res> implements $ImageLinksCopyWith<$Res> {
  factory _$ImageLinksCopyWith(
          _ImageLinks value, $Res Function(_ImageLinks) then) =
      __$ImageLinksCopyWithImpl<$Res>;
  @override
  $Res call({String smallThumbnail, String thumbnail});
}

/// @nodoc
class __$ImageLinksCopyWithImpl<$Res> extends _$ImageLinksCopyWithImpl<$Res>
    implements _$ImageLinksCopyWith<$Res> {
  __$ImageLinksCopyWithImpl(
      _ImageLinks _value, $Res Function(_ImageLinks) _then)
      : super(_value, (v) => _then(v as _ImageLinks));

  @override
  _ImageLinks get _value => super._value as _ImageLinks;

  @override
  $Res call({
    Object? smallThumbnail = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_ImageLinks(
      smallThumbnail: smallThumbnail == freezed
          ? _value.smallThumbnail
          : smallThumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageLinks extends _ImageLinks with DiagnosticableTreeMixin {
  const _$_ImageLinks({required this.smallThumbnail, required this.thumbnail})
      : super._();

  factory _$_ImageLinks.fromJson(Map<String, dynamic> json) =>
      _$_$_ImageLinksFromJson(json);

  @override
  final String smallThumbnail;
  @override
  final String thumbnail;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImageLinks(smallThumbnail: $smallThumbnail, thumbnail: $thumbnail)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImageLinks'))
      ..add(DiagnosticsProperty('smallThumbnail', smallThumbnail))
      ..add(DiagnosticsProperty('thumbnail', thumbnail));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImageLinks &&
            (identical(other.smallThumbnail, smallThumbnail) ||
                const DeepCollectionEquality()
                    .equals(other.smallThumbnail, smallThumbnail)) &&
            (identical(other.thumbnail, thumbnail) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnail, thumbnail)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(smallThumbnail) ^
      const DeepCollectionEquality().hash(thumbnail);

  @JsonKey(ignore: true)
  @override
  _$ImageLinksCopyWith<_ImageLinks> get copyWith =>
      __$ImageLinksCopyWithImpl<_ImageLinks>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ImageLinksToJson(this);
  }
}

abstract class _ImageLinks extends ImageLinks {
  const factory _ImageLinks(
      {required String smallThumbnail,
      required String thumbnail}) = _$_ImageLinks;
  const _ImageLinks._() : super._();

  factory _ImageLinks.fromJson(Map<String, dynamic> json) =
      _$_ImageLinks.fromJson;

  @override
  String get smallThumbnail => throw _privateConstructorUsedError;
  @override
  String get thumbnail => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ImageLinksCopyWith<_ImageLinks> get copyWith =>
      throw _privateConstructorUsedError;
}
