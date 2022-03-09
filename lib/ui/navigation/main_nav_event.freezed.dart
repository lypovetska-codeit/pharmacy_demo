// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_nav_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MainNavEventTearOff {
  const _$MainNavEventTearOff();

  NavigateToPage navigateToPage(MainNavItem mainNavItem) {
    return NavigateToPage(
      mainNavItem,
    );
  }

  NavigateBack navigateBack() {
    return NavigateBack();
  }
}

/// @nodoc
const $MainNavEvent = _$MainNavEventTearOff();

/// @nodoc
mixin _$MainNavEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MainNavItem mainNavItem) navigateToPage,
    required TResult Function() navigateBack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MainNavItem mainNavItem)? navigateToPage,
    TResult Function()? navigateBack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MainNavItem mainNavItem)? navigateToPage,
    TResult Function()? navigateBack,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateToPage value) navigateToPage,
    required TResult Function(NavigateBack value) navigateBack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NavigateToPage value)? navigateToPage,
    TResult Function(NavigateBack value)? navigateBack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateToPage value)? navigateToPage,
    TResult Function(NavigateBack value)? navigateBack,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainNavEventCopyWith<$Res> {
  factory $MainNavEventCopyWith(
          MainNavEvent value, $Res Function(MainNavEvent) then) =
      _$MainNavEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MainNavEventCopyWithImpl<$Res> implements $MainNavEventCopyWith<$Res> {
  _$MainNavEventCopyWithImpl(this._value, this._then);

  final MainNavEvent _value;
  // ignore: unused_field
  final $Res Function(MainNavEvent) _then;
}

/// @nodoc
abstract class $NavigateToPageCopyWith<$Res> {
  factory $NavigateToPageCopyWith(
          NavigateToPage value, $Res Function(NavigateToPage) then) =
      _$NavigateToPageCopyWithImpl<$Res>;
  $Res call({MainNavItem mainNavItem});

  $MainNavItemCopyWith<$Res> get mainNavItem;
}

/// @nodoc
class _$NavigateToPageCopyWithImpl<$Res>
    extends _$MainNavEventCopyWithImpl<$Res>
    implements $NavigateToPageCopyWith<$Res> {
  _$NavigateToPageCopyWithImpl(
      NavigateToPage _value, $Res Function(NavigateToPage) _then)
      : super(_value, (v) => _then(v as NavigateToPage));

  @override
  NavigateToPage get _value => super._value as NavigateToPage;

  @override
  $Res call({
    Object? mainNavItem = freezed,
  }) {
    return _then(NavigateToPage(
      mainNavItem == freezed
          ? _value.mainNavItem
          : mainNavItem // ignore: cast_nullable_to_non_nullable
              as MainNavItem,
    ));
  }

  @override
  $MainNavItemCopyWith<$Res> get mainNavItem {
    return $MainNavItemCopyWith<$Res>(_value.mainNavItem, (value) {
      return _then(_value.copyWith(mainNavItem: value));
    });
  }
}

/// @nodoc

class _$NavigateToPage implements NavigateToPage {
  _$NavigateToPage(this.mainNavItem);

  @override
  final MainNavItem mainNavItem;

  @override
  String toString() {
    return 'MainNavEvent.navigateToPage(mainNavItem: $mainNavItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NavigateToPage &&
            const DeepCollectionEquality()
                .equals(other.mainNavItem, mainNavItem));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(mainNavItem));

  @JsonKey(ignore: true)
  @override
  $NavigateToPageCopyWith<NavigateToPage> get copyWith =>
      _$NavigateToPageCopyWithImpl<NavigateToPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MainNavItem mainNavItem) navigateToPage,
    required TResult Function() navigateBack,
  }) {
    return navigateToPage(mainNavItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MainNavItem mainNavItem)? navigateToPage,
    TResult Function()? navigateBack,
  }) {
    return navigateToPage?.call(mainNavItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MainNavItem mainNavItem)? navigateToPage,
    TResult Function()? navigateBack,
    required TResult orElse(),
  }) {
    if (navigateToPage != null) {
      return navigateToPage(mainNavItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateToPage value) navigateToPage,
    required TResult Function(NavigateBack value) navigateBack,
  }) {
    return navigateToPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NavigateToPage value)? navigateToPage,
    TResult Function(NavigateBack value)? navigateBack,
  }) {
    return navigateToPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateToPage value)? navigateToPage,
    TResult Function(NavigateBack value)? navigateBack,
    required TResult orElse(),
  }) {
    if (navigateToPage != null) {
      return navigateToPage(this);
    }
    return orElse();
  }
}

abstract class NavigateToPage implements MainNavEvent {
  factory NavigateToPage(MainNavItem mainNavItem) = _$NavigateToPage;

  MainNavItem get mainNavItem;
  @JsonKey(ignore: true)
  $NavigateToPageCopyWith<NavigateToPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigateBackCopyWith<$Res> {
  factory $NavigateBackCopyWith(
          NavigateBack value, $Res Function(NavigateBack) then) =
      _$NavigateBackCopyWithImpl<$Res>;
}

/// @nodoc
class _$NavigateBackCopyWithImpl<$Res> extends _$MainNavEventCopyWithImpl<$Res>
    implements $NavigateBackCopyWith<$Res> {
  _$NavigateBackCopyWithImpl(
      NavigateBack _value, $Res Function(NavigateBack) _then)
      : super(_value, (v) => _then(v as NavigateBack));

  @override
  NavigateBack get _value => super._value as NavigateBack;
}

/// @nodoc

class _$NavigateBack implements NavigateBack {
  _$NavigateBack();

  @override
  String toString() {
    return 'MainNavEvent.navigateBack()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NavigateBack);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MainNavItem mainNavItem) navigateToPage,
    required TResult Function() navigateBack,
  }) {
    return navigateBack();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MainNavItem mainNavItem)? navigateToPage,
    TResult Function()? navigateBack,
  }) {
    return navigateBack?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MainNavItem mainNavItem)? navigateToPage,
    TResult Function()? navigateBack,
    required TResult orElse(),
  }) {
    if (navigateBack != null) {
      return navigateBack();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateToPage value) navigateToPage,
    required TResult Function(NavigateBack value) navigateBack,
  }) {
    return navigateBack(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NavigateToPage value)? navigateToPage,
    TResult Function(NavigateBack value)? navigateBack,
  }) {
    return navigateBack?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateToPage value)? navigateToPage,
    TResult Function(NavigateBack value)? navigateBack,
    required TResult orElse(),
  }) {
    if (navigateBack != null) {
      return navigateBack(this);
    }
    return orElse();
  }
}

abstract class NavigateBack implements MainNavEvent {
  factory NavigateBack() = _$NavigateBack;
}
