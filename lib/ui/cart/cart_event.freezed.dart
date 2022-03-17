// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CartEventTearOff {
  const _$CartEventTearOff();

  AddToCartEvent addToCart(CartProduct cartProduct) {
    return AddToCartEvent(
      cartProduct,
    );
  }

  DeleteFromCartEvent deleteFromCart(ProductId productId) {
    return DeleteFromCartEvent(
      productId,
    );
  }

  CleanCartEvent cleanCart() {
    return CleanCartEvent();
  }

  CartUpdatedEvent cartUpdated(Set<CartProduct> value) {
    return CartUpdatedEvent(
      value,
    );
  }
}

/// @nodoc
const $CartEvent = _$CartEventTearOff();

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartProduct cartProduct) addToCart,
    required TResult Function(ProductId productId) deleteFromCart,
    required TResult Function() cleanCart,
    required TResult Function(Set<CartProduct> value) cartUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CartProduct cartProduct)? addToCart,
    TResult Function(ProductId productId)? deleteFromCart,
    TResult Function()? cleanCart,
    TResult Function(Set<CartProduct> value)? cartUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartProduct cartProduct)? addToCart,
    TResult Function(ProductId productId)? deleteFromCart,
    TResult Function()? cleanCart,
    TResult Function(Set<CartProduct> value)? cartUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddToCartEvent value) addToCart,
    required TResult Function(DeleteFromCartEvent value) deleteFromCart,
    required TResult Function(CleanCartEvent value) cleanCart,
    required TResult Function(CartUpdatedEvent value) cartUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddToCartEvent value)? addToCart,
    TResult Function(DeleteFromCartEvent value)? deleteFromCart,
    TResult Function(CleanCartEvent value)? cleanCart,
    TResult Function(CartUpdatedEvent value)? cartUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddToCartEvent value)? addToCart,
    TResult Function(DeleteFromCartEvent value)? deleteFromCart,
    TResult Function(CleanCartEvent value)? cleanCart,
    TResult Function(CartUpdatedEvent value)? cartUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res> implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  final CartEvent _value;
  // ignore: unused_field
  final $Res Function(CartEvent) _then;
}

/// @nodoc
abstract class $AddToCartEventCopyWith<$Res> {
  factory $AddToCartEventCopyWith(
          AddToCartEvent value, $Res Function(AddToCartEvent) then) =
      _$AddToCartEventCopyWithImpl<$Res>;
  $Res call({CartProduct cartProduct});

  $CartProductCopyWith<$Res> get cartProduct;
}

/// @nodoc
class _$AddToCartEventCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements $AddToCartEventCopyWith<$Res> {
  _$AddToCartEventCopyWithImpl(
      AddToCartEvent _value, $Res Function(AddToCartEvent) _then)
      : super(_value, (v) => _then(v as AddToCartEvent));

  @override
  AddToCartEvent get _value => super._value as AddToCartEvent;

  @override
  $Res call({
    Object? cartProduct = freezed,
  }) {
    return _then(AddToCartEvent(
      cartProduct == freezed
          ? _value.cartProduct
          : cartProduct // ignore: cast_nullable_to_non_nullable
              as CartProduct,
    ));
  }

  @override
  $CartProductCopyWith<$Res> get cartProduct {
    return $CartProductCopyWith<$Res>(_value.cartProduct, (value) {
      return _then(_value.copyWith(cartProduct: value));
    });
  }
}

/// @nodoc

class _$AddToCartEvent implements AddToCartEvent {
  _$AddToCartEvent(this.cartProduct);

  @override
  final CartProduct cartProduct;

