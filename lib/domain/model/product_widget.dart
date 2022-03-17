import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pharmacy/domain/model/product.dart';
import 'package:pharmacy/ui/style/app_colors.dart';
import 'package:pharmacy/ui/widget/product_labels_widget.dart';

class ProductWidget extends StatelessWidget {
  final Product item;

  final ValueChanged<Product> onTap;
  final bool rounded;

  const ProductWidget({
    Key? key,
    required this.item,
    required this.onTap,
    this.rounded = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BorderRadiusGeometry borderRadius = BorderRadius.zero;
    if (rounded) {
      borderRadius = const BorderRadius.only(
        topRight: Radius.circular(14),
        topLeft: Radius.circular(14),
        bottomLeft: Radius.circular(14),
      );
    }
    return GestureDetector(
      onTap: () {
        onTap(item);
      },
      child: Container(
        padding: const EdgeInsets.only(
          top: 8,
          left: 8,
        ),
        decoration: BoxDecoration(
          color: AppColors.grayscaleWhiteColor,
          border: Border.all(color: AppColors.grayscaleDividerColor, width: 0.5),
          borderRadius: borderRadius,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ProductLabelWidget(
              needReceipt: item.requireReceipt,
              withDiscount: item.discount > 0,
            ),
            const Spacer(),
            Center(
              child: Image.network(
                item.image ,
                height: 150,
                errorBuilder: (context, error, stackTrace) => SvgPicture.asset(
                  "assets/images/drug_placeholder.svg",
                  width: 100,
                ),
              ),
            ),
            const Spacer(),
            Text(
              item.name,
              style: const TextStyle(
                overflow: TextOverflow.ellipsis,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              item.origin,
              style: const TextStyle(
                overflow: TextOverflow.ellipsis,
                fontSize: 10,
                color: AppColors.textSecondaryColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "\$ ${item.price - item.discount}",
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        color: AppColors.textPrimaryColor,
                      ),
                    ),
                    Visibility(
                      visible: item.discount > 0,
                      child: Text(
                        "\$ ${item.price}",
                        style: const TextStyle(
                          fontSize: 10,
                          color: AppColors.textSecondaryColor,
                          decoration: TextDecoration.lineThrough,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                Material(
                  color: AppColors.colorAccentLight,
                  clipBehavior: Clip.hardEdge,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(14),
                    ),
                  ),
                  child: InkResponse(
                    onTap: () {
                      // todo add cart support
                    },
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      child: SvgPicture.asset("assets/icons/ic_add_cart.svg"),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
