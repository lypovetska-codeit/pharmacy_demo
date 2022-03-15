// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserEventTearOff {
  const _$UserEventTearOff();

  AuthorizeEvent authorize() {
    return AuthorizeEvent();
  }

  LogoutEvent logout() {
    return LogoutEvent();
  }

  OnUserChangeEvent onUserChange(User user) {
    return OnUserChangeEvent(
      user,
    );
  }
}

/// @nodoc
const $UserEvent = _$UserEventTearOff();

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authorize,
    required TResult Function() logout,
    required TResult Function(User user) onUserChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authorize,
    TResult Function()? logout,
    TResult Function(User user)? onUserChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authorize,
    TResult Function()? logout,
    TResult Function(User user)? onUserChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorizeEvent value) authorize,
    required TResult Function(LogoutEvent value) logout,
    required TResult Function(OnUserChangeEvent value) onUserChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthorizeEvent value)? authorize,
    TResult Function(LogoutEvent value)? logout,
    TResult Function(OnUserChangeEvent value)? onUserChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorizeEvent value)? authorize,
    TResult Function(LogoutEvent value)? logout,
    TResult Function(OnUserChangeEvent value)? onUserChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res> implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  final UserEvent _value;
  // ignore: unused_field
  final $Res Function(UserEvent) _then;
}

/// @nodoc
abstract class $AuthorizeEventCopyWith<$Res> {
  factory $AuthorizeEventCopyWith(
          AuthorizeEvent value, $Res Function(AuthorizeEvent) then) =
      _$AuthorizeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthorizeEventCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements $AuthorizeEventCopyWith<$Res> {
  _$AuthorizeEventCopyWithImpl(
      AuthorizeEvent _value, $Res Function(AuthorizeEvent) _then)
      : super(_value, (v) => _then(v as AuthorizeEvent));

  @override
  AuthorizeEvent get _value => super._value as AuthorizeEvent;
}

/// @nodoc

class _$AuthorizeEvent implements AuthorizeEvent {
  _$AuthorizeEvent();

  @override
  String toString() {
    return 'UserEvent.authorize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthorizeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authorize,
    required TResult Function() logout,
    required TResult Function(User user) onUserChange,
  }) {
    return authorize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authorize,
    TResult Function()? logout,
    TResult Function(User user)? onUserChange,
  }) {
    return authorize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authorize,
    TResult Function()? logout,
    TResult Function(User user)? onUserChange,
    required TResult orElse(),
  }) {
    if (authorize != null) {
      return authorize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorizeEvent value) authorize,
    required TResult Function(LogoutEvent value) logout,
    required TResult Function(OnUserChangeEvent value) onUserChange,
  }) {
    return authorize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthorizeEvent value)? authorize,
    TResult Function(LogoutEvent value)? logout,
    TResult Function(OnUserChangeEvent value)? onUserChange,
  }) {
    return authorize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorizeEvent value)? authorize,
    TResult Function(LogoutEvent value)? logout,
    TResult Function(OnUserChangeEvent value)? onUserChange,
    required TResult orElse(),
  }) {
    if (authorize != null) {
      return authorize(this);
    }
    return orElse();
  }
}

abstract class AuthorizeEvent implements UserEvent {
  factory AuthorizeEvent() = _$AuthorizeEvent;
}

/// @nodoc
abstract class $LogoutEventCopyWith<$Res> {
  factory $LogoutEventCopyWith(
          LogoutEvent value, $Res Function(LogoutEvent) then) =
      _$LogoutEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogoutEventCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements $LogoutEventCopyWith<$Res> {
  _$LogoutEventCopyWithImpl(
      LogoutEvent _value, $Res Function(LogoutEvent) _then)
      : super(_value, (v) => _then(v as LogoutEvent));

  @override
  LogoutEvent get _value => super._value as LogoutEvent;
}

/// @nodoc

class _$LogoutEvent implements LogoutEvent {
  _$LogoutEvent();

  @override
  String toString() {
    return 'UserEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LogoutEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authorize,
    required TResult Function() logout,
    required TResult Function(User user) onUserChange,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authorize,
    TResult Function()? logout,
    TResult Function(User user)? onUserChange,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authorize,
    TResult Function()? logout,
    TResult Function(User user)? onUserChange,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorizeEvent value) authorize,
    required TResult Function(LogoutEvent value) logout,
    required TResult Function(OnUserChangeEvent value) onUserChange,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthorizeEvent value)? authorize,
    TResult Function(LogoutEvent value)? logout,
    TResult Function(OnUserChangeEvent value)? onUserChange,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorizeEvent value)? authorize,
    TResult Function(LogoutEvent value)? logout,
    TResult Function(OnUserChangeEvent value)? onUserChange,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class LogoutEvent implements UserEvent {
  factory LogoutEvent() = _$LogoutEvent;
}

/// @nodoc
abstract class $OnUserChangeEventCopyWith<$Res> {
  factory $OnUserChangeEventCopyWith(
          OnUserChangeEvent value, $Res Function(OnUserChangeEvent) then) =
      _$OnUserChangeEventCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$OnUserChangeEventCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res>
    implements $OnUserChangeEventCopyWith<$Res> {
  _$OnUserChangeEventCopyWithImpl(
      OnUserChangeEvent _value, $Res Function(OnUserChangeEvent) _then)
      : super(_value, (v) => _then(v as OnUserChangeEvent));

  @override
  OnUserChangeEvent get _value => super._value as OnUserChangeEvent;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(OnUserChangeEvent(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$OnUserChangeEvent implements OnUserChangeEvent {
  _$OnUserChangeEvent(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'UserEvent.onUserChange(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OnUserChangeEvent &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $OnUserChangeEventCopyWith<OnUserChangeEvent> get copyWith =>
      _$OnUserChangeEventCopyWithImpl<OnUserChangeEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authorize,
    required TResult Function() logout,
    required TResult Function(User user) onUserChange,
  }) {
    return onUserChange(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authorize,
    TResult Function()? logout,
    TResult Function(User user)? onUserChange,
  }) {
    return onUserChange?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authorize,
    TResult Function()? logout,
    TResult Function(User user)? onUserChange,
    required TResult orElse(),
  }) {
    if (onUserChange != null) {
      return onUserChange(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorizeEvent value) authorize,
    required TResult Function(LogoutEvent value) logout,
    required TResult Function(OnUserChangeEvent value) onUserChange,
  }) {
    return onUserChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthorizeEvent value)? authorize,
    TResult Function(LogoutEvent value)? logout,
    TResult Function(OnUserChangeEvent value)? onUserChange,
  }) {
    return onUserChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorizeEvent value)? authorize,
    TResult Function(LogoutEvent value)? logout,
    TResult Function(OnUserChangeEvent value)? onUserChange,
    required TResult orElse(),
  }) {
    if (onUserChange != null) {
      return onUserChange(this);
    }
    return orElse();
  }
}

abstract class OnUserChangeEvent implements UserEvent {
  factory OnUserChangeEvent(User user) = _$OnUserChangeEvent;

  User get user;
  @JsonKey(ignore: true)
  $OnUserChangeEventCopyWith<OnUserChangeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
