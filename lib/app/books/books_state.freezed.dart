// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'books_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BooksStateTearOff {
  const _$BooksStateTearOff();

  _BooksStateInitial initial() {
    return const _BooksStateInitial();
  }

  _BooksStateLoading loading() {
    return const _BooksStateLoading();
  }

  _BooksStateData data({required List<Book> books}) {
    return _BooksStateData(
      books: books,
    );
  }

  _BooksStateError error([String? error]) {
    return _BooksStateError(
      error,
    );
  }
}

/// @nodoc
const $BooksState = _$BooksStateTearOff();

/// @nodoc
mixin _$BooksState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Book> books) data,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Book> books)? data,
    TResult Function(String? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Book> books)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BooksStateInitial value) initial,
    required TResult Function(_BooksStateLoading value) loading,
    required TResult Function(_BooksStateData value) data,
    required TResult Function(_BooksStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BooksStateInitial value)? initial,
    TResult Function(_BooksStateLoading value)? loading,
    TResult Function(_BooksStateData value)? data,
    TResult Function(_BooksStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BooksStateInitial value)? initial,
    TResult Function(_BooksStateLoading value)? loading,
    TResult Function(_BooksStateData value)? data,
    TResult Function(_BooksStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooksStateCopyWith<$Res> {
  factory $BooksStateCopyWith(
          BooksState value, $Res Function(BooksState) then) =
      _$BooksStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BooksStateCopyWithImpl<$Res> implements $BooksStateCopyWith<$Res> {
  _$BooksStateCopyWithImpl(this._value, this._then);

  final BooksState _value;
  // ignore: unused_field
  final $Res Function(BooksState) _then;
}

/// @nodoc
abstract class _$BooksStateInitialCopyWith<$Res> {
  factory _$BooksStateInitialCopyWith(
          _BooksStateInitial value, $Res Function(_BooksStateInitial) then) =
      __$BooksStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$BooksStateInitialCopyWithImpl<$Res>
    extends _$BooksStateCopyWithImpl<$Res>
    implements _$BooksStateInitialCopyWith<$Res> {
  __$BooksStateInitialCopyWithImpl(
      _BooksStateInitial _value, $Res Function(_BooksStateInitial) _then)
      : super(_value, (v) => _then(v as _BooksStateInitial));

  @override
  _BooksStateInitial get _value => super._value as _BooksStateInitial;
}

/// @nodoc

class _$_BooksStateInitial implements _BooksStateInitial {
  const _$_BooksStateInitial();

  @override
  String toString() {
    return 'BooksState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _BooksStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Book> books) data,
    required TResult Function(String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Book> books)? data,
    TResult Function(String? error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Book> books)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BooksStateInitial value) initial,
    required TResult Function(_BooksStateLoading value) loading,
    required TResult Function(_BooksStateData value) data,
    required TResult Function(_BooksStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BooksStateInitial value)? initial,
    TResult Function(_BooksStateLoading value)? loading,
    TResult Function(_BooksStateData value)? data,
    TResult Function(_BooksStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BooksStateInitial value)? initial,
    TResult Function(_BooksStateLoading value)? loading,
    TResult Function(_BooksStateData value)? data,
    TResult Function(_BooksStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _BooksStateInitial implements BooksState {
  const factory _BooksStateInitial() = _$_BooksStateInitial;
}

/// @nodoc
abstract class _$BooksStateLoadingCopyWith<$Res> {
  factory _$BooksStateLoadingCopyWith(
          _BooksStateLoading value, $Res Function(_BooksStateLoading) then) =
      __$BooksStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$BooksStateLoadingCopyWithImpl<$Res>
    extends _$BooksStateCopyWithImpl<$Res>
    implements _$BooksStateLoadingCopyWith<$Res> {
  __$BooksStateLoadingCopyWithImpl(
      _BooksStateLoading _value, $Res Function(_BooksStateLoading) _then)
      : super(_value, (v) => _then(v as _BooksStateLoading));

  @override
  _BooksStateLoading get _value => super._value as _BooksStateLoading;
}

/// @nodoc

class _$_BooksStateLoading implements _BooksStateLoading {
  const _$_BooksStateLoading();

  @override
  String toString() {
    return 'BooksState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _BooksStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Book> books) data,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Book> books)? data,
    TResult Function(String? error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Book> books)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BooksStateInitial value) initial,
    required TResult Function(_BooksStateLoading value) loading,
    required TResult Function(_BooksStateData value) data,
    required TResult Function(_BooksStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BooksStateInitial value)? initial,
    TResult Function(_BooksStateLoading value)? loading,
    TResult Function(_BooksStateData value)? data,
    TResult Function(_BooksStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BooksStateInitial value)? initial,
    TResult Function(_BooksStateLoading value)? loading,
    TResult Function(_BooksStateData value)? data,
    TResult Function(_BooksStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _BooksStateLoading implements BooksState {
  const factory _BooksStateLoading() = _$_BooksStateLoading;
}

/// @nodoc
abstract class _$BooksStateDataCopyWith<$Res> {
  factory _$BooksStateDataCopyWith(
          _BooksStateData value, $Res Function(_BooksStateData) then) =
      __$BooksStateDataCopyWithImpl<$Res>;
  $Res call({List<Book> books});
}

/// @nodoc
class __$BooksStateDataCopyWithImpl<$Res> extends _$BooksStateCopyWithImpl<$Res>
    implements _$BooksStateDataCopyWith<$Res> {
  __$BooksStateDataCopyWithImpl(
      _BooksStateData _value, $Res Function(_BooksStateData) _then)
      : super(_value, (v) => _then(v as _BooksStateData));

  @override
  _BooksStateData get _value => super._value as _BooksStateData;

  @override
  $Res call({
    Object? books = freezed,
  }) {
    return _then(_BooksStateData(
      books: books == freezed
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>,
    ));
  }
}

/// @nodoc

class _$_BooksStateData implements _BooksStateData {
  const _$_BooksStateData({required this.books});

  @override
  final List<Book> books;

  @override
  String toString() {
    return 'BooksState.data(books: $books)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BooksStateData &&
            const DeepCollectionEquality().equals(other.books, books));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(books));

  @JsonKey(ignore: true)
  @override
  _$BooksStateDataCopyWith<_BooksStateData> get copyWith =>
      __$BooksStateDataCopyWithImpl<_BooksStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Book> books) data,
    required TResult Function(String? error) error,
  }) {
    return data(books);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Book> books)? data,
    TResult Function(String? error)? error,
  }) {
    return data?.call(books);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Book> books)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(books);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BooksStateInitial value) initial,
    required TResult Function(_BooksStateLoading value) loading,
    required TResult Function(_BooksStateData value) data,
    required TResult Function(_BooksStateError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BooksStateInitial value)? initial,
    TResult Function(_BooksStateLoading value)? loading,
    TResult Function(_BooksStateData value)? data,
    TResult Function(_BooksStateError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BooksStateInitial value)? initial,
    TResult Function(_BooksStateLoading value)? loading,
    TResult Function(_BooksStateData value)? data,
    TResult Function(_BooksStateError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _BooksStateData implements BooksState {
  const factory _BooksStateData({required List<Book> books}) =
      _$_BooksStateData;

  List<Book> get books;
  @JsonKey(ignore: true)
  _$BooksStateDataCopyWith<_BooksStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BooksStateErrorCopyWith<$Res> {
  factory _$BooksStateErrorCopyWith(
          _BooksStateError value, $Res Function(_BooksStateError) then) =
      __$BooksStateErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class __$BooksStateErrorCopyWithImpl<$Res>
    extends _$BooksStateCopyWithImpl<$Res>
    implements _$BooksStateErrorCopyWith<$Res> {
  __$BooksStateErrorCopyWithImpl(
      _BooksStateError _value, $Res Function(_BooksStateError) _then)
      : super(_value, (v) => _then(v as _BooksStateError));

  @override
  _BooksStateError get _value => super._value as _BooksStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_BooksStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_BooksStateError implements _BooksStateError {
  const _$_BooksStateError([this.error]);

  @override
  final String? error;

  @override
  String toString() {
    return 'BooksState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BooksStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  _$BooksStateErrorCopyWith<_BooksStateError> get copyWith =>
      __$BooksStateErrorCopyWithImpl<_BooksStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Book> books) data,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Book> books)? data,
    TResult Function(String? error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Book> books)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BooksStateInitial value) initial,
    required TResult Function(_BooksStateLoading value) loading,
    required TResult Function(_BooksStateData value) data,
    required TResult Function(_BooksStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BooksStateInitial value)? initial,
    TResult Function(_BooksStateLoading value)? loading,
    TResult Function(_BooksStateData value)? data,
    TResult Function(_BooksStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BooksStateInitial value)? initial,
    TResult Function(_BooksStateLoading value)? loading,
    TResult Function(_BooksStateData value)? data,
    TResult Function(_BooksStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _BooksStateError implements BooksState {
  const factory _BooksStateError([String? error]) = _$_BooksStateError;

  String? get error;
  @JsonKey(ignore: true)
  _$BooksStateErrorCopyWith<_BooksStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
