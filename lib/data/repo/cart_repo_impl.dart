import 'package:fimber/fimber.dart';
import 'package:pharmacy/data/db/cart_db.dart';
import 'package:pharmacy/data/db/entity/cart_entity.dart';
import 'package:pharmacy/domain/model/cart_product.dart';
import 'package:pharmacy/domain/model/product.dart';
import 'package:pharmacy/domain/model/product_category.dart';
import 'package:pharmacy/domain/model/product_id.dart';
import 'package:pharmacy/domain/repo/cart_repo.dart';
import 'package:rxdart/rxdart.dart';
import 'package:synchronized/synchronized.dart';

class CartRepoImpl extends CartRepo {
  final BehaviorSubject<Set<CartProduct>> _cart = BehaviorSubject.seeded({});

  final Lock _dbLock = Lock();
  CartDb? _db;

  Future<CartDb> _database() async {
    Fimber.i("DB _db $_db");

    if (_db != null) {
      return _db!;
    } else {
      return _dbLock.synchronized(() async {
        if (_db != null) {
          return _db!;
        } else {
          _db = await $FloorCartDb.databaseBuilder(CartDb.databaseFilename).build();
          return _db!;
        }
      });
    }
  }

  @override
  BehaviorSubject<Set<CartProduct>> subscribeToCart() => _cart;

  @override
  Future<void> addToCart(CartProduct cartProduct) async {
    final database = await _database();
    await database.cartDao.insert(cartProduct.toEntity());
    await _fetchCart();
  }

  @override
  Future<void> deleteFromCart(ProductId productId) async {
    final database = await _database();
    await database.cartDao.removeById(productId.value);
    await _fetchCart();
  }

  @override
  Future<void> clearCart() async {
    final database = await _database();
    await database.cartDao.removeAll();
    await _fetchCart();
  }

  Future<void> _fetchCart() async {
    final database = await _database();
    final updatedCart = await database.cartDao.findAll();
    _cart.value = updatedCart.map((e) => e.toDomain()).toSet();
  }
}

extension CartProductExtension on CartProduct {
  CartEntity toEntity() {
    return CartEntity(
        product.id.value,
        product.name,
        product.origin,
        product.price,
        product.discount,
        product.requireReceipt,
        product.category.map(
          pills: (_) => "pills",
          medicines: (_) => "medicines",
          equipment: (_) => "equipment",
        ),
        count,
        product.image,
        product.description);
  }
}

extension CartEntityExtension on CartEntity {
  CartProduct toDomain() {
    ProductCategory productCategory = ProductCategory.pills;
    switch (category) {
      case "pills":
        productCategory = ProductCategory.pills;
        break;
      case "equipment":
        productCategory = ProductCategory.equipment;
        break;
      case "medicines":
        productCategory = ProductCategory.medicines;
        break;
    }
    return CartProduct(
      count: count,
      product: Product(
        name: name,
        origin: origin,
        id: ProductId(productId),
        price: price,
        discount: discount,
        image: image,
        requireReceipt: requireReceipt,
        category: productCategory,
        description: description,
      ),
    );
  }
}
