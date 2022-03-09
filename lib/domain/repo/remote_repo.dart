import 'package:pharmacy/domain/model/banner_offer.dart';
import 'package:pharmacy/domain/model/page.dart';
import 'package:pharmacy/domain/model/paged_products.dart';
import 'package:pharmacy/domain/model/tag.dart';

abstract class RemoteRepo {
  Future<List<BannerOffer>> getSpecialOffers();

  Future<List<Tag>> getTags();

  Future<PagedProducts> getProductList(Page page);
}