  @override
  String toString() {
    return 'CartEvent.addToCart(cartProduct: $cartProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddToCartEvent &&
            const DeepCollectionEquality()
                .equals(other.cartProduct, cartProduct));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(cartProduct));

  @JsonKey(ignore: true)
  @override
  $AddToCartEventCopyWith<AddToCartEvent> get copyWith =>
      _$AddToCartEventCopyWithImpl<AddToCartEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartProduct cartProduct) addToCart,
    required TResult Function(ProductId productId) deleteFromCart,
    required TResult Function() cleanCart,
    required TResult Function(Set<CartProduct> value) cartUpdated,
  }) {
    return addToCart(cartProduct);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CartProduct cartProduct)? addToCart,
    TResult Function(ProductId productId)? deleteFromCart,
    TResult Function()? cleanCart,
    TResult Function(Set<CartProduct> value)? cartUpdated,
  }) {
    return addToCart?.call(cartProduct);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartProduct cartProduct)? addToCart,
    TResult Function(ProductId productId)? deleteFromCart,
    TResult Function()? cleanCart,
    TResult Function(Set<CartProduct> value)? cartUpdated,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(cartProduct);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddToCartEvent value) addToCart,
    required TResult Function(DeleteFromCartEvent value) deleteFromCart,
    required TResult Function(CleanCartEvent value) cleanCart,
    required TResult Function(CartUpdatedEvent value) cartUpdated,
  }) {
    return addToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddToCartEvent value)? addToCart,
    TResult Function(DeleteFromCartEvent value)? deleteFromCart,
    TResult Function(CleanCartEvent value)? cleanCart,
    TResult Function(CartUpdatedEvent value)? cartUpdated,
  }) {
    return addToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddToCartEvent value)? addToCart,
    TResult Function(DeleteFromCartEvent value)? deleteFromCart,
    TResult Function(CleanCartEvent value)? cleanCart,
    TResult Function(CartUpdatedEvent value)? cartUpdated,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(this);
    }
    return orElse();
  }
}

abstract class AddToCartEvent implements CartEvent {
  factory AddToCartEvent(CartProduct cartProduct) = _$AddToCartEvent;

  CartProduct get cartProduct;
  @JsonKey(ignore: true)
  $AddToCartEventCopyWith<AddToCartEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteFromCartEventCopyWith<$Res> {
  factory $DeleteFromCartEventCopyWith(
          DeleteFromCartEvent value, $Res Function(DeleteFromCartEvent) then) =
      _$DeleteFromCartEventCopyWithImpl<$Res>;
  $Res call({ProductId productId});

  $ProductIdCopyWith<$Res> get productId;
}

/// @nodoc
class _$DeleteFromCartEventCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res>
    implements $DeleteFromCartEventCopyWith<$Res> {
  _$DeleteFromCartEventCopyWithImpl(
      DeleteFromCartEvent _value, $Res Function(DeleteFromCartEvent) _then)
      : super(_value, (v) => _then(v as DeleteFromCartEvent));

  @override
  DeleteFromCartEvent get _value => super._value as DeleteFromCartEvent;

  @override
  $Res call({
    Object? productId = freezed,
  }) {
    return _then(DeleteFromCartEvent(
      productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as ProductId,
    ));
  }

  @override
  $ProductIdCopyWith<$Res> get productId {
    return $ProductIdCopyWith<$Res>(_value.productId, (value) {
      return _then(_value.copyWith(productId: value));
    });
  }
}

/// @nodoc

class _$DeleteFromCartEvent implements DeleteFromCartEvent {
  _$DeleteFromCartEvent(this.productId);

  @override
  final ProductId productId;

