// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ListIdTearOff {
  const _$ListIdTearOff();

  _ListId call(int value) {
    return _ListId(
      value,
    );
  }
}

/// @nodoc
const $ListId = _$ListIdTearOff();

/// @nodoc
mixin _$ListId {
  int get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListIdCopyWith<ListId> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListIdCopyWith<$Res> {
  factory $ListIdCopyWith(ListId value, $Res Function(ListId) then) =
      _$ListIdCopyWithImpl<$Res>;
  $Res call({int value});
}

/// @nodoc
class _$ListIdCopyWithImpl<$Res> implements $ListIdCopyWith<$Res> {
  _$ListIdCopyWithImpl(this._value, this._then);

  final ListId _value;
  // ignore: unused_field
  final $Res Function(ListId) _then;

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
abstract class _$ListIdCopyWith<$Res> implements $ListIdCopyWith<$Res> {
  factory _$ListIdCopyWith(_ListId value, $Res Function(_ListId) then) =
      __$ListIdCopyWithImpl<$Res>;
  @override
  $Res call({int value});
}

/// @nodoc
class __$ListIdCopyWithImpl<$Res> extends _$ListIdCopyWithImpl<$Res>
    implements _$ListIdCopyWith<$Res> {
  __$ListIdCopyWithImpl(_ListId _value, $Res Function(_ListId) _then)
      : super(_value, (v) => _then(v as _ListId));

  @override
  _ListId get _value => super._value as _ListId;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_ListId(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ListId implements _ListId {
  _$_ListId(this.value);

  @override
  final int value;

  @override
  String toString() {
    return 'ListId(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListId &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$ListIdCopyWith<_ListId> get copyWith =>
      __$ListIdCopyWithImpl<_ListId>(this, _$identity);
}

abstract class _ListId implements ListId {
  factory _ListId(int value) = _$_ListId;

  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  _$ListIdCopyWith<_ListId> get copyWith => throw _privateConstructorUsedError;
}
