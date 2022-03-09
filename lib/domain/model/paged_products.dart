import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pharmacy/domain/model/page.dart';
import 'package:pharmacy/domain/model/product.dart';

part 'paged_products.freezed.dart';

@freezed
class PagedProducts with _$PagedProducts {
  factory PagedProducts({
    required final Page page,
    required final List<Product> items,
  }) = _PagedProducts;
}
