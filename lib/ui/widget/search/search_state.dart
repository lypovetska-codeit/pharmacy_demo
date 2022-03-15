import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pharmacy/domain/model/product.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  factory SearchState.success(List<Product> list) = Success;

  factory SearchState.error(Object error) = Error;
}
