import 'package:flutter/material.dart';
import 'package:pharmacy/build_context_extensions.dart';
import 'package:pharmacy/domain/model/product.dart';
import 'package:pharmacy/domain/model/product_widget.dart';
import 'package:pharmacy/ui/style/app_colors.dart';
import 'package:pharmacy/ui/widget/screen_default_wrapper.dart';

class ProductScreen extends StatelessWidget {
  final Product product;

  const ProductScreen(this.product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: ScreenDefaultWrapper(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: SizedBox(
            width: double.infinity,
            height: 400,
            child: ProductWidget(
              rounded: true,
              item: product,
              onTap: (_) {
                //do nothing
              },
            ),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      toolbarHeight: 70,
      automaticallyImplyLeading: false,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          // context.read<MainNavBloc>().add(MainNavEvent.navigateBack());
          Navigator.pop(context);
        },
      ),
      backgroundColor: AppColors.colorPrimary,
      title: Text(
        context.l10n.productPageTitle,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
