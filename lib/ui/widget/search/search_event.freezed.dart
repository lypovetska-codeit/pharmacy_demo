// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchEventTearOff {
  const _$SearchEventTearOff();

  _SearchEvent call(
      {required String query, required Completer<List<Product>> completer}) {
    return _SearchEvent(
      query: query,
      completer: completer,
    );
  }
}

/// @nodoc
const $SearchEvent = _$SearchEventTearOff();

/// @nodoc
mixin _$SearchEvent {
  String get query => throw _privateConstructorUsedError;
  Completer<List<Product>> get completer => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchEventCopyWith<SearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res>;
  $Res call({String query, Completer<List<Product>> completer});
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res> implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  final SearchEvent _value;
  // ignore: unused_field
  final $Res Function(SearchEvent) _then;

  @override
  $Res call({
    Object? query = freezed,
    Object? completer = freezed,
  }) {
    return _then(_value.copyWith(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      completer: completer == freezed
          ? _value.completer
          : completer // ignore: cast_nullable_to_non_nullable
              as Completer<List<Product>>,
    ));
  }
}

/// @nodoc
abstract class _$SearchEventCopyWith<$Res>
    implements $SearchEventCopyWith<$Res> {
  factory _$SearchEventCopyWith(
          _SearchEvent value, $Res Function(_SearchEvent) then) =
      __$SearchEventCopyWithImpl<$Res>;
  @override
  $Res call({String query, Completer<List<Product>> completer});
}

/// @nodoc
class __$SearchEventCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements _$SearchEventCopyWith<$Res> {
  __$SearchEventCopyWithImpl(
      _SearchEvent _value, $Res Function(_SearchEvent) _then)
      : super(_value, (v) => _then(v as _SearchEvent));

  @override
  _SearchEvent get _value => super._value as _SearchEvent;

  @override
  $Res call({
    Object? query = freezed,
    Object? completer = freezed,
  }) {
    return _then(_SearchEvent(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      completer: completer == freezed
          ? _value.completer
          : completer // ignore: cast_nullable_to_non_nullable
              as Completer<List<Product>>,
    ));
  }
}

/// @nodoc

class _$_SearchEvent implements _SearchEvent {
  _$_SearchEvent({required this.query, required this.completer});

  @override
  final String query;
  @override
  final Completer<List<Product>> completer;

  @override
  String toString() {
    return 'SearchEvent(query: $query, completer: $completer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchEvent &&
            const DeepCollectionEquality().equals(other.query, query) &&
            const DeepCollectionEquality().equals(other.completer, completer));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(query),
      const DeepCollectionEquality().hash(completer));

  @JsonKey(ignore: true)
  @override
  _$SearchEventCopyWith<_SearchEvent> get copyWith =>
      __$SearchEventCopyWithImpl<_SearchEvent>(this, _$identity);
}

abstract class _SearchEvent implements SearchEvent {
  factory _SearchEvent(
      {required String query,
      required Completer<List<Product>> completer}) = _$_SearchEvent;

  @override
  String get query;
  @override
  Completer<List<Product>> get completer;
  @override
  @JsonKey(ignore: true)
  _$SearchEventCopyWith<_SearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
