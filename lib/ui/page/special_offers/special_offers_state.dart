import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pharmacy/domain/model/banner_offer.dart';

part 'special_offers_state.freezed.dart';

@freezed
class SpecialOffersState with _$SpecialOffersState {
  factory SpecialOffersState.loaded(List<BannerOffer> items) = Loaded;

  factory SpecialOffersState.loading() = Loading;

  factory SpecialOffersState.error(Object error) = Error;
}
