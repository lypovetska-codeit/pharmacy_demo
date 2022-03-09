// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'catalog_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CatalogStateTearOff {
  const _$CatalogStateTearOff();

  LoadedState loaded({required List<Product> items, required Page page}) {
    return LoadedState(
      items: items,
      page: page,
    );
  }

  LoadedInitialState loadedInitial(
      {required List<Product> items, required Page page}) {
    return LoadedInitialState(
      items: items,
      page: page,
    );
  }

  LoadingState loading({required Page page}) {
    return LoadingState(
      page: page,
    );
  }

  ErrorState error({required Object error, required Page page}) {
    return ErrorState(
      error: error,
      page: page,
    );
  }
}

/// @nodoc
const $CatalogState = _$CatalogStateTearOff();

/// @nodoc
mixin _$CatalogState {
  Page get page => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> items, Page page) loaded,
    required TResult Function(List<Product> items, Page page) loadedInitial,
    required TResult Function(Page page) loading,
    required TResult Function(Object error, Page page) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Product> items, Page page)? loaded,
    TResult Function(List<Product> items, Page page)? loadedInitial,
    TResult Function(Page page)? loading,
    TResult Function(Object error, Page page)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> items, Page page)? loaded,
    TResult Function(List<Product> items, Page page)? loadedInitial,
    TResult Function(Page page)? loading,
    TResult Function(Object error, Page page)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadedState value) loaded,
    required TResult Function(LoadedInitialState value) loadedInitial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadedState value)? loaded,
    TResult Function(LoadedInitialState value)? loadedInitial,
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadedState value)? loaded,
    TResult Function(LoadedInitialState value)? loadedInitial,
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CatalogStateCopyWith<CatalogState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogStateCopyWith<$Res> {
  factory $CatalogStateCopyWith(
          CatalogState value, $Res Function(CatalogState) then) =
      _$CatalogStateCopyWithImpl<$Res>;
  $Res call({Page page});

  $PageCopyWith<$Res> get page;
}

/// @nodoc
class _$CatalogStateCopyWithImpl<$Res> implements $CatalogStateCopyWith<$Res> {
  _$CatalogStateCopyWithImpl(this._value, this._then);

  final CatalogState _value;
  // ignore: unused_field
  final $Res Function(CatalogState) _then;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as Page,
    ));
  }

  @override
  $PageCopyWith<$Res> get page {
    return $PageCopyWith<$Res>(_value.page, (value) {
      return _then(_value.copyWith(page: value));
    });
  }
}

/// @nodoc
abstract class $LoadedStateCopyWith<$Res>
    implements $CatalogStateCopyWith<$Res> {
  factory $LoadedStateCopyWith(
          LoadedState value, $Res Function(LoadedState) then) =
      _$LoadedStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Product> items, Page page});

  @override
  $PageCopyWith<$Res> get page;
}

/// @nodoc
class _$LoadedStateCopyWithImpl<$Res> extends _$CatalogStateCopyWithImpl<$Res>
    implements $LoadedStateCopyWith<$Res> {
  _$LoadedStateCopyWithImpl(
      LoadedState _value, $Res Function(LoadedState) _then)
      : super(_value, (v) => _then(v as LoadedState));

  @override
  LoadedState get _value => super._value as LoadedState;

  @override
  $Res call({
    Object? items = freezed,
    Object? page = freezed,
  }) {
    return _then(LoadedState(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as Page,
    ));
  }
}

/// @nodoc

class _$LoadedState implements LoadedState {
  _$LoadedState({required this.items, required this.page});

  @override
  final List<Product> items;
  @override
  final Page page;

