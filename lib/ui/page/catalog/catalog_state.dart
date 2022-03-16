import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pharmacy/domain/model/page.dart';
import 'package:pharmacy/domain/model/product.dart';
import 'package:pharmacy/domain/model/product_category.dart';
import 'package:pharmacy/domain/model/product_sort_order.dart';

part 'catalog_state.freezed.dart';

@freezed
class CatalogState with _$CatalogState {
  factory CatalogState.loaded({
    required final List<Product> items,
    required final ProductSortOrder sortOrder,
    required final Set<ProductCategory> productCategories,
    required final Page page,
  }) = LoadedState;

  factory CatalogState.loadedInitial({
    required final List<Product> items,
    required final ProductSortOrder sortOrder,
    required final Set<ProductCategory> productCategories,
    required final Page page,
  }) = LoadedInitialState;

  factory CatalogState.loading({
    required final Page page,
    required final ProductSortOrder sortOrder,
    required final Set<ProductCategory> productCategories,
  }) = LoadingState;

  factory CatalogState.error({
    required final Object error,
    required final ProductSortOrder sortOrder,
    required final Set<ProductCategory> productCategories,
    required final Page page,
  }) = ErrorState;
}
