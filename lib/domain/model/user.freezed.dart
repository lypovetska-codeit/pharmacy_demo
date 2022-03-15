// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  AuthorizedUser authorized(
      {required UserId userId,
      required String firstName,
      required String lastName,
      required String phoneNumber}) {
    return AuthorizedUser(
      userId: userId,
      firstName: firstName,
      lastName: lastName,
      phoneNumber: phoneNumber,
    );
  }

  GuestUser guest() {
    return GuestUser();
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserId userId, String firstName, String lastName,
            String phoneNumber)
        authorized,
    required TResult Function() guest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserId userId, String firstName, String lastName,
            String phoneNumber)?
        authorized,
    TResult Function()? guest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserId userId, String firstName, String lastName,
            String phoneNumber)?
        authorized,
    TResult Function()? guest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorizedUser value) authorized,
    required TResult Function(GuestUser value) guest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthorizedUser value)? authorized,
    TResult Function(GuestUser value)? guest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorizedUser value)? authorized,
    TResult Function(GuestUser value)? guest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;
}

/// @nodoc
abstract class $AuthorizedUserCopyWith<$Res> {
  factory $AuthorizedUserCopyWith(
          AuthorizedUser value, $Res Function(AuthorizedUser) then) =
      _$AuthorizedUserCopyWithImpl<$Res>;
  $Res call(
      {UserId userId, String firstName, String lastName, String phoneNumber});

  $UserIdCopyWith<$Res> get userId;
}

/// @nodoc
class _$AuthorizedUserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements $AuthorizedUserCopyWith<$Res> {
  _$AuthorizedUserCopyWithImpl(
      AuthorizedUser _value, $Res Function(AuthorizedUser) _then)
      : super(_value, (v) => _then(v as AuthorizedUser));

  @override
  AuthorizedUser get _value => super._value as AuthorizedUser;

  @override
  $Res call({
    Object? userId = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(AuthorizedUser(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UserId,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $UserIdCopyWith<$Res> get userId {
    return $UserIdCopyWith<$Res>(_value.userId, (value) {
      return _then(_value.copyWith(userId: value));
    });
  }
}

/// @nodoc

class _$AuthorizedUser implements AuthorizedUser {
  _$AuthorizedUser(
      {required this.userId,
      required this.firstName,
      required this.lastName,
      required this.phoneNumber});

  @override
  final UserId userId;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'User.authorized(userId: $userId, firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthorizedUser &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(phoneNumber));

  @JsonKey(ignore: true)
  @override
  $AuthorizedUserCopyWith<AuthorizedUser> get copyWith =>
      _$AuthorizedUserCopyWithImpl<AuthorizedUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserId userId, String firstName, String lastName,
            String phoneNumber)
        authorized,
    required TResult Function() guest,
  }) {
    return authorized(userId, firstName, lastName, phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserId userId, String firstName, String lastName,
            String phoneNumber)?
        authorized,
    TResult Function()? guest,
  }) {
    return authorized?.call(userId, firstName, lastName, phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserId userId, String firstName, String lastName,
            String phoneNumber)?
        authorized,
    TResult Function()? guest,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(userId, firstName, lastName, phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorizedUser value) authorized,
    required TResult Function(GuestUser value) guest,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthorizedUser value)? authorized,
    TResult Function(GuestUser value)? guest,
  }) {
    return authorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorizedUser value)? authorized,
    TResult Function(GuestUser value)? guest,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }
}

abstract class AuthorizedUser implements User {
  factory AuthorizedUser(
      {required UserId userId,
      required String firstName,
      required String lastName,
      required String phoneNumber}) = _$AuthorizedUser;

  UserId get userId;
  String get firstName;
  String get lastName;
  String get phoneNumber;
  @JsonKey(ignore: true)
  $AuthorizedUserCopyWith<AuthorizedUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestUserCopyWith<$Res> {
  factory $GuestUserCopyWith(GuestUser value, $Res Function(GuestUser) then) =
      _$GuestUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$GuestUserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements $GuestUserCopyWith<$Res> {
  _$GuestUserCopyWithImpl(GuestUser _value, $Res Function(GuestUser) _then)
      : super(_value, (v) => _then(v as GuestUser));

  @override
  GuestUser get _value => super._value as GuestUser;
}

/// @nodoc

class _$GuestUser implements GuestUser {
  _$GuestUser();

  @override
  String toString() {
    return 'User.guest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GuestUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserId userId, String firstName, String lastName,
            String phoneNumber)
        authorized,
    required TResult Function() guest,
  }) {
    return guest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserId userId, String firstName, String lastName,
            String phoneNumber)?
        authorized,
    TResult Function()? guest,
  }) {
    return guest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserId userId, String firstName, String lastName,
            String phoneNumber)?
        authorized,
    TResult Function()? guest,
    required TResult orElse(),
  }) {
    if (guest != null) {
      return guest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorizedUser value) authorized,
    required TResult Function(GuestUser value) guest,
  }) {
    return guest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthorizedUser value)? authorized,
    TResult Function(GuestUser value)? guest,
  }) {
    return guest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorizedUser value)? authorized,
    TResult Function(GuestUser value)? guest,
    required TResult orElse(),
  }) {
    if (guest != null) {
      return guest(this);
    }
    return orElse();
  }
}

abstract class GuestUser implements User {
  factory GuestUser() = _$GuestUser;
}
