import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pharmacy/build_context_extensions.dart';
import 'package:pharmacy/domain/model/cart_product.dart';
import 'package:pharmacy/ui/page/cart/cart_bloc.dart';
import 'package:pharmacy/ui/page/cart/cart_event.dart';
import 'package:pharmacy/ui/style/app_colors.dart';
import 'package:pharmacy/ui/style/app_style.dart';
import 'package:pharmacy/ui/widget/count_button.dart';

class CartItemWidget extends StatelessWidget {
  final CartProduct item;

  const CartItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: const [BoxShadow(color: Color(0x0a1d2482), offset: Offset(0, 4), blurRadius: 12)],
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 68,
                  height: 68,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color: AppColors.grayscaleDividerColor),
                  ),
                  child: Image.network(
                    item.product.image,
                    errorBuilder: (context, error, stackTrace) => SvgPicture.asset(
                      "assets/images/drug_placeholder.svg",
                      width: 44,
                      height: 44,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(item.product.name),
                    if (item.product.requireReceipt)
                      Text(
                        context.l10n.prescription,
                        style: const TextStyle(color: AppColors.destructiveColor, fontSize: 10),
                      ),
                    Row(
                      children: [
                        Text(
                          context.l10n.price,
                          style: const TextStyle(
                            color: AppColors.textSecondaryColor,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          item.product.price.toStringAsFixed(1),
                          style: const TextStyle(
                            color: AppColors.textPrimaryColor,
                            fontSize: 12,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    context.read<CartBloc>().add(CartEvent.deleteFromCart(item.product.id));
                  },
                  child: SvgPicture.asset("assets/icons/ic_close.svg"),
                )
              ],
            ),
            Row(
              children: [
                CountButton(
                  initialValue: item.count,
                  onChange: (value) {
                    context.read<CartBloc>().add(CartEvent.addToCart(item.copyWith(count: value)));
                  },
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      context.l10n.total,
                      style: const TextStyle(fontSize: 10, color: AppColors.textSecondaryColor),
                    ),
                    Text(
                      (item.count * item.product.price).toStringAsFixed(2),
                      style: AppStyle.textStylePrimaryBold,
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
