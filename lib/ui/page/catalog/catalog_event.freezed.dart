// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'catalog_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CatalogEventTearOff {
  const _$CatalogEventTearOff();

  LoadPageEvent loadPage(int page) {
    return LoadPageEvent(
      page,
    );
  }

  ApplyFilterEvent applyFilter(Set<ProductCategory> categories) {
    return ApplyFilterEvent(
      categories,
    );
  }

  ApplySortOrderEvent applySortOrder(ProductSortOrder sortOrder) {
    return ApplySortOrderEvent(
      sortOrder,
    );
  }
}

/// @nodoc
const $CatalogEvent = _$CatalogEventTearOff();

/// @nodoc
mixin _$CatalogEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) loadPage,
    required TResult Function(Set<ProductCategory> categories) applyFilter,
    required TResult Function(ProductSortOrder sortOrder) applySortOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page)? loadPage,
    TResult Function(Set<ProductCategory> categories)? applyFilter,
    TResult Function(ProductSortOrder sortOrder)? applySortOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? loadPage,
    TResult Function(Set<ProductCategory> categories)? applyFilter,
    TResult Function(ProductSortOrder sortOrder)? applySortOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadPageEvent value) loadPage,
    required TResult Function(ApplyFilterEvent value) applyFilter,
    required TResult Function(ApplySortOrderEvent value) applySortOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadPageEvent value)? loadPage,
    TResult Function(ApplyFilterEvent value)? applyFilter,
    TResult Function(ApplySortOrderEvent value)? applySortOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadPageEvent value)? loadPage,
    TResult Function(ApplyFilterEvent value)? applyFilter,
    TResult Function(ApplySortOrderEvent value)? applySortOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogEventCopyWith<$Res> {
  factory $CatalogEventCopyWith(
          CatalogEvent value, $Res Function(CatalogEvent) then) =
      _$CatalogEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CatalogEventCopyWithImpl<$Res> implements $CatalogEventCopyWith<$Res> {
  _$CatalogEventCopyWithImpl(this._value, this._then);

  final CatalogEvent _value;
  // ignore: unused_field
  final $Res Function(CatalogEvent) _then;
}

/// @nodoc
abstract class $LoadPageEventCopyWith<$Res> {
  factory $LoadPageEventCopyWith(
          LoadPageEvent value, $Res Function(LoadPageEvent) then) =
      _$LoadPageEventCopyWithImpl<$Res>;
  $Res call({int page});
}

/// @nodoc
class _$LoadPageEventCopyWithImpl<$Res> extends _$CatalogEventCopyWithImpl<$Res>
    implements $LoadPageEventCopyWith<$Res> {
  _$LoadPageEventCopyWithImpl(
      LoadPageEvent _value, $Res Function(LoadPageEvent) _then)
      : super(_value, (v) => _then(v as LoadPageEvent));

  @override
  LoadPageEvent get _value => super._value as LoadPageEvent;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(LoadPageEvent(
      page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadPageEvent implements LoadPageEvent {
  _$LoadPageEvent(this.page);

  @override
  final int page;

  @override
  String toString() {
    return 'CatalogEvent.loadPage(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadPageEvent &&
            const DeepCollectionEquality().equals(other.page, page));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(page));

  @JsonKey(ignore: true)
  @override
  $LoadPageEventCopyWith<LoadPageEvent> get copyWith =>
      _$LoadPageEventCopyWithImpl<LoadPageEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) loadPage,
    required TResult Function(Set<ProductCategory> categories) applyFilter,
    required TResult Function(ProductSortOrder sortOrder) applySortOrder,
  }) {
    return loadPage(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page)? loadPage,
    TResult Function(Set<ProductCategory> categories)? applyFilter,
    TResult Function(ProductSortOrder sortOrder)? applySortOrder,
  }) {
    return loadPage?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? loadPage,
    TResult Function(Set<ProductCategory> categories)? applyFilter,
    TResult Function(ProductSortOrder sortOrder)? applySortOrder,
    required TResult orElse(),
  }) {
    if (loadPage != null) {
      return loadPage(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadPageEvent value) loadPage,
    required TResult Function(ApplyFilterEvent value) applyFilter,
    required TResult Function(ApplySortOrderEvent value) applySortOrder,
  }) {
    return loadPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadPageEvent value)? loadPage,
    TResult Function(ApplyFilterEvent value)? applyFilter,
    TResult Function(ApplySortOrderEvent value)? applySortOrder,
  }) {
    return loadPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadPageEvent value)? loadPage,
    TResult Function(ApplyFilterEvent value)? applyFilter,
    TResult Function(ApplySortOrderEvent value)? applySortOrder,
    required TResult orElse(),
  }) {
    if (loadPage != null) {
      return loadPage(this);
    }
    return orElse();
  }
}