  @override
  String toString() {
    return 'CartEvent.deleteFromCart(productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeleteFromCartEvent &&
            const DeepCollectionEquality().equals(other.productId, productId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(productId));

  @JsonKey(ignore: true)
  @override
  $DeleteFromCartEventCopyWith<DeleteFromCartEvent> get copyWith =>
      _$DeleteFromCartEventCopyWithImpl<DeleteFromCartEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartProduct cartProduct) addToCart,
    required TResult Function(ProductId productId) deleteFromCart,
    required TResult Function() cleanCart,
    required TResult Function(Set<CartProduct> value) cartUpdated,
  }) {
    return deleteFromCart(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CartProduct cartProduct)? addToCart,
    TResult Function(ProductId productId)? deleteFromCart,
    TResult Function()? cleanCart,
    TResult Function(Set<CartProduct> value)? cartUpdated,
  }) {
    return deleteFromCart?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartProduct cartProduct)? addToCart,
    TResult Function(ProductId productId)? deleteFromCart,
    TResult Function()? cleanCart,
    TResult Function(Set<CartProduct> value)? cartUpdated,
    required TResult orElse(),
  }) {
    if (deleteFromCart != null) {
      return deleteFromCart(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddToCartEvent value) addToCart,
    required TResult Function(DeleteFromCartEvent value) deleteFromCart,
    required TResult Function(CleanCartEvent value) cleanCart,
    required TResult Function(CartUpdatedEvent value) cartUpdated,
  }) {
    return deleteFromCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddToCartEvent value)? addToCart,
    TResult Function(DeleteFromCartEvent value)? deleteFromCart,
    TResult Function(CleanCartEvent value)? cleanCart,
    TResult Function(CartUpdatedEvent value)? cartUpdated,
  }) {
    return deleteFromCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddToCartEvent value)? addToCart,
    TResult Function(DeleteFromCartEvent value)? deleteFromCart,
    TResult Function(CleanCartEvent value)? cleanCart,
    TResult Function(CartUpdatedEvent value)? cartUpdated,
    required TResult orElse(),
  }) {
    if (deleteFromCart != null) {
      return deleteFromCart(this);
    }
    return orElse();
  }
}

abstract class DeleteFromCartEvent implements CartEvent {
  factory DeleteFromCartEvent(ProductId productId) = _$DeleteFromCartEvent;

  ProductId get productId;
  @JsonKey(ignore: true)
  $DeleteFromCartEventCopyWith<DeleteFromCartEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CleanCartEventCopyWith<$Res> {
  factory $CleanCartEventCopyWith(
          CleanCartEvent value, $Res Function(CleanCartEvent) then) =
      _$CleanCartEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CleanCartEventCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements $CleanCartEventCopyWith<$Res> {
  _$CleanCartEventCopyWithImpl(
      CleanCartEvent _value, $Res Function(CleanCartEvent) _then)
      : super(_value, (v) => _then(v as CleanCartEvent));

  @override
  CleanCartEvent get _value => super._value as CleanCartEvent;
}

/// @nodoc

class _$CleanCartEvent implements CleanCartEvent {
  _$CleanCartEvent();

  @override
  String toString() {
    return 'CartEvent.cleanCart()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CleanCartEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartProduct cartProduct) addToCart,
    required TResult Function(ProductId productId) deleteFromCart,
    required TResult Function() cleanCart,
    required TResult Function(Set<CartProduct> value) cartUpdated,
  }) {
    return cleanCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CartProduct cartProduct)? addToCart,
    TResult Function(ProductId productId)? deleteFromCart,
    TResult Function()? cleanCart,
    TResult Function(Set<CartProduct> value)? cartUpdated,
  }) {
    return cleanCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartProduct cartProduct)? addToCart,
    TResult Function(ProductId productId)? deleteFromCart,
    TResult Function()? cleanCart,
    TResult Function(Set<CartProduct> value)? cartUpdated,
    required TResult orElse(),
  }) {
    if (cleanCart != null) {
      return cleanCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddToCartEvent value) addToCart,
    required TResult Function(DeleteFromCartEvent value) deleteFromCart,
    required TResult Function(CleanCartEvent value) cleanCart,
    required TResult Function(CartUpdatedEvent value) cartUpdated,
  }) {
    return cleanCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddToCartEvent value)? addToCart,
    TResult Function(DeleteFromCartEvent value)? deleteFromCart,
    TResult Function(CleanCartEvent value)? cleanCart,
    TResult Function(CartUpdatedEvent value)? cartUpdated,
  }) {
    return cleanCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddToCartEvent value)? addToCart,
    TResult Function(DeleteFromCartEvent value)? deleteFromCart,
    TResult Function(CleanCartEvent value)? cleanCart,
    TResult Function(CartUpdatedEvent value)? cartUpdated,
    required TResult orElse(),
  }) {
    if (cleanCart != null) {
      return cleanCart(this);
    }
    return orElse();
  }
}

