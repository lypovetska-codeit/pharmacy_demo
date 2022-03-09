// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_nav_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MainNavStateTearOff {
  const _$MainNavStateTearOff();

  _MainNavState call(
      {required Queue<MainNavItem> items, required ValueKey<dynamic> key}) {
    return _MainNavState(
      items: items,
      key: key,
    );
  }
}

/// @nodoc
const $MainNavState = _$MainNavStateTearOff();

/// @nodoc
mixin _$MainNavState {
  Queue<MainNavItem> get items => throw _privateConstructorUsedError;
  ValueKey<dynamic> get key => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainNavStateCopyWith<MainNavState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainNavStateCopyWith<$Res> {
  factory $MainNavStateCopyWith(
          MainNavState value, $Res Function(MainNavState) then) =
      _$MainNavStateCopyWithImpl<$Res>;
  $Res call({Queue<MainNavItem> items, ValueKey<dynamic> key});
}

/// @nodoc
class _$MainNavStateCopyWithImpl<$Res> implements $MainNavStateCopyWith<$Res> {
  _$MainNavStateCopyWithImpl(this._value, this._then);

  final MainNavState _value;
  // ignore: unused_field
  final $Res Function(MainNavState) _then;

  @override
  $Res call({
    Object? items = freezed,
    Object? key = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Queue<MainNavItem>,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as ValueKey<dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$MainNavStateCopyWith<$Res>
    implements $MainNavStateCopyWith<$Res> {
  factory _$MainNavStateCopyWith(
          _MainNavState value, $Res Function(_MainNavState) then) =
      __$MainNavStateCopyWithImpl<$Res>;
  @override
  $Res call({Queue<MainNavItem> items, ValueKey<dynamic> key});
}

/// @nodoc
class __$MainNavStateCopyWithImpl<$Res> extends _$MainNavStateCopyWithImpl<$Res>
    implements _$MainNavStateCopyWith<$Res> {
  __$MainNavStateCopyWithImpl(
      _MainNavState _value, $Res Function(_MainNavState) _then)
      : super(_value, (v) => _then(v as _MainNavState));

  @override
  _MainNavState get _value => super._value as _MainNavState;

  @override
  $Res call({
    Object? items = freezed,
    Object? key = freezed,
  }) {
    return _then(_MainNavState(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Queue<MainNavItem>,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as ValueKey<dynamic>,
    ));
  }
}

/// @nodoc

class _$_MainNavState implements _MainNavState {
  _$_MainNavState({required this.items, required this.key});

  @override
  final Queue<MainNavItem> items;
  @override
  final ValueKey<dynamic> key;

  @override
  String toString() {
    return 'MainNavState(items: $items, key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MainNavState &&
            const DeepCollectionEquality().equals(other.items, items) &&
            const DeepCollectionEquality().equals(other.key, key));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(items),
      const DeepCollectionEquality().hash(key));

  @JsonKey(ignore: true)
  @override
  _$MainNavStateCopyWith<_MainNavState> get copyWith =>
      __$MainNavStateCopyWithImpl<_MainNavState>(this, _$identity);
}

abstract class _MainNavState implements MainNavState {
  factory _MainNavState(
      {required Queue<MainNavItem> items,
      required ValueKey<dynamic> key}) = _$_MainNavState;

  @override
  Queue<MainNavItem> get items;
  @override
  ValueKey<dynamic> get key;
  @override
  @JsonKey(ignore: true)
  _$MainNavStateCopyWith<_MainNavState> get copyWith =>
      throw _privateConstructorUsedError;
}
