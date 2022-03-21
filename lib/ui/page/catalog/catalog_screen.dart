import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pharmacy/build_context_extensions.dart';
import 'package:pharmacy/domain/model/product_category.dart';
import 'package:pharmacy/domain/model/product_sort_order.dart';
import 'package:pharmacy/ui/navigation/main_nav_bloc.dart';
import 'package:pharmacy/ui/navigation/main_nav_event.dart';
import 'package:pharmacy/ui/navigation/main_nav_item.dart';
import 'package:pharmacy/ui/page/cart/cart_bloc.dart';
import 'package:pharmacy/ui/page/cart/cart_state.dart';
import 'package:pharmacy/ui/page/catalog/catalog_bloc.dart';
import 'package:pharmacy/ui/page/catalog/catalog_event.dart';
import 'package:pharmacy/ui/page/catalog/catalog_filter_widget.dart';
import 'package:pharmacy/ui/page/catalog/catalog_sort_widget.dart';
import 'package:pharmacy/ui/page/catalog/catalog_state.dart';
import 'package:pharmacy/ui/page/catalog/paginated_product_list.dart';
import 'package:pharmacy/ui/style/app_colors.dart';
import 'package:pharmacy/ui/widget/badged_button.dart';
import 'package:pharmacy/ui/widget/bottom_sheet_wrapper.dart';
import 'package:pharmacy/ui/widget/iconed_button_small.dart';
import 'package:pharmacy/ui/widget/main_bottom_navigation_widget.dart';
import 'package:pharmacy/ui/widget/screen_default_wrapper.dart';
import 'package:pharmacy/ui/widget/search/search_widget.dart';
import 'package:vicodin/vicodin.dart';

class CatalogScreen extends StatefulWidget {
  final Component appComponent;

  const CatalogScreen({Key? key, required this.appComponent}) : super(key: key);

  @override
  State<CatalogScreen> createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CatalogBloc>(
      create: (_) => widget.appComponent.resolve(),
      child: Scaffold(
        backgroundColor: AppColors.colorPrimary,
        appBar: _buildAppBar(context),
        bottomNavigationBar: MainBottomNavigationWidget(),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SearchWidget(
              onSelect: (product) {
                context.read<MainNavBloc>().add(MainNavEvent.navigateToPage(MainNavItem.productScreen(product)));
              },
              onFocus: (_) {},
              appComponent: widget.appComponent,
            ),
            BlocBuilder<CatalogBloc, CatalogState>(
              builder: (context, state) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  child: Row(
                    children: [
                      Expanded(
                        child: IconedButtonSmall(
                          onPressed: () => _openFilter(context, state.productCategories),
                          title: "FILTER",
                          icon: SvgPicture.asset("assets/icons/ic_filter.svg"),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: IconedButtonSmall(
                          onPressed: () => _openSort(context),
                          title: "BY RATING",
                          icon: SvgPicture.asset("assets/icons/ic_sort.svg"),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            const Expanded(
              child: ScreenDefaultWrapper(
                child: PaginatedProductList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      toolbarHeight: 70,
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: AppColors.colorPrimary,
      title: Text(
        context.l10n.catalogPageTitle,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: AppColors.textPrimaryColor),
      ),
      actions: [
        Row(
          children: [
            BlocBuilder<CartBloc, CartState>(
              builder: (context, state) {
                return BadgedButton(
                  icon: SvgPicture.asset("assets/icons/ic_cart.svg"),
                  counter: state.cartProducts.length,
                  onTap: () {
                   context.read<MainNavBloc>().add(MainNavEvent.navigateToPage(MainNavItem.cartScreen()));
                  },
                );
              },
            ),
            const SizedBox(width: 16),
          ],
        )
      ],
    );
  }

  Future<void> _openFilter(BuildContext parentContext, Set<ProductCategory> productCategories) async {
    final selectedProductCategories = await showModalBottomSheet<Set<ProductCategory>>(
      isScrollControlled: true,
      isDismissible: true,
      useRootNavigator: true,
      enableDrag: true,
      backgroundColor: Colors.transparent,
      context: parentContext,
      builder: (BuildContext context) {
        return BottomSheetWrapper(
          child: CatalogFilterWidget(
            initialItems: productCategories,
          ),
        );
      },
    );
    if (selectedProductCategories != null && mounted) {
      parentContext.read<CatalogBloc>().add(CatalogEvent.applyFilter(selectedProductCategories));
    }
  }

  Future<void> _openSort(BuildContext parentContext) async {
    final sortOption = await showModalBottomSheet<ProductSortOrder?>(
      isScrollControlled: true,
      isDismissible: true,
      useRootNavigator: true,
      enableDrag: true,
      backgroundColor: Colors.transparent,
      context: parentContext,
      builder: (BuildContext context) {
        return const BottomSheetWrapper(
          child: CatalogSortWidget(
            initialItem: ProductSortOrder.rating,
          ),
        );
      },
    );
    if (sortOption != null && mounted) {
      parentContext.read<CatalogBloc>().add(CatalogEvent.applySortOrder(sortOption));
    }
  }
}
