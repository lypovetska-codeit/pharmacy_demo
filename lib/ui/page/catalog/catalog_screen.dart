// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pharmacy/domain/model/product.dart';
import 'package:pharmacy/ui/page/catalog/catalog_bloc.dart';
import 'package:pharmacy/ui/page/catalog/catalog_event.dart';
import 'package:pharmacy/ui/page/catalog/paginated_product_list.dart';
import 'package:pharmacy/ui/style/app_colors.dart';
import 'package:pharmacy/ui/widget/main_bottom_navigation_widget.dart';
import 'package:pharmacy/ui/widget/screen_default_wrapper.dart';
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
        appBar: _buildAppBar(context),
        bottomNavigationBar: MainBottomNavigationWidget(),
        body: const ScreenDefaultWrapper(
          child: PaginatedProductList(),
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
      backgroundColor: AppColors.colorPrimary,
      title: Text(
        AppLocalizations.of(context)!.catalogPageTitle,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
