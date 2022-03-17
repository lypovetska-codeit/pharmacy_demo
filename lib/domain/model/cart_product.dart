import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pharmacy/domain/model/product.dart';

part 'cart_product.freezed.dart';

@freezed
class CartProduct with _$CartProduct {
  factory CartProduct({
    required final int count,
    required final Product product,
  }) = _CartProduct;
}
