//ignore_for_file:avoid_positional_boolean_parameters
import 'package:floor/floor.dart';

@entity
class CartEntity {
  @primaryKey
  final int productId;
  final String name;
  final String origin;
  final double price;
  final double discount;
  final String image;
  final bool requireReceipt;
  final String category;
  final int count;
  final String description;

  CartEntity(
    this.productId,
    this.name,
    this.origin,
    this.price,
    this.discount,
    this.requireReceipt,
    this.category,
    this.count,
    this.image,
    this.description,
  );
}
