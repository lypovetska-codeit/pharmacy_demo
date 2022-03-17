//ignore_for_file:depend_on_referenced_packages
import 'dart:async';

import 'package:floor/floor.dart';
import 'package:pharmacy/data/db/dao/cart_dao.dart';
import 'package:pharmacy/data/db/entity/cart_entity.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'cart_db.g.dart';

@Database(
  version: 1,
  entities: [
    CartEntity,
  ],
)
abstract class CartDb extends FloorDatabase {
  static const databaseFilename = 'cart_db.sqlite';

  CartDao get cartDao;
}
