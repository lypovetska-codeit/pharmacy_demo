// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'locale_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocaleStateTearOff {
  const _$LocaleStateTearOff();

  _LocaleState call(AppLocale locale, Object? error) {
    return _LocaleState(
      locale,
      error,
    );
  }
}

/// @nodoc
const $LocaleState = _$LocaleStateTearOff();

/// @nodoc
mixin _$LocaleState {
  AppLocale get locale => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocaleStateCopyWith<LocaleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocaleStateCopyWith<$Res> {
  factory $LocaleStateCopyWith(
          LocaleState value, $Res Function(LocaleState) then) =
      _$LocaleStateCopyWithImpl<$Res>;
  $Res call({AppLocale locale, Object? error});
}

/// @nodoc
class _$LocaleStateCopyWithImpl<$Res> implements $LocaleStateCopyWith<$Res> {
  _$LocaleStateCopyWithImpl(this._value, this._then);

  final LocaleState _value;
  // ignore: unused_field
  final $Res Function(LocaleState) _then;

  @override
  $Res call({
    Object? locale = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as AppLocale,
      error: error == freezed ? _value.error : error,
    ));
  }
}

/// @nodoc
abstract class _$LocaleStateCopyWith<$Res>
    implements $LocaleStateCopyWith<$Res> {
  factory _$LocaleStateCopyWith(
          _LocaleState value, $Res Function(_LocaleState) then) =
      __$LocaleStateCopyWithImpl<$Res>;
  @override
  $Res call({AppLocale locale, Object? error});
}

/// @nodoc
class __$LocaleStateCopyWithImpl<$Res> extends _$LocaleStateCopyWithImpl<$Res>
    implements _$LocaleStateCopyWith<$Res> {
  __$LocaleStateCopyWithImpl(
      _LocaleState _value, $Res Function(_LocaleState) _then)
      : super(_value, (v) => _then(v as _LocaleState));

  @override
  _LocaleState get _value => super._value as _LocaleState;

  @override
  $Res call({
    Object? locale = freezed,
    Object? error = freezed,
  }) {
    return _then(_LocaleState(
      locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as AppLocale,
      error == freezed ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_LocaleState implements _LocaleState {
  _$_LocaleState(this.locale, this.error);

  @override
  final AppLocale locale;
  @override
  final Object? error;

  @override
  String toString() {
    return 'LocaleState(locale: $locale, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocaleState &&
            const DeepCollectionEquality().equals(other.locale, locale) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(locale),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$LocaleStateCopyWith<_LocaleState> get copyWith =>
      __$LocaleStateCopyWithImpl<_LocaleState>(this, _$identity);
}

abstract class _LocaleState implements LocaleState {
  factory _LocaleState(AppLocale locale, Object? error) = _$_LocaleState;

  @override
  AppLocale get locale;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$LocaleStateCopyWith<_LocaleState> get copyWith =>
      throw _privateConstructorUsedError;
}
