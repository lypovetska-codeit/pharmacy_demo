import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_offer.freezed.dart';

@freezed
class BannerOffer with _$BannerOffer {
  factory BannerOffer({
    required final int id,
    required final String imageUrl,
    required int position,
    required final String title,
  }) = _BannerOffer;
}
