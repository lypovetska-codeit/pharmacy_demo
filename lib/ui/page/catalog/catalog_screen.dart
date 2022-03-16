// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pharmacy/build_context_extensions.dart';
import 'package:pharmacy/domain/model/product.dart';
import 'package:pharmacy/ui/navigation/main_nav_bloc.dart';
import 'package:pharmacy/ui/navigation/main_nav_event.dart';
import 'package:pharmacy/ui/navigation/main_nav_item.dart';
import 'package:pharmacy/ui/page/catalog/catalog_bloc.dart';
import 'package:pharmacy/ui/page/catalog/catalog_event.dart';
import 'package:pharmacy/ui/page/catalog/paginated_product_list.dart';
import 'package:pharmacy/ui/style/app_colors.dart';
import 'package:pharmacy/ui/style/app_style.dart';
import 'package:pharmacy/ui/widget/badged_button.dart';
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
  final PagingController<int, Product> _pagingController = PagingController(firstPageKey: 1);

  @override
  void didChangeDependencies() {
    _pagingController.addPageRequestListener(
      (pageKey) => context.read<CatalogBloc>().add(CatalogEvent(pageKey)),
    );
    super.didChangeDependencies();
  }

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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: Row(
                children: [
                  Expanded(
                    child: IconedButtonSmall(
                      onPressed: () {},
                      title: "FILTER",
                      icon: SvgPicture.asset("assets/icons/ic_filter.svg"),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: IconedButtonSmall(
                      onPressed: () {},
                      title: "BY RATING",
                      icon: SvgPicture.asset("assets/icons/ic_sort.svg"),
                    ),
                  ),
                ],
              ),
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
            BadgedButton(
              icon: SvgPicture.asset("assets/icons/ic_cart.svg"),
              counter: 10,
              onTap: () {
                // todo add to cart
              },
            ),
            const SizedBox(width: 16),
          ],
        )
      ],
    );
  }
}
