import 'package:freezed_annotation/freezed_annotation.dart';

part 'special_offers_event.freezed.dart';

@freezed
class SpecialOffersEvent with _$SpecialOffersEvent {
  factory SpecialOffersEvent.load() = Load;
}
