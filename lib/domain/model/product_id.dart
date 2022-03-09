import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_id.freezed.dart';

@freezed
class ProductId with _$ProductId {
  factory ProductId(int value) = _ProductId;
}
