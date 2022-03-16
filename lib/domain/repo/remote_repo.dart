import 'package:pharmacy/domain/model/banner_offer.dart';
import 'package:pharmacy/domain/model/page.dart';
import 'package:pharmacy/domain/model/paged_products.dart';
import 'package:pharmacy/domain/model/product.dart';
import 'package:pharmacy/domain/model/product_category.dart';
import 'package:pharmacy/domain/model/product_sort_order.dart';
import 'package:pharmacy/domain/model/tag.dart';

abstract class RemoteRepo {
  Future<List<BannerOffer>> getSpecialOffers();

  Future<List<Tag>> getTags();

  Future<PagedProducts> getProductList(Page page, Set<ProductCategory> categories, ProductSortOrder sortOrder);

  Future<List<Product>> searchProducts(String query);
}
