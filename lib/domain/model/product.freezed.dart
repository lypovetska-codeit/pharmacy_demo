// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductTearOff {
  const _$ProductTearOff();

  _Product call(
      {required ProductId id,
      required String name,
      required String origin,
      required double price,
      required double discount,
      required String image,
      required bool requireReceipt,
      required ProductCategory category,
      required String description}) {
    return _Product(
      id: id,
      name: name,
      origin: origin,
      price: price,
      discount: discount,
      image: image,
      requireReceipt: requireReceipt,
      category: category,
      description: description,
    );
  }
}

/// @nodoc
const $Product = _$ProductTearOff();

/// @nodoc
mixin _$Product {
  ProductId get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get origin => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get discount => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  bool get requireReceipt => throw _privateConstructorUsedError;
  ProductCategory get category => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res>;
  $Res call(
      {ProductId id,
      String name,
      String origin,
      double price,
      double discount,
      String image,
      bool requireReceipt,
      ProductCategory category,
      String description});

  $ProductIdCopyWith<$Res> get id;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res> implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  final Product _value;
  // ignore: unused_field
  final $Res Function(Product) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? origin = freezed,
    Object? price = freezed,
    Object? discount = freezed,
    Object? image = freezed,
    Object? requireReceipt = freezed,
    Object? category = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ProductId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      origin: origin == freezed
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      requireReceipt: requireReceipt == freezed
          ? _value.requireReceipt
          : requireReceipt // ignore: cast_nullable_to_non_nullable
              as bool,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ProductCategory,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $ProductIdCopyWith<$Res> get id {
    return $ProductIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value));
    });
  }
}

/// @nodoc
abstract class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) then) =
      __$ProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {ProductId id,
      String name,
      String origin,
      double price,
      double discount,
      String image,
      bool requireReceipt,
      ProductCategory category,
      String description});

  @override
  $ProductIdCopyWith<$Res> get id;
}

/// @nodoc
class __$ProductCopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(_Product _value, $Res Function(_Product) _then)
      : super(_value, (v) => _then(v as _Product));

  @override
  _Product get _value => super._value as _Product;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? origin = freezed,
    Object? price = freezed,
    Object? discount = freezed,
    Object? image = freezed,
    Object? requireReceipt = freezed,
    Object? category = freezed,
    Object? description = freezed,
  }) {
    return _then(_Product(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ProductId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      origin: origin == freezed
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      requireReceipt: requireReceipt == freezed
          ? _value.requireReceipt
          : requireReceipt // ignore: cast_nullable_to_non_nullable
              as bool,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ProductCategory,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Product implements _Product {
  _$_Product(
      {required this.id,
      required this.name,
      required this.origin,
      required this.price,
      required this.discount,
      required this.image,
      required this.requireReceipt,
      required this.category,
      required this.description});

  @override
  final ProductId id;
  @override
  final String name;
  @override
  final String origin;
  @override
  final double price;
  @override
  final double discount;
  @override
  final String image;
  @override
  final bool requireReceipt;
  @override
  final ProductCategory category;
  @override
  final String description;

  @override
  String toString() {
    return 'Product(id: $id, name: $name, origin: $origin, price: $price, discount: $discount, image: $image, requireReceipt: $requireReceipt, category: $category, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Product &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.origin, origin) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.discount, discount) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality()
                .equals(other.requireReceipt, requireReceipt) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(origin),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(discount),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(requireReceipt),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$ProductCopyWith<_Product> get copyWith =>
      __$ProductCopyWithImpl<_Product>(this, _$identity);
}

abstract class _Product implements Product {
  factory _Product(
      {required ProductId id,
      required String name,
      required String origin,
      required double price,
      required double discount,
      required String image,
      required bool requireReceipt,
      required ProductCategory category,
      required String description}) = _$_Product;

  @override
  ProductId get id;
  @override
  String get name;
  @override
  String get origin;
  @override
  double get price;
  @override
  double get discount;
  @override
  String get image;
  @override
  bool get requireReceipt;
  @override
  ProductCategory get category;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$ProductCopyWith<_Product> get copyWith =>
      throw _privateConstructorUsedError;
}
