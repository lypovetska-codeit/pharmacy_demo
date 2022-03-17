// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CartStateTearOff {
  const _$CartStateTearOff();

  LoadedCartState loaded(Set<CartProduct> cartProducts) {
    return LoadedCartState(
      cartProducts,
    );
  }

  LoadingCartState loading(Set<CartProduct> cartProducts) {
    return LoadingCartState(
      cartProducts,
    );
  }

  ErrorCartState error(Object error, Set<CartProduct> cartProducts) {
    return ErrorCartState(
      error,
      cartProducts,
    );
  }
}

/// @nodoc
const $CartState = _$CartStateTearOff();

/// @nodoc
mixin _$CartState {
  Set<CartProduct> get cartProducts => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<CartProduct> cartProducts) loaded,
    required TResult Function(Set<CartProduct> cartProducts) loading,
    required TResult Function(Object error, Set<CartProduct> cartProducts)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Set<CartProduct> cartProducts)? loaded,
    TResult Function(Set<CartProduct> cartProducts)? loading,
    TResult Function(Object error, Set<CartProduct> cartProducts)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<CartProduct> cartProducts)? loaded,
    TResult Function(Set<CartProduct> cartProducts)? loading,
    TResult Function(Object error, Set<CartProduct> cartProducts)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadedCartState value) loaded,
    required TResult Function(LoadingCartState value) loading,
    required TResult Function(ErrorCartState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadedCartState value)? loaded,
    TResult Function(LoadingCartState value)? loading,
    TResult Function(ErrorCartState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadedCartState value)? loaded,
    TResult Function(LoadingCartState value)? loading,
    TResult Function(ErrorCartState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res>;
  $Res call({Set<CartProduct> cartProducts});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res> implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  final CartState _value;
  // ignore: unused_field
  final $Res Function(CartState) _then;

  @override
  $Res call({
    Object? cartProducts = freezed,
  }) {
    return _then(_value.copyWith(
      cartProducts: cartProducts == freezed
          ? _value.cartProducts
          : cartProducts // ignore: cast_nullable_to_non_nullable
              as Set<CartProduct>,
    ));
  }
}

/// @nodoc
abstract class $LoadedCartStateCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory $LoadedCartStateCopyWith(
          LoadedCartState value, $Res Function(LoadedCartState) then) =
      _$LoadedCartStateCopyWithImpl<$Res>;
  @override
  $Res call({Set<CartProduct> cartProducts});
}

/// @nodoc
class _$LoadedCartStateCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements $LoadedCartStateCopyWith<$Res> {
  _$LoadedCartStateCopyWithImpl(
      LoadedCartState _value, $Res Function(LoadedCartState) _then)
      : super(_value, (v) => _then(v as LoadedCartState));

  @override
  LoadedCartState get _value => super._value as LoadedCartState;

  @override
  $Res call({
    Object? cartProducts = freezed,
  }) {
    return _then(LoadedCartState(
      cartProducts == freezed
          ? _value.cartProducts
          : cartProducts // ignore: cast_nullable_to_non_nullable
              as Set<CartProduct>,
    ));
  }
}

/// @nodoc

class _$LoadedCartState implements LoadedCartState {
  _$LoadedCartState(this.cartProducts);

  @override
  final Set<CartProduct> cartProducts;

