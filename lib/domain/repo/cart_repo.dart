import 'package:pharmacy/domain/model/cart_product.dart';
import 'package:pharmacy/domain/model/product_id.dart';
import 'package:rxdart/rxdart.dart';

abstract class CartRepo {
  BehaviorSubject<Set<CartProduct>> subscribeToCart();

  Future<void> addToCart(CartProduct cartProduct);

  Future<void> deleteFromCart(ProductId productId);

  Future<void> clearCart();
}