abstract class LoadPageEvent implements CatalogEvent {
  factory LoadPageEvent(int page) = _$LoadPageEvent;

  int get page;
  @JsonKey(ignore: true)
  $LoadPageEventCopyWith<LoadPageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplyFilterEventCopyWith<$Res> {
  factory $ApplyFilterEventCopyWith(
          ApplyFilterEvent value, $Res Function(ApplyFilterEvent) then) =
      _$ApplyFilterEventCopyWithImpl<$Res>;
  $Res call({Set<ProductCategory> categories});
}

/// @nodoc
class _$ApplyFilterEventCopyWithImpl<$Res>
    extends _$CatalogEventCopyWithImpl<$Res>
    implements $ApplyFilterEventCopyWith<$Res> {
  _$ApplyFilterEventCopyWithImpl(
      ApplyFilterEvent _value, $Res Function(ApplyFilterEvent) _then)
      : super(_value, (v) => _then(v as ApplyFilterEvent));

  @override
  ApplyFilterEvent get _value => super._value as ApplyFilterEvent;

  @override
  $Res call({
    Object? categories = freezed,
  }) {
    return _then(ApplyFilterEvent(
      categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as Set<ProductCategory>,
    ));
  }
}

/// @nodoc

class _$ApplyFilterEvent implements ApplyFilterEvent {
  _$ApplyFilterEvent(this.categories);

  @override
  final Set<ProductCategory> categories;

  @override
  String toString() {
    return 'CatalogEvent.applyFilter(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ApplyFilterEvent &&
            const DeepCollectionEquality()
                .equals(other.categories, categories));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(categories));

  @JsonKey(ignore: true)
  @override
  $ApplyFilterEventCopyWith<ApplyFilterEvent> get copyWith =>
      _$ApplyFilterEventCopyWithImpl<ApplyFilterEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) loadPage,
    required TResult Function(Set<ProductCategory> categories) applyFilter,
    required TResult Function(ProductSortOrder sortOrder) applySortOrder,
  }) {
    return applyFilter(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page)? loadPage,
    TResult Function(Set<ProductCategory> categories)? applyFilter,
    TResult Function(ProductSortOrder sortOrder)? applySortOrder,
  }) {
    return applyFilter?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? loadPage,
    TResult Function(Set<ProductCategory> categories)? applyFilter,
    TResult Function(ProductSortOrder sortOrder)? applySortOrder,
    required TResult orElse(),
  }) {
    if (applyFilter != null) {
      return applyFilter(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadPageEvent value) loadPage,
    required TResult Function(ApplyFilterEvent value) applyFilter,
    required TResult Function(ApplySortOrderEvent value) applySortOrder,
  }) {
    return applyFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadPageEvent value)? loadPage,
    TResult Function(ApplyFilterEvent value)? applyFilter,
    TResult Function(ApplySortOrderEvent value)? applySortOrder,
  }) {
    return applyFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadPageEvent value)? loadPage,
    TResult Function(ApplyFilterEvent value)? applyFilter,
    TResult Function(ApplySortOrderEvent value)? applySortOrder,
    required TResult orElse(),
  }) {
    if (applyFilter != null) {
      return applyFilter(this);
    }
    return orElse();
  }
}

