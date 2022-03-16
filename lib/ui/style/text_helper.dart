import 'package:flutter/material.dart';
import 'package:pharmacy/domain/model/product_category.dart';
import 'package:pharmacy/domain/model/product_sort_order.dart';

class TextHelper {
  TextHelper._();

  static String getProductCategoryTitle(BuildContext context, ProductCategory category) {
    switch (category) {
      case ProductCategory.pills:
        return "Pills";
      case ProductCategory.medicines:
        return "Medicines";
      case ProductCategory.equipment:
        return "Equipment";
    }
  }

  static String getProductSortOrderTitle(BuildContext context, ProductSortOrder item) {
    switch (item) {
      case ProductSortOrder.rating:
        return "Rating";
      case ProductSortOrder.recent:
        return "Recent";
      case ProductSortOrder.higherPrice:
        return "Higher Price";
      case ProductSortOrder.lowerPrice:
        return "Lower Price";
    }
  }
}
