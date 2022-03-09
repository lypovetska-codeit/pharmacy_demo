import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pharmacy/domain/model/list_id.dart';

part 'banner_offer.freezed.dart';

@freezed
class BannerOffer with _$BannerOffer {
  factory BannerOffer({
    required final int id,
    required final String imageUrl,
    required final ListId listId,
    required int position,
  }) = _BannerOffer;
}
