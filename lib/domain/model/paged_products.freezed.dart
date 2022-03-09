// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'paged_products.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PagedProductsTearOff {
  const _$PagedProductsTearOff();

  _PagedProducts call({required Page page, required List<Product> items}) {
    return _PagedProducts(
      page: page,
      items: items,
    );
  }
}

/// @nodoc
const $PagedProducts = _$PagedProductsTearOff();

/// @nodoc
mixin _$PagedProducts {
  Page get page => throw _privateConstructorUsedError;
  List<Product> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PagedProductsCopyWith<PagedProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagedProductsCopyWith<$Res> {
  factory $PagedProductsCopyWith(
          PagedProducts value, $Res Function(PagedProducts) then) =
      _$PagedProductsCopyWithImpl<$Res>;
  $Res call({Page page, List<Product> items});

  $PageCopyWith<$Res> get page;
}

/// @nodoc
class _$PagedProductsCopyWithImpl<$Res>
    implements $PagedProductsCopyWith<$Res> {
  _$PagedProductsCopyWithImpl(this._value, this._then);

  final PagedProducts _value;
  // ignore: unused_field
  final $Res Function(PagedProducts) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as Page,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Product>,
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
abstract class _$PagedProductsCopyWith<$Res>
    implements $PagedProductsCopyWith<$Res> {
  factory _$PagedProductsCopyWith(
          _PagedProducts value, $Res Function(_PagedProducts) then) =
      __$PagedProductsCopyWithImpl<$Res>;
  @override
  $Res call({Page page, List<Product> items});

  @override
  $PageCopyWith<$Res> get page;
}

/// @nodoc
class __$PagedProductsCopyWithImpl<$Res>
    extends _$PagedProductsCopyWithImpl<$Res>
    implements _$PagedProductsCopyWith<$Res> {
  __$PagedProductsCopyWithImpl(
      _PagedProducts _value, $Res Function(_PagedProducts) _then)
      : super(_value, (v) => _then(v as _PagedProducts));

  @override
  _PagedProducts get _value => super._value as _PagedProducts;

  @override
  $Res call({
    Object? page = freezed,
    Object? items = freezed,
  }) {
    return _then(_PagedProducts(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as Page,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$_PagedProducts implements _PagedProducts {
  _$_PagedProducts({required this.page, required this.items});

  @override
  final Page page;
  @override
  final List<Product> items;

  @override
  String toString() {
    return 'PagedProducts(page: $page, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PagedProducts &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(items));

  @JsonKey(ignore: true)
  @override
  _$PagedProductsCopyWith<_PagedProducts> get copyWith =>
      __$PagedProductsCopyWithImpl<_PagedProducts>(this, _$identity);
}

abstract class _PagedProducts implements PagedProducts {
  factory _PagedProducts({required Page page, required List<Product> items}) =
      _$_PagedProducts;

  @override
  Page get page;
  @override
  List<Product> get items;
  @override
  @JsonKey(ignore: true)
  _$PagedProductsCopyWith<_PagedProducts> get copyWith =>
      throw _privateConstructorUsedError;
}