abstract class ApplyFilterEvent implements CatalogEvent {
  factory ApplyFilterEvent(Set<ProductCategory> categories) =
      _$ApplyFilterEvent;

  Set<ProductCategory> get categories;
  @JsonKey(ignore: true)
  $ApplyFilterEventCopyWith<ApplyFilterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplySortOrderEventCopyWith<$Res> {
  factory $ApplySortOrderEventCopyWith(
          ApplySortOrderEvent value, $Res Function(ApplySortOrderEvent) then) =
      _$ApplySortOrderEventCopyWithImpl<$Res>;
  $Res call({ProductSortOrder sortOrder});
}

/// @nodoc
class _$ApplySortOrderEventCopyWithImpl<$Res>
    extends _$CatalogEventCopyWithImpl<$Res>
    implements $ApplySortOrderEventCopyWith<$Res> {
  _$ApplySortOrderEventCopyWithImpl(
      ApplySortOrderEvent _value, $Res Function(ApplySortOrderEvent) _then)
      : super(_value, (v) => _then(v as ApplySortOrderEvent));

  @override
  ApplySortOrderEvent get _value => super._value as ApplySortOrderEvent;

  @override
  $Res call({
    Object? sortOrder = freezed,
  }) {
    return _then(ApplySortOrderEvent(
      sortOrder == freezed
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as ProductSortOrder,
    ));
  }
}

/// @nodoc

class _$ApplySortOrderEvent implements ApplySortOrderEvent {
  _$ApplySortOrderEvent(this.sortOrder);

  @override
  final ProductSortOrder sortOrder;

  @override
  String toString() {
    return 'CatalogEvent.applySortOrder(sortOrder: $sortOrder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ApplySortOrderEvent &&
            const DeepCollectionEquality().equals(other.sortOrder, sortOrder));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(sortOrder));

  @JsonKey(ignore: true)
  @override
  $ApplySortOrderEventCopyWith<ApplySortOrderEvent> get copyWith =>
      _$ApplySortOrderEventCopyWithImpl<ApplySortOrderEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) loadPage,
    required TResult Function(Set<ProductCategory> categories) applyFilter,
    required TResult Function(ProductSortOrder sortOrder) applySortOrder,
  }) {
    return applySortOrder(sortOrder);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page)? loadPage,
    TResult Function(Set<ProductCategory> categories)? applyFilter,
    TResult Function(ProductSortOrder sortOrder)? applySortOrder,
  }) {
    return applySortOrder?.call(sortOrder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? loadPage,
    TResult Function(Set<ProductCategory> categories)? applyFilter,
    TResult Function(ProductSortOrder sortOrder)? applySortOrder,
    required TResult orElse(),
  }) {
    if (applySortOrder != null) {
      return applySortOrder(sortOrder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadPageEvent value) loadPage,
    required TResult Function(ApplyFilterEvent value) applyFilter,
    required TResult Function(ApplySortOrderEvent value) applySortOrder,
  }) {
    return applySortOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadPageEvent value)? loadPage,
    TResult Function(ApplyFilterEvent value)? applyFilter,
    TResult Function(ApplySortOrderEvent value)? applySortOrder,
  }) {
    return applySortOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadPageEvent value)? loadPage,
    TResult Function(ApplyFilterEvent value)? applyFilter,
    TResult Function(ApplySortOrderEvent value)? applySortOrder,
    required TResult orElse(),
  }) {
    if (applySortOrder != null) {
      return applySortOrder(this);
    }
    return orElse();
  }
}

abstract class ApplySortOrderEvent implements CatalogEvent {
  factory ApplySortOrderEvent(ProductSortOrder sortOrder) =
      _$ApplySortOrderEvent;

  ProductSortOrder get sortOrder;
  @JsonKey(ignore: true)
  $ApplySortOrderEventCopyWith<ApplySortOrderEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
