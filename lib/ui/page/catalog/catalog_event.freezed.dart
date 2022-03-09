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

  _CatalogEvent call(int page) {
    return _CatalogEvent(
      page,
    );
  }
}

/// @nodoc
const $CatalogEvent = _$CatalogEventTearOff();

/// @nodoc
mixin _$CatalogEvent {
  int get page => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CatalogEventCopyWith<CatalogEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogEventCopyWith<$Res> {
  factory $CatalogEventCopyWith(
          CatalogEvent value, $Res Function(CatalogEvent) then) =
      _$CatalogEventCopyWithImpl<$Res>;
  $Res call({int page});
}

/// @nodoc
class _$CatalogEventCopyWithImpl<$Res> implements $CatalogEventCopyWith<$Res> {
  _$CatalogEventCopyWithImpl(this._value, this._then);

  final CatalogEvent _value;
  // ignore: unused_field
  final $Res Function(CatalogEvent) _then;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CatalogEventCopyWith<$Res>
    implements $CatalogEventCopyWith<$Res> {
  factory _$CatalogEventCopyWith(
          _CatalogEvent value, $Res Function(_CatalogEvent) then) =
      __$CatalogEventCopyWithImpl<$Res>;
  @override
  $Res call({int page});
}

/// @nodoc
class __$CatalogEventCopyWithImpl<$Res> extends _$CatalogEventCopyWithImpl<$Res>
    implements _$CatalogEventCopyWith<$Res> {
  __$CatalogEventCopyWithImpl(
      _CatalogEvent _value, $Res Function(_CatalogEvent) _then)
      : super(_value, (v) => _then(v as _CatalogEvent));

  @override
  _CatalogEvent get _value => super._value as _CatalogEvent;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(_CatalogEvent(
      page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CatalogEvent implements _CatalogEvent {
  _$_CatalogEvent(this.page);

  @override
  final int page;

  @override
  String toString() {
    return 'CatalogEvent(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CatalogEvent &&
            const DeepCollectionEquality().equals(other.page, page));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(page));

  @JsonKey(ignore: true)
  @override
  _$CatalogEventCopyWith<_CatalogEvent> get copyWith =>
      __$CatalogEventCopyWithImpl<_CatalogEvent>(this, _$identity);
}

abstract class _CatalogEvent implements CatalogEvent {
  factory _CatalogEvent(int page) = _$_CatalogEvent;

  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$CatalogEventCopyWith<_CatalogEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
