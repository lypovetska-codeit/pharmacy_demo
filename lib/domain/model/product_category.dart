enum ProductCategory {
  pills,
  medicines,
  equipment,
}

extension ProductCategoryExtension on ProductCategory {
  T map<T>({
    required T Function(ProductCategory) pills,
    required T Function(ProductCategory) medicines,
    required T Function(ProductCategory) equipment,
  }) {
    switch (this) {
      case ProductCategory.pills:
        return pills(this);
      case ProductCategory.medicines:
        return medicines(this);
      case ProductCategory.equipment:
        return equipment(this);
    }
  }
}