  @override
  String toString() {
    return 'CatalogState.loaded(items: $items, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadedState &&
            const DeepCollectionEquality().equals(other.items, items) &&
            const DeepCollectionEquality().equals(other.page, page));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(items),
      const DeepCollectionEquality().hash(page));

  @JsonKey(ignore: true)
  @override
  $LoadedStateCopyWith<LoadedState> get copyWith =>
      _$LoadedStateCopyWithImpl<LoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> items, Page page) loaded,
    required TResult Function(List<Product> items, Page page) loadedInitial,
    required TResult Function(Page page) loading,
    required TResult Function(Object error, Page page) error,
  }) {
    return loaded(items, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Product> items, Page page)? loaded,
    TResult Function(List<Product> items, Page page)? loadedInitial,
    TResult Function(Page page)? loading,
    TResult Function(Object error, Page page)? error,
  }) {
    return loaded?.call(items, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> items, Page page)? loaded,
    TResult Function(List<Product> items, Page page)? loadedInitial,
    TResult Function(Page page)? loading,
    TResult Function(Object error, Page page)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(items, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadedState value) loaded,
    required TResult Function(LoadedInitialState value) loadedInitial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadedState value)? loaded,
    TResult Function(LoadedInitialState value)? loadedInitial,
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadedState value)? loaded,
    TResult Function(LoadedInitialState value)? loadedInitial,
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedState implements CatalogState {
  factory LoadedState({required List<Product> items, required Page page}) =
      _$LoadedState;

  List<Product> get items;
  @override
  Page get page;
  @override
  @JsonKey(ignore: true)
  $LoadedStateCopyWith<LoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadedInitialStateCopyWith<$Res>
    implements $CatalogStateCopyWith<$Res> {
  factory $LoadedInitialStateCopyWith(
          LoadedInitialState value, $Res Function(LoadedInitialState) then) =
      _$LoadedInitialStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Product> items, Page page});

  @override
  $PageCopyWith<$Res> get page;
}

/// @nodoc
class _$LoadedInitialStateCopyWithImpl<$Res>
    extends _$CatalogStateCopyWithImpl<$Res>
    implements $LoadedInitialStateCopyWith<$Res> {
  _$LoadedInitialStateCopyWithImpl(
      LoadedInitialState _value, $Res Function(LoadedInitialState) _then)
      : super(_value, (v) => _then(v as LoadedInitialState));

  @override
  LoadedInitialState get _value => super._value as LoadedInitialState;

  @override
  $Res call({
    Object? items = freezed,
    Object? page = freezed,
  }) {
    return _then(LoadedInitialState(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as Page,
    ));
  }
}

/// @nodoc

class _$LoadedInitialState implements LoadedInitialState {
  _$LoadedInitialState({required this.items, required this.page});

  @override
  final List<Product> items;
  @override
  final Page page;

  @override
  String toString() {
    return 'CatalogState.loadedInitial(items: $items, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadedInitialState &&
            const DeepCollectionEquality().equals(other.items, items) &&
            const DeepCollectionEquality().equals(other.page, page));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(items),
      const DeepCollectionEquality().hash(page));

  @JsonKey(ignore: true)
  @override
  $LoadedInitialStateCopyWith<LoadedInitialState> get copyWith =>
      _$LoadedInitialStateCopyWithImpl<LoadedInitialState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> items, Page page) loaded,
    required TResult Function(List<Product> items, Page page) loadedInitial,
    required TResult Function(Page page) loading,
    required TResult Function(Object error, Page page) error,
  }) {
    return loadedInitial(items, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Product> items, Page page)? loaded,
    TResult Function(List<Product> items, Page page)? loadedInitial,
    TResult Function(Page page)? loading,
    TResult Function(Object error, Page page)? error,
  }) {
    return loadedInitial?.call(items, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> items, Page page)? loaded,
    TResult Function(List<Product> items, Page page)? loadedInitial,
    TResult Function(Page page)? loading,
    TResult Function(Object error, Page page)? error,
    required TResult orElse(),
  }) {
    if (loadedInitial != null) {
      return loadedInitial(items, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadedState value) loaded,
    required TResult Function(LoadedInitialState value) loadedInitial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
  }) {
    return loadedInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadedState value)? loaded,
    TResult Function(LoadedInitialState value)? loadedInitial,
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
  }) {
    return loadedInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadedState value)? loaded,
    TResult Function(LoadedInitialState value)? loadedInitial,
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loadedInitial != null) {
      return loadedInitial(this);
    }
    return orElse();
  }
}

abstract class LoadedInitialState implements CatalogState {
  factory LoadedInitialState(
      {required List<Product> items,
      required Page page}) = _$LoadedInitialState;

  List<Product> get items;
  @override
  Page get page;
  @override
  @JsonKey(ignore: true)
  $LoadedInitialStateCopyWith<LoadedInitialState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingStateCopyWith<$Res>
    implements $CatalogStateCopyWith<$Res> {
  factory $LoadingStateCopyWith(
          LoadingState value, $Res Function(LoadingState) then) =
      _$LoadingStateCopyWithImpl<$Res>;
  @override
  $Res call({Page page});

  @override
  $PageCopyWith<$Res> get page;
}

/// @nodoc
class _$LoadingStateCopyWithImpl<$Res> extends _$CatalogStateCopyWithImpl<$Res>
    implements $LoadingStateCopyWith<$Res> {
  _$LoadingStateCopyWithImpl(
      LoadingState _value, $Res Function(LoadingState) _then)
      : super(_value, (v) => _then(v as LoadingState));

  @override
  LoadingState get _value => super._value as LoadingState;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(LoadingState(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as Page,
    ));
  }
}

