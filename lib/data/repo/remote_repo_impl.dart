import 'package:pharmacy/domain/model/banner_offer.dart';
import 'package:pharmacy/domain/model/category_id.dart';
import 'package:pharmacy/domain/model/list_id.dart';
import 'package:pharmacy/domain/model/page.dart';
import 'package:pharmacy/domain/model/paged_products.dart';
import 'package:pharmacy/domain/model/product.dart';
import 'package:pharmacy/domain/model/product_id.dart';
import 'package:pharmacy/domain/model/tag.dart';
import 'package:pharmacy/domain/repo/remote_repo.dart';

class RemoteRepoImpl extends RemoteRepo {
  @override
  Future<List<BannerOffer>> getSpecialOffers() {
    return Future.delayed(const Duration(milliseconds: 400), () {
      return List.generate(
        5,
        (index) => BannerOffer(
          id: index,
          imageUrl:
              "https://img.freepik.com/free-photo/top-view-of-redwhite-capsule-pills-on-yellow-background-pharmacy-banner-pharmaceutical-industry_33867-2062.jpg",
          listId: ListId(index),
          position: index,
        ),
      ).toList();
    });
  }

  @override
  Future<List<Tag>> getTags() async {
    return Future.delayed(const Duration(milliseconds: 400), () {
      return List.generate(
        40,
        (index) => Tag(
          id: index,
          imageUrl: "https://flyclipart.com/thumb2/heart-health-icon-854472.png",
          title: 'tag $index',
          categoryId: CategoryId(index),
        ),
      ).toList();
    });
  }

  @override
  Future<PagedProducts> getProductList(Page page) async {
    return Future.delayed(const Duration(milliseconds: 500), () {
      if (page.current > 10) {
        return PagedProducts(page: page, items: []);
      } else {
        return PagedProducts(
          page: page.copyWith(total: 10 * page.pageSize, next: page.current + 1),
          items: List.generate(
            page.pageSize,
            (index) => Product(
              id: ProductId(index * page.current),
              name: "Pills ${index * page.current}",
              price: 100.0 * (index + 2),
              discount: index.isEven ? 100 : 0,
              images: [],
              requireReceipt: index.isEven,
            ),
          ).toList(),
        );
      }
    });
  }
}
