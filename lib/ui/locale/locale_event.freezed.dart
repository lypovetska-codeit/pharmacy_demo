// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'locale_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocaleEventTearOff {
  const _$LocaleEventTearOff();

  ChangeLocale changeLocale(AppLocale locale) {
    return ChangeLocale(
      locale,
    );
  }

  OnLocaleChanged onLocaleChanged(AppLocale locale) {
    return OnLocaleChanged(
      locale,
    );
  }
}

/// @nodoc
const $LocaleEvent = _$LocaleEventTearOff();

/// @nodoc
mixin _$LocaleEvent {
  AppLocale get locale => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppLocale locale) changeLocale,
    required TResult Function(AppLocale locale) onLocaleChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AppLocale locale)? changeLocale,
    TResult Function(AppLocale locale)? onLocaleChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppLocale locale)? changeLocale,
    TResult Function(AppLocale locale)? onLocaleChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeLocale value) changeLocale,
    required TResult Function(OnLocaleChanged value) onLocaleChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeLocale value)? changeLocale,
    TResult Function(OnLocaleChanged value)? onLocaleChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeLocale value)? changeLocale,
    TResult Function(OnLocaleChanged value)? onLocaleChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocaleEventCopyWith<LocaleEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocaleEventCopyWith<$Res> {
  factory $LocaleEventCopyWith(
          LocaleEvent value, $Res Function(LocaleEvent) then) =
      _$LocaleEventCopyWithImpl<$Res>;
  $Res call({AppLocale locale});
}

/// @nodoc
class _$LocaleEventCopyWithImpl<$Res> implements $LocaleEventCopyWith<$Res> {
  _$LocaleEventCopyWithImpl(this._value, this._then);

  final LocaleEvent _value;
  // ignore: unused_field
  final $Res Function(LocaleEvent) _then;

  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(_value.copyWith(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as AppLocale,
    ));
  }
}

/// @nodoc
abstract class $ChangeLocaleCopyWith<$Res>
    implements $LocaleEventCopyWith<$Res> {
  factory $ChangeLocaleCopyWith(
          ChangeLocale value, $Res Function(ChangeLocale) then) =
      _$ChangeLocaleCopyWithImpl<$Res>;
  @override
  $Res call({AppLocale locale});
}

/// @nodoc
class _$ChangeLocaleCopyWithImpl<$Res> extends _$LocaleEventCopyWithImpl<$Res>
    implements $ChangeLocaleCopyWith<$Res> {
  _$ChangeLocaleCopyWithImpl(
      ChangeLocale _value, $Res Function(ChangeLocale) _then)
      : super(_value, (v) => _then(v as ChangeLocale));

  @override
  ChangeLocale get _value => super._value as ChangeLocale;

  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(ChangeLocale(
      locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as AppLocale,
    ));
  }
}

/// @nodoc

class _$ChangeLocale implements ChangeLocale {
  _$ChangeLocale(this.locale);

  @override
  final AppLocale locale;

  @override
  String toString() {
    return 'LocaleEvent.changeLocale(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangeLocale &&
            const DeepCollectionEquality().equals(other.locale, locale));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(locale));

  @JsonKey(ignore: true)
  @override
  $ChangeLocaleCopyWith<ChangeLocale> get copyWith =>
      _$ChangeLocaleCopyWithImpl<ChangeLocale>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppLocale locale) changeLocale,
    required TResult Function(AppLocale locale) onLocaleChanged,
  }) {
    return changeLocale(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AppLocale locale)? changeLocale,
    TResult Function(AppLocale locale)? onLocaleChanged,
  }) {
    return changeLocale?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppLocale locale)? changeLocale,
    TResult Function(AppLocale locale)? onLocaleChanged,
    required TResult orElse(),
  }) {
    if (changeLocale != null) {
      return changeLocale(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeLocale value) changeLocale,
    required TResult Function(OnLocaleChanged value) onLocaleChanged,
  }) {
    return changeLocale(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeLocale value)? changeLocale,
    TResult Function(OnLocaleChanged value)? onLocaleChanged,
  }) {
    return changeLocale?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeLocale value)? changeLocale,
    TResult Function(OnLocaleChanged value)? onLocaleChanged,
    required TResult orElse(),
  }) {
    if (changeLocale != null) {
      return changeLocale(this);
    }
    return orElse();
  }
}

abstract class ChangeLocale implements LocaleEvent {
  factory ChangeLocale(AppLocale locale) = _$ChangeLocale;

  @override
  AppLocale get locale;
  @override
  @JsonKey(ignore: true)
  $ChangeLocaleCopyWith<ChangeLocale> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnLocaleChangedCopyWith<$Res>
    implements $LocaleEventCopyWith<$Res> {
  factory $OnLocaleChangedCopyWith(
          OnLocaleChanged value, $Res Function(OnLocaleChanged) then) =
      _$OnLocaleChangedCopyWithImpl<$Res>;
  @override
  $Res call({AppLocale locale});
}

/// @nodoc
class _$OnLocaleChangedCopyWithImpl<$Res>
    extends _$LocaleEventCopyWithImpl<$Res>
    implements $OnLocaleChangedCopyWith<$Res> {
  _$OnLocaleChangedCopyWithImpl(
      OnLocaleChanged _value, $Res Function(OnLocaleChanged) _then)
      : super(_value, (v) => _then(v as OnLocaleChanged));

  @override
  OnLocaleChanged get _value => super._value as OnLocaleChanged;

  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(OnLocaleChanged(
      locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as AppLocale,
    ));
  }
}

/// @nodoc

class _$OnLocaleChanged implements OnLocaleChanged {
  _$OnLocaleChanged(this.locale);

  @override
  final AppLocale locale;

  @override
  String toString() {
    return 'LocaleEvent.onLocaleChanged(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OnLocaleChanged &&
            const DeepCollectionEquality().equals(other.locale, locale));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(locale));

  @JsonKey(ignore: true)
  @override
  $OnLocaleChangedCopyWith<OnLocaleChanged> get copyWith =>
      _$OnLocaleChangedCopyWithImpl<OnLocaleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppLocale locale) changeLocale,
    required TResult Function(AppLocale locale) onLocaleChanged,
  }) {
    return onLocaleChanged(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AppLocale locale)? changeLocale,
    TResult Function(AppLocale locale)? onLocaleChanged,
  }) {
    return onLocaleChanged?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppLocale locale)? changeLocale,
    TResult Function(AppLocale locale)? onLocaleChanged,
    required TResult orElse(),
  }) {
    if (onLocaleChanged != null) {
      return onLocaleChanged(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeLocale value) changeLocale,
    required TResult Function(OnLocaleChanged value) onLocaleChanged,
  }) {
    return onLocaleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeLocale value)? changeLocale,
    TResult Function(OnLocaleChanged value)? onLocaleChanged,
  }) {
    return onLocaleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeLocale value)? changeLocale,
    TResult Function(OnLocaleChanged value)? onLocaleChanged,
    required TResult orElse(),
  }) {
    if (onLocaleChanged != null) {
      return onLocaleChanged(this);
    }
    return orElse();
  }
}

abstract class OnLocaleChanged implements LocaleEvent {
  factory OnLocaleChanged(AppLocale locale) = _$OnLocaleChanged;

  @override
  AppLocale get locale;
  @override
  @JsonKey(ignore: true)
  $OnLocaleChangedCopyWith<OnLocaleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}
