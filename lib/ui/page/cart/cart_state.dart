import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pharmacy/domain/model/cart_product.dart';

part 'cart_state.freezed.dart';

@freezed
class CartState with _$CartState {
  factory CartState.loaded(Set<CartProduct> cartProducts) = LoadedCartState;

  factory CartState.loading(Set<CartProduct> cartProducts) = LoadingCartState;

  factory CartState.error(Object error, Set<CartProduct> cartProducts) = ErrorCartState;
}
