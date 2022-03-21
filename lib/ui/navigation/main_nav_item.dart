import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pharmacy/domain/model/product.dart';

part 'main_nav_item.freezed.dart';

@freezed
class MainNavItem with _$MainNavItem {
  factory MainNavItem.mainScreen() = MainItem;

  factory MainNavItem.catalogScreen() = CatalogNavItem;

  factory MainNavItem.profileScreen() = ProfileNavItem;

  factory MainNavItem.productScreen(Product product) = ProductNavItem;

  factory MainNavItem.cartScreen() = CartNavItem;
}

extension MainNavItemExtension on MainNavItem {
  int get mainNavItemPosition => map(
        mainScreen: (_) => 0,
        catalogScreen: (_) => 1,
        profileScreen: (_) => 2,
        productScreen: (_) => 0,
        cartScreen: (_) => 0,
      );
}