  @override
  String toString() {
    return 'CartState.loaded(cartProducts: $cartProducts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadedCartState &&
            const DeepCollectionEquality()
                .equals(other.cartProducts, cartProducts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(cartProducts));

  @JsonKey(ignore: true)
  @override
  $LoadedCartStateCopyWith<LoadedCartState> get copyWith =>
      _$LoadedCartStateCopyWithImpl<LoadedCartState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<CartProduct> cartProducts) loaded,
    required TResult Function(Set<CartProduct> cartProducts) loading,
    required TResult Function(Object error, Set<CartProduct> cartProducts)
        error,
  }) {
    return loaded(cartProducts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Set<CartProduct> cartProducts)? loaded,
    TResult Function(Set<CartProduct> cartProducts)? loading,
    TResult Function(Object error, Set<CartProduct> cartProducts)? error,
  }) {
    return loaded?.call(cartProducts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<CartProduct> cartProducts)? loaded,
    TResult Function(Set<CartProduct> cartProducts)? loading,
    TResult Function(Object error, Set<CartProduct> cartProducts)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(cartProducts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadedCartState value) loaded,
    required TResult Function(LoadingCartState value) loading,
    required TResult Function(ErrorCartState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadedCartState value)? loaded,
    TResult Function(LoadingCartState value)? loading,
    TResult Function(ErrorCartState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadedCartState value)? loaded,
    TResult Function(LoadingCartState value)? loading,
    TResult Function(ErrorCartState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedCartState implements CartState {
  factory LoadedCartState(Set<CartProduct> cartProducts) = _$LoadedCartState;

  @override
  Set<CartProduct> get cartProducts;
  @override
  @JsonKey(ignore: true)
  $LoadedCartStateCopyWith<LoadedCartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingCartStateCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory $LoadingCartStateCopyWith(
          LoadingCartState value, $Res Function(LoadingCartState) then) =
      _$LoadingCartStateCopyWithImpl<$Res>;
  @override
  $Res call({Set<CartProduct> cartProducts});
}

/// @nodoc
class _$LoadingCartStateCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements $LoadingCartStateCopyWith<$Res> {
  _$LoadingCartStateCopyWithImpl(
      LoadingCartState _value, $Res Function(LoadingCartState) _then)
      : super(_value, (v) => _then(v as LoadingCartState));

  @override
  LoadingCartState get _value => super._value as LoadingCartState;

  @override
  $Res call({
    Object? cartProducts = freezed,
  }) {
    return _then(LoadingCartState(
      cartProducts == freezed
          ? _value.cartProducts
          : cartProducts // ignore: cast_nullable_to_non_nullable
              as Set<CartProduct>,
    ));
  }
}

/// @nodoc

class _$LoadingCartState implements LoadingCartState {
  _$LoadingCartState(this.cartProducts);

  @override
  final Set<CartProduct> cartProducts;

  @override
  String toString() {
    return 'CartState.loading(cartProducts: $cartProducts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadingCartState &&
            const DeepCollectionEquality()
                .equals(other.cartProducts, cartProducts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(cartProducts));

  @JsonKey(ignore: true)
  @override
  $LoadingCartStateCopyWith<LoadingCartState> get copyWith =>
      _$LoadingCartStateCopyWithImpl<LoadingCartState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<CartProduct> cartProducts) loaded,
    required TResult Function(Set<CartProduct> cartProducts) loading,
    required TResult Function(Object error, Set<CartProduct> cartProducts)
        error,
  }) {
    return loading(cartProducts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Set<CartProduct> cartProducts)? loaded,
    TResult Function(Set<CartProduct> cartProducts)? loading,
    TResult Function(Object error, Set<CartProduct> cartProducts)? error,
  }) {
    return loading?.call(cartProducts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<CartProduct> cartProducts)? loaded,
    TResult Function(Set<CartProduct> cartProducts)? loading,
    TResult Function(Object error, Set<CartProduct> cartProducts)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(cartProducts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadedCartState value) loaded,
    required TResult Function(LoadingCartState value) loading,
    required TResult Function(ErrorCartState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadedCartState value)? loaded,
    TResult Function(LoadingCartState value)? loading,
    TResult Function(ErrorCartState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadedCartState value)? loaded,
    TResult Function(LoadingCartState value)? loading,
    TResult Function(ErrorCartState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingCartState implements CartState {
  factory LoadingCartState(Set<CartProduct> cartProducts) = _$LoadingCartState;

  @override
  Set<CartProduct> get cartProducts;
  @override
  @JsonKey(ignore: true)
  $LoadingCartStateCopyWith<LoadingCartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCartStateCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory $ErrorCartStateCopyWith(
          ErrorCartState value, $Res Function(ErrorCartState) then) =
      _$ErrorCartStateCopyWithImpl<$Res>;
  @override
  $Res call({Object error, Set<CartProduct> cartProducts});
}

/// @nodoc
class _$ErrorCartStateCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements $ErrorCartStateCopyWith<$Res> {
  _$ErrorCartStateCopyWithImpl(
      ErrorCartState _value, $Res Function(ErrorCartState) _then)
      : super(_value, (v) => _then(v as ErrorCartState));

  @override
  ErrorCartState get _value => super._value as ErrorCartState;

  @override
  $Res call({
    Object? error = freezed,
    Object? cartProducts = freezed,
  }) {
    return _then(ErrorCartState(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      cartProducts == freezed
          ? _value.cartProducts
          : cartProducts // ignore: cast_nullable_to_non_nullable
              as Set<CartProduct>,
    ));
  }
}

/// @nodoc

class _$ErrorCartState implements ErrorCartState {
  _$ErrorCartState(this.error, this.cartProducts);

  @override
  final Object error;
  @override
  final Set<CartProduct> cartProducts;

  @override
  String toString() {
    return 'CartState.error(error: $error, cartProducts: $cartProducts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErrorCartState &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.cartProducts, cartProducts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(cartProducts));

  @JsonKey(ignore: true)
  @override
  $ErrorCartStateCopyWith<ErrorCartState> get copyWith =>
      _$ErrorCartStateCopyWithImpl<ErrorCartState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<CartProduct> cartProducts) loaded,
    required TResult Function(Set<CartProduct> cartProducts) loading,
    required TResult Function(Object error, Set<CartProduct> cartProducts)
        error,
  }) {
    return error(this.error, cartProducts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Set<CartProduct> cartProducts)? loaded,
    TResult Function(Set<CartProduct> cartProducts)? loading,
    TResult Function(Object error, Set<CartProduct> cartProducts)? error,
  }) {
    return error?.call(this.error, cartProducts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<CartProduct> cartProducts)? loaded,
    TResult Function(Set<CartProduct> cartProducts)? loading,
    TResult Function(Object error, Set<CartProduct> cartProducts)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, cartProducts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadedCartState value) loaded,
    required TResult Function(LoadingCartState value) loading,
    required TResult Function(ErrorCartState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadedCartState value)? loaded,
    TResult Function(LoadingCartState value)? loading,
    TResult Function(ErrorCartState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadedCartState value)? loaded,
    TResult Function(LoadingCartState value)? loading,
    TResult Function(ErrorCartState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorCartState implements CartState {
  factory ErrorCartState(Object error, Set<CartProduct> cartProducts) =
      _$ErrorCartState;

  Object get error;
  @override
  Set<CartProduct> get cartProducts;
  @override
  @JsonKey(ignore: true)
  $ErrorCartStateCopyWith<ErrorCartState> get copyWith =>
      throw _privateConstructorUsedError;
}
