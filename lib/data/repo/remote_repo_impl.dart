import 'package:pharmacy/domain/model/banner_offer.dart';
import 'package:pharmacy/domain/model/category_id.dart';
import 'package:pharmacy/domain/model/page.dart';
import 'package:pharmacy/domain/model/paged_products.dart';
import 'package:pharmacy/domain/model/product.dart';
import 'package:pharmacy/domain/model/product_category.dart';
import 'package:pharmacy/domain/model/product_id.dart';
import 'package:pharmacy/domain/model/product_sort_order.dart';
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
          position: index,
          title: "Special price",
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
          imageUrl: "https://",
          title: 'tag $index',
          categoryId: CategoryId(index),
        ),
      ).toList();
    });
  }

  @override
  Future<PagedProducts> getProductList(Page page, Set<ProductCategory> categories, ProductSortOrder sortOrder) async {
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
              image: "",
              requireReceipt: index.isEven,
              origin: 'Poland',
              category: ProductCategory.pills,
              description:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
            ),
          ).toList(),
        );
      }
    });
  }

  @override
  Future<List<Product>> searchProducts(String query) async {
    return [
      Product(
        id: ProductId(1),
        name: "Pills $query",
        origin: "Poland",
        price: 100.0,
        discount: 0,
        image: "",
        requireReceipt: false,
        category: ProductCategory.pills,
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
      ),
      Product(
        id: ProductId(2),
        name: "Pills2 $query",
        origin: "Poland",
        price: 100.0,
        discount: 20,
        image: "",
        requireReceipt: true,
        category: ProductCategory.medicines,
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
      )
    ];
  }
}
