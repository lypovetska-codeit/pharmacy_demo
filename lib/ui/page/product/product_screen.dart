import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pharmacy/domain/model/cart_product.dart';
import 'package:pharmacy/domain/model/product.dart';
import 'package:pharmacy/ui/cart/cart_bloc.dart';
import 'package:pharmacy/ui/cart/cart_event.dart';
import 'package:pharmacy/ui/cart/cart_state.dart';
import 'package:pharmacy/ui/style/app_colors.dart';
import 'package:pharmacy/ui/style/app_style.dart';
import 'package:pharmacy/ui/style/text_helper.dart';
import 'package:pharmacy/ui/widget/count_button.dart';
import 'package:pharmacy/ui/widget/screen_default_wrapper.dart';

class ProductScreen extends StatefulWidget {
  final Product product;

  const ProductScreen(this.product, {Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  int selectedCount = 1;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: const Color(0xffF7FAFF),
          body: Container(
            color: const Color(0xffF7FAFF),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: backgroundSize,
                                  color: const Color(0xffF7FAFF),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  color: AppColors.colorAccentLight,
                                  height: backgroundSize,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 100,
                            color: const Color(0xffF7FAFF),
                          ),
                        ],
                      ),
                      Positioned.fill(
                        child: Align(
                          child: Container(
                            width: 245,
                            height: 245,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: const [BoxShadow(color: Color(0x141d2482), blurRadius: 8)],
                              borderRadius: BorderRadius.circular(48),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(28),
                              child: SvgPicture.asset("assets/images/product_placeholder.svg"),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 40,
                        child: IconButton(
                          icon: const Icon(Icons.arrow_back),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              widget.product.name,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: AppColors.textPrimaryColor,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              TextHelper.getProductCategoryTitle(context, widget.product.category),
                              style: const TextStyle(fontSize: 20, color: AppColors.textSecondaryColor),
                            ),
                          ],
                        ),
                        Text(
                          widget.product.origin,
                          style: const TextStyle(fontSize: 12, color: AppColors.textPrimaryColor),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        CountButton(
                          initialValue: selectedCount,
                          onChange: (int count) {
                            setState(() {
                              selectedCount = count;
                            });
                          },
                        ),
                        const Spacer(),
                        Text(
                          "\$ ${widget.product.price}",
                          style: const TextStyle(
                            fontSize: 24,
                            color: AppColors.textPrimaryColor,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "About",
                          style: TextStyle(
                            fontSize: 18,
                            color: AppColors.textPrimaryColor,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          widget.product.description,
                          style: const TextStyle(
                            fontSize: 14,
                            color: AppColors.textPrimaryColor,
                          ),
                        ),
                        const SizedBox(height: 100),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomSheet: _buildBottomSheet(context),
        );
      },
    );
  }

  Widget _buildBottomSheet(BuildContext context) {
    return ScreenDefaultWrapper(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: Row(
          children: [
            InkResponse(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: AppColors.colorPrimary),
                  color: Colors.transparent,
                ),
                padding: const EdgeInsets.all(14),
                child: SvgPicture.asset("assets/icons/ic_like.svg", width: 18, height: 16),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: OutlinedButton(
                style: AppStyle.outlineButtonAccentStyleSmall,
                onPressed: () {
                  context
                      .read<CartBloc>()
                      .add(CartEvent.addToCart(CartProduct(count: selectedCount, product: widget.product)));
                  Navigator.pop(context);
                },
                child: Text(
                  "Add to Cart",
                  style: AppStyle.textStyleOutlineButtonAccentStyleSmall,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static double backgroundSize = 300;
}
