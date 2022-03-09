// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductIdTearOff {
  const _$ProductIdTearOff();

  _ProductId call(int value) {
    return _ProductId(
      value,
    );
  }
}

/// @nodoc
const $ProductId = _$ProductIdTearOff();

/// @nodoc
mixin _$ProductId {
  int get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductIdCopyWith<ProductId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductIdCopyWith<$Res> {
  factory $ProductIdCopyWith(ProductId value, $Res Function(ProductId) then) =
      _$ProductIdCopyWithImpl<$Res>;
  $Res call({int value});
}

/// @nodoc
class _$ProductIdCopyWithImpl<$Res> implements $ProductIdCopyWith<$Res> {
  _$ProductIdCopyWithImpl(this._value, this._then);

  final ProductId _value;
  // ignore: unused_field
  final $Res Function(ProductId) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ProductIdCopyWith<$Res> implements $ProductIdCopyWith<$Res> {
  factory _$ProductIdCopyWith(
          _ProductId value, $Res Function(_ProductId) then) =
      __$ProductIdCopyWithImpl<$Res>;
  @override
  $Res call({int value});
}

/// @nodoc
class __$ProductIdCopyWithImpl<$Res> extends _$ProductIdCopyWithImpl<$Res>
    implements _$ProductIdCopyWith<$Res> {
  __$ProductIdCopyWithImpl(_ProductId _value, $Res Function(_ProductId) _then)
      : super(_value, (v) => _then(v as _ProductId));

  @override
  _ProductId get _value => super._value as _ProductId;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_ProductId(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ProductId implements _ProductId {
  _$_ProductId(this.value);

  @override
  final int value;

  @override
  String toString() {
    return 'ProductId(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductId &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$ProductIdCopyWith<_ProductId> get copyWith =>
      __$ProductIdCopyWithImpl<_ProductId>(this, _$identity);
}

abstract class _ProductId implements ProductId {
  factory _ProductId(int value) = _$_ProductId;

  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  _$ProductIdCopyWith<_ProductId> get copyWith =>
      throw _privateConstructorUsedError;
}
