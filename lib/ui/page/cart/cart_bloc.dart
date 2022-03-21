import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy/domain/repo/cart_repo.dart';
import 'package:pharmacy/ui/page/cart/cart_event.dart';
import 'package:pharmacy/ui/page/cart/cart_state.dart';
import 'package:rxdart/rxdart.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final CartRepo _cartRepo;
  final _compositeSubscription = CompositeSubscription();

  CartBloc(this._cartRepo) : super(CartState.loading({})) {
    on<CartEvent>(
      (event, emit) async => event.map(
        addToCart: (event) async => _addToCart(event, emit),
        deleteFromCart: (event) async => _deleteFromCart(event, emit),
        cleanCart: (event) async => _cleanCart(event, emit),
        cartUpdated: (event) async => _cartUpdated(event, emit),
      ),
    );
    _compositeSubscription.add(
      _cartRepo.subscribeToCart().listen((value) {
        add(CartEvent.cartUpdated(value));
      }),
    );
  }

  Future<void> _addToCart(AddToCartEvent event, Emitter<CartState> emit) async {
    emit(CartState.loading(state.cartProducts));
    try {
      await _cartRepo.addToCart(event.cartProduct);
    } catch (e) {
      emit(CartState.error(e, state.cartProducts));
    }
  }

  Future<void> _deleteFromCart(DeleteFromCartEvent event, Emitter<CartState> emit) async {
    emit(CartState.loading(state.cartProducts));
    try {
      await _cartRepo.deleteFromCart(event.productId);
    } catch (e) {
      emit(CartState.error(e, state.cartProducts));
    }
  }

  Future<void> _cleanCart(CleanCartEvent event, Emitter<CartState> emit) async {
    emit(CartState.loading(state.cartProducts));
    try {
      await _cartRepo.clearCart();
    } catch (e) {
      emit(CartState.error(e, state.cartProducts));
    }
  }

  Future<void> _cartUpdated(CartUpdatedEvent event, Emitter<CartState> emit) async {
    emit(CartState.loaded(event.value));
  }
}
