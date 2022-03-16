import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pharmacy/domain/model/product_id.dart';

part 'product.freezed.dart';

@freezed
class Product with _$Product {
  factory Product({
    required final ProductId id,
    required final String name,
    required final String origin,
    required final double price,
    required final double discount,
    required final List<String> images,
    required final bool requireReceipt,
  }) = _Product;
}
