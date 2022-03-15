import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pharmacy/domain/model/product.dart';

part 'search_event.freezed.dart';

@freezed
class SearchEvent with _$SearchEvent {
  factory SearchEvent({
    required String query,
    required Completer<List<Product>> completer,
  }) = _SearchEvent;
}
