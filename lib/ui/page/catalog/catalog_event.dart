import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pharmacy/domain/model/product_category.dart';
import 'package:pharmacy/domain/model/product_sort_order.dart';

part 'catalog_event.freezed.dart';

@freezed
class CatalogEvent with _$CatalogEvent {
  factory CatalogEvent.loadPage(int page) = LoadPageEvent;

  factory CatalogEvent.applyFilter(Set<ProductCategory> categories) = ApplyFilterEvent;

  factory CatalogEvent.applySortOrder(ProductSortOrder sortOrder) = ApplySortOrderEvent;
}