/// @nodoc

class _$LoadingState implements LoadingState {
  _$LoadingState({required this.page});

  @override
  final Page page;

  @override
  String toString() {
    return 'CatalogState.loading(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadingState &&
            const DeepCollectionEquality().equals(other.page, page));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(page));

  @JsonKey(ignore: true)
  @override
  $LoadingStateCopyWith<LoadingState> get copyWith =>
      _$LoadingStateCopyWithImpl<LoadingState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> items, Page page) loaded,
    required TResult Function(List<Product> items, Page page) loadedInitial,
    required TResult Function(Page page) loading,
    required TResult Function(Object error, Page page) error,
  }) {
    return loading(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Product> items, Page page)? loaded,
    TResult Function(List<Product> items, Page page)? loadedInitial,
    TResult Function(Page page)? loading,
    TResult Function(Object error, Page page)? error,
  }) {
    return loading?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> items, Page page)? loaded,
    TResult Function(List<Product> items, Page page)? loadedInitial,
    TResult Function(Page page)? loading,
    TResult Function(Object error, Page page)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadedState value) loaded,
    required TResult Function(LoadedInitialState value) loadedInitial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadedState value)? loaded,
    TResult Function(LoadedInitialState value)? loadedInitial,
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadedState value)? loaded,
    TResult Function(LoadedInitialState value)? loadedInitial,
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements CatalogState {
  factory LoadingState({required Page page}) = _$LoadingState;

  @override
  Page get page;
  @override
  @JsonKey(ignore: true)
  $LoadingStateCopyWith<LoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorStateCopyWith<$Res>
    implements $CatalogStateCopyWith<$Res> {
  factory $ErrorStateCopyWith(
          ErrorState value, $Res Function(ErrorState) then) =
      _$ErrorStateCopyWithImpl<$Res>;
  @override
  $Res call({Object error, Page page});

  @override
  $PageCopyWith<$Res> get page;
}

/// @nodoc
class _$ErrorStateCopyWithImpl<$Res> extends _$CatalogStateCopyWithImpl<$Res>
    implements $ErrorStateCopyWith<$Res> {
  _$ErrorStateCopyWithImpl(ErrorState _value, $Res Function(ErrorState) _then)
      : super(_value, (v) => _then(v as ErrorState));

  @override
  ErrorState get _value => super._value as ErrorState;

  @override
  $Res call({
    Object? error = freezed,
    Object? page = freezed,
  }) {
    return _then(ErrorState(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as Page,
    ));
  }
}

/// @nodoc

class _$ErrorState implements ErrorState {
  _$ErrorState({required this.error, required this.page});

  @override
  final Object error;
  @override
  final Page page;

  @override
  String toString() {
    return 'CatalogState.error(error: $error, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErrorState &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.page, page));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(page));

  @JsonKey(ignore: true)
  @override
  $ErrorStateCopyWith<ErrorState> get copyWith =>
      _$ErrorStateCopyWithImpl<ErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> items, Page page) loaded,
    required TResult Function(List<Product> items, Page page) loadedInitial,
    required TResult Function(Page page) loading,
    required TResult Function(Object error, Page page) error,
  }) {
    return error(this.error, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Product> items, Page page)? loaded,
    TResult Function(List<Product> items, Page page)? loadedInitial,
    TResult Function(Page page)? loading,
    TResult Function(Object error, Page page)? error,
  }) {
    return error?.call(this.error, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> items, Page page)? loaded,
    TResult Function(List<Product> items, Page page)? loadedInitial,
    TResult Function(Page page)? loading,
    TResult Function(Object error, Page page)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadedState value) loaded,
    required TResult Function(LoadedInitialState value) loadedInitial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadedState value)? loaded,
    TResult Function(LoadedInitialState value)? loadedInitial,
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadedState value)? loaded,
    TResult Function(LoadedInitialState value)? loadedInitial,
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState implements CatalogState {
  factory ErrorState({required Object error, required Page page}) =
      _$ErrorState;

  Object get error;
  @override
  Page get page;
  @override
  @JsonKey(ignore: true)
  $ErrorStateCopyWith<ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