abstract class CleanCartEvent implements CartEvent {
  factory CleanCartEvent() = _$CleanCartEvent;
}

/// @nodoc
abstract class $CartUpdatedEventCopyWith<$Res> {
  factory $CartUpdatedEventCopyWith(
          CartUpdatedEvent value, $Res Function(CartUpdatedEvent) then) =
      _$CartUpdatedEventCopyWithImpl<$Res>;
  $Res call({Set<CartProduct> value});
}

/// @nodoc
class _$CartUpdatedEventCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements $CartUpdatedEventCopyWith<$Res> {
  _$CartUpdatedEventCopyWithImpl(
      CartUpdatedEvent _value, $Res Function(CartUpdatedEvent) _then)
      : super(_value, (v) => _then(v as CartUpdatedEvent));

  @override
  CartUpdatedEvent get _value => super._value as CartUpdatedEvent;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(CartUpdatedEvent(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Set<CartProduct>,
    ));
  }
}

/// @nodoc

class _$CartUpdatedEvent implements CartUpdatedEvent {
  _$CartUpdatedEvent(this.value);

  @override
  final Set<CartProduct> value;

  @override
  String toString() {
    return 'CartEvent.cartUpdated(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CartUpdatedEvent &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  $CartUpdatedEventCopyWith<CartUpdatedEvent> get copyWith =>
      _$CartUpdatedEventCopyWithImpl<CartUpdatedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartProduct cartProduct) addToCart,
    required TResult Function(ProductId productId) deleteFromCart,
    required TResult Function() cleanCart,
    required TResult Function(Set<CartProduct> value) cartUpdated,
  }) {
    return cartUpdated(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CartProduct cartProduct)? addToCart,
    TResult Function(ProductId productId)? deleteFromCart,
    TResult Function()? cleanCart,
    TResult Function(Set<CartProduct> value)? cartUpdated,
  }) {
    return cartUpdated?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartProduct cartProduct)? addToCart,
    TResult Function(ProductId productId)? deleteFromCart,
    TResult Function()? cleanCart,
    TResult Function(Set<CartProduct> value)? cartUpdated,
    required TResult orElse(),
  }) {
    if (cartUpdated != null) {
      return cartUpdated(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddToCartEvent value) addToCart,
    required TResult Function(DeleteFromCartEvent value) deleteFromCart,
    required TResult Function(CleanCartEvent value) cleanCart,
    required TResult Function(CartUpdatedEvent value) cartUpdated,
  }) {
    return cartUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddToCartEvent value)? addToCart,
    TResult Function(DeleteFromCartEvent value)? deleteFromCart,
    TResult Function(CleanCartEvent value)? cleanCart,
    TResult Function(CartUpdatedEvent value)? cartUpdated,
  }) {
    return cartUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddToCartEvent value)? addToCart,
    TResult Function(DeleteFromCartEvent value)? deleteFromCart,
    TResult Function(CleanCartEvent value)? cleanCart,
    TResult Function(CartUpdatedEvent value)? cartUpdated,
    required TResult orElse(),
  }) {
    if (cartUpdated != null) {
      return cartUpdated(this);
    }
    return orElse();
  }
}

abstract class CartUpdatedEvent implements CartEvent {
  factory CartUpdatedEvent(Set<CartProduct> value) = _$CartUpdatedEvent;

  Set<CartProduct> get value;
  @JsonKey(ignore: true)
  $CartUpdatedEventCopyWith<CartUpdatedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
