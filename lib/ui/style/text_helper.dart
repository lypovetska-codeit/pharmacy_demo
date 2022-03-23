import 'package:flutter/material.dart';
import 'package:pharmacy/build_context_extensions.dart';
import 'package:pharmacy/domain/model/product_category.dart';
import 'package:pharmacy/domain/model/product_sort_order.dart';

class TextHelper {
  TextHelper._();

  static String getProductCategoryTitle(BuildContext context, ProductCategory category) {
    switch (category) {
      case ProductCategory.pills:
        return context.l10n.pills;
      case ProductCategory.medicines:
        return context.l10n.medicines;
      case ProductCategory.equipment:
        return context.l10n.equipment;
    }
  }

  static String getProductSortOrderTitle(BuildContext context, ProductSortOrder item) {
    switch (item) {
      case ProductSortOrder.rating:
        return context.l10n.rating;
      case ProductSortOrder.recent:
        return context.l10n.recent;
      case ProductSortOrder.higherPrice:
        return context.l10n.higherPrice;
      case ProductSortOrder.lowerPrice:
        return context.l10n.lowerPrice;
    }
  }
}
