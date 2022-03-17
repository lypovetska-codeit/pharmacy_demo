import 'package:floor/floor.dart';
import 'package:pharmacy/data/db/entity/cart_entity.dart';

@dao
abstract class CartDao {
  @Query('SELECT * FROM CartEntity')
  Future<List<CartEntity>> findAll();

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertAll(List<CartEntity> items);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insert(CartEntity entity);

  @Query('DELETE FROM CartEntity')
  Future<void> removeAll();

  @Query('DELETE FROM CartEntity WHERE productId = :value')
  Future<void> removeById(int value);
}
