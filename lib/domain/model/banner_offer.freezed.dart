// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'banner_offer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BannerOfferTearOff {
  const _$BannerOfferTearOff();

  _BannerOffer call(
      {required int id,
      required String imageUrl,
      required int position,
      required String title}) {
    return _BannerOffer(
      id: id,
      imageUrl: imageUrl,
      position: position,
      title: title,
    );
  }
}

/// @nodoc
const $BannerOffer = _$BannerOfferTearOff();

/// @nodoc
mixin _$BannerOffer {
  int get id => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BannerOfferCopyWith<BannerOffer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerOfferCopyWith<$Res> {
  factory $BannerOfferCopyWith(
          BannerOffer value, $Res Function(BannerOffer) then) =
      _$BannerOfferCopyWithImpl<$Res>;
  $Res call({int id, String imageUrl, int position, String title});
}

/// @nodoc
class _$BannerOfferCopyWithImpl<$Res> implements $BannerOfferCopyWith<$Res> {
  _$BannerOfferCopyWithImpl(this._value, this._then);

  final BannerOffer _value;
  // ignore: unused_field
  final $Res Function(BannerOffer) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? position = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$BannerOfferCopyWith<$Res>
    implements $BannerOfferCopyWith<$Res> {
  factory _$BannerOfferCopyWith(
          _BannerOffer value, $Res Function(_BannerOffer) then) =
      __$BannerOfferCopyWithImpl<$Res>;
  @override
  $Res call({int id, String imageUrl, int position, String title});
}

/// @nodoc
class __$BannerOfferCopyWithImpl<$Res> extends _$BannerOfferCopyWithImpl<$Res>
    implements _$BannerOfferCopyWith<$Res> {
  __$BannerOfferCopyWithImpl(
      _BannerOffer _value, $Res Function(_BannerOffer) _then)
      : super(_value, (v) => _then(v as _BannerOffer));

  @override
  _BannerOffer get _value => super._value as _BannerOffer;

  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? position = freezed,
    Object? title = freezed,
  }) {
    return _then(_BannerOffer(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BannerOffer implements _BannerOffer {
  _$_BannerOffer(
      {required this.id,
      required this.imageUrl,
      required this.position,
      required this.title});

  @override
  final int id;
  @override
  final String imageUrl;
  @override
  final int position;
  @override
  final String title;

  @override
  String toString() {
    return 'BannerOffer(id: $id, imageUrl: $imageUrl, position: $position, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BannerOffer &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.position, position) &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(position),
      const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$BannerOfferCopyWith<_BannerOffer> get copyWith =>
      __$BannerOfferCopyWithImpl<_BannerOffer>(this, _$identity);
}

abstract class _BannerOffer implements BannerOffer {
  factory _BannerOffer(
      {required int id,
      required String imageUrl,
      required int position,
      required String title}) = _$_BannerOffer;

  @override
  int get id;
  @override
  String get imageUrl;
  @override
  int get position;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$BannerOfferCopyWith<_BannerOffer> get copyWith =>
      throw _privateConstructorUsedError;
}
