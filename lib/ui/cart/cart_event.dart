import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pharmacy/domain/model/cart_product.dart';
import 'package:pharmacy/domain/model/product_id.dart';

part 'cart_event.freezed.dart';

@freezed
class CartEvent with _$CartEvent {
  factory CartEvent.addToCart(CartProduct cartProduct) = AddToCartEvent;

  factory CartEvent.deleteFromCart(ProductId productId) = DeleteFromCartEvent;

  factory CartEvent.cleanCart() = CleanCartEvent;

  factory CartEvent.cartUpdated(Set<CartProduct> value) = CartUpdatedEvent;
}
