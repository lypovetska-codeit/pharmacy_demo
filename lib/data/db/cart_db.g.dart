// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_db.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorCartDb {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$CartDbBuilder databaseBuilder(String name) => _$CartDbBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$CartDbBuilder inMemoryDatabaseBuilder() => _$CartDbBuilder(null);
}

class _$CartDbBuilder {
  _$CartDbBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$CartDbBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$CartDbBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<CartDb> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$CartDb();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$CartDb extends CartDb {
  _$CartDb([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  CartDao? _cartDaoInstance;

  Future<sqflite.Database> open(String path, List<Migration> migrations,
      [Callback? callback]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `CartEntity` (`productId` INTEGER NOT NULL, `name` TEXT NOT NULL, `origin` TEXT NOT NULL, `price` REAL NOT NULL, `discount` REAL NOT NULL, `image` TEXT NOT NULL, `requireReceipt` INTEGER NOT NULL, `category` TEXT NOT NULL, `count` INTEGER NOT NULL, `description` TEXT NOT NULL, PRIMARY KEY (`productId`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  CartDao get cartDao {
    return _cartDaoInstance ??= _$CartDao(database, changeListener);
  }
}

class _$CartDao extends CartDao {
  _$CartDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _cartEntityInsertionAdapter = InsertionAdapter(
            database,
            'CartEntity',
            (CartEntity item) => <String, Object?>{
                  'productId': item.productId,
                  'name': item.name,
                  'origin': item.origin,
                  'price': item.price,
                  'discount': item.discount,
                  'image': item.image,
                  'requireReceipt': item.requireReceipt ? 1 : 0,
                  'category': item.category,
                  'count': item.count,
                  'description': item.description
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<CartEntity> _cartEntityInsertionAdapter;

  @override
  Future<List<CartEntity>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM CartEntity',
        mapper: (Map<String, Object?> row) => CartEntity(
            row['productId'] as int,
            row['name'] as String,
            row['origin'] as String,
            row['price'] as double,
            row['discount'] as double,
            (row['requireReceipt'] as int) != 0,
            row['category'] as String,
            row['count'] as int,
            row['image'] as String,
            row['description'] as String));
  }

  @override
  Future<void> removeAll() async {
    await _queryAdapter.queryNoReturn('DELETE FROM CartEntity');
  }

  @override
  Future<void> removeById(int value) async {
    await _queryAdapter.queryNoReturn(
        'DELETE FROM CartEntity WHERE productId = ?1',
        arguments: [value]);
  }

  @override
  Future<void> insertAll(List<CartEntity> items) async {
    await _cartEntityInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> insert(CartEntity entity) async {
    await _cartEntityInsertionAdapter.insert(
        entity, OnConflictStrategy.replace);
  }
}
