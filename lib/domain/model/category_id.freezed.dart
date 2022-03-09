// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CategoryIdTearOff {
  const _$CategoryIdTearOff();

  _CategoryId call(int value) {
    return _CategoryId(
      value,
    );
  }
}

/// @nodoc
const $CategoryId = _$CategoryIdTearOff();

/// @nodoc
mixin _$CategoryId {
  int get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryIdCopyWith<CategoryId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryIdCopyWith<$Res> {
  factory $CategoryIdCopyWith(
          CategoryId value, $Res Function(CategoryId) then) =
      _$CategoryIdCopyWithImpl<$Res>;
  $Res call({int value});
}

/// @nodoc
class _$CategoryIdCopyWithImpl<$Res> implements $CategoryIdCopyWith<$Res> {
  _$CategoryIdCopyWithImpl(this._value, this._then);

  final CategoryId _value;
  // ignore: unused_field
  final $Res Function(CategoryId) _then;

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
abstract class _$CategoryIdCopyWith<$Res> implements $CategoryIdCopyWith<$Res> {
  factory _$CategoryIdCopyWith(
          _CategoryId value, $Res Function(_CategoryId) then) =
      __$CategoryIdCopyWithImpl<$Res>;
  @override
  $Res call({int value});
}

/// @nodoc
class __$CategoryIdCopyWithImpl<$Res> extends _$CategoryIdCopyWithImpl<$Res>
    implements _$CategoryIdCopyWith<$Res> {
  __$CategoryIdCopyWithImpl(
      _CategoryId _value, $Res Function(_CategoryId) _then)
      : super(_value, (v) => _then(v as _CategoryId));

  @override
  _CategoryId get _value => super._value as _CategoryId;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_CategoryId(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CategoryId implements _CategoryId {
  _$_CategoryId(this.value);

  @override
  final int value;

  @override
  String toString() {
    return 'CategoryId(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CategoryId &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$CategoryIdCopyWith<_CategoryId> get copyWith =>
      __$CategoryIdCopyWithImpl<_CategoryId>(this, _$identity);
}

abstract class _CategoryId implements CategoryId {
  factory _CategoryId(int value) = _$_CategoryId;

  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  _$CategoryIdCopyWith<_CategoryId> get copyWith =>
      throw _privateConstructorUsedError;
}
