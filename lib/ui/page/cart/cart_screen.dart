import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pharmacy/build_context_extensions.dart';
import 'package:pharmacy/domain/model/cart_product.dart';
import 'package:pharmacy/ui/page/cart/cart_bloc.dart';
import 'package:pharmacy/ui/page/cart/cart_event.dart';
import 'package:pharmacy/ui/page/cart/cart_item_widget.dart';
import 'package:pharmacy/ui/page/cart/cart_state.dart';
import 'package:pharmacy/ui/style/app_colors.dart';
import 'package:pharmacy/ui/style/app_style.dart';
import 'package:pharmacy/ui/widget/dotted_text_button.dart';
import 'package:pharmacy/ui/widget/progress_widget.dart';
import 'package:pharmacy/ui/widget/screen_default_wrapper.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        return BlocListener<CartBloc, CartState>(
          listener: (context, state) => state.mapOrNull(
            error: (state) => ScaffoldMessenger.of(context).showMaterialBanner(
              MaterialBanner(content: Text("Error. ${state.error.toString()}"), actions: const []),
            ),
          ),
          child: Scaffold(
            backgroundColor: AppColors.colorPrimary,
            appBar: _buildAppBar(context),
            body: ScreenDefaultWrapper(
              child: Stack(
                children: [
                  _buildItems(context, state.cartProducts),
                  state.mapOrNull(loading: (_) => const ProgressWidget()) ?? Container()
                ],
              ),
            ),
            bottomSheet: _buildBottomSheet(context, state),
          ),
        );
      },
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      toolbarHeight: 70,
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: AppColors.colorPrimary,
      title: Text(
        context.l10n.basketPage,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: AppColors.textPrimaryColor),
      ),
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/ic_back.svg",
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: [
        Row(
          children: [
            BlocBuilder<CartBloc, CartState>(
              builder: (context, state) {
                return Visibility(
                  visible: state.cartProducts.isNotEmpty,
                  child: DottedTextButton(
                    color: AppColors.textPrimaryColor,
                    onPressed: () {
                      context.read<CartBloc>().add(CartEvent.cleanCart());
                    },
                    child: const Text(
                      "Clear",
                      style: TextStyle(
                        color: AppColors.textPrimaryColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(width: 16),
          ],
        )
      ],
    );
  }

  Widget _buildItems(BuildContext context, Set<CartProduct> cartProducts) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ListView.builder(
        itemCount: cartProducts.length,
        itemBuilder: (context, index) => CartItemWidget(item: cartProducts.toList()[index]),
      ),
    );
  }

  Widget _buildBottomSheet(BuildContext context, CartState state) {
    return ScreenDefaultWrapper(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  const Text(
                    "Goods worth",
                    style: TextStyle(
                      color: AppColors.textSecondaryColor,
                      fontSize: 14,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "\$ ${state.cartProducts.map((e) => e.count * e.product.price).sum}",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: AppColors.textPrimaryColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      style: AppStyle.outlineButtonAccentStyleSmall,
                      onPressed: state.cartProducts.isNotEmpty
                          ? () {
                              //todo process checkout
                            }
                          : null,
                      child: Text(
                        "Checkout",
                        style: AppStyle.textStyleOutlineButtonAccentStyleSmall,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
