// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pharmacy/domain/model/product.dart';
import 'package:pharmacy/domain/model/product_widget.dart';
import 'package:pharmacy/ui/navigation/main_nav_bloc.dart';
import 'package:pharmacy/ui/navigation/main_nav_event.dart';
import 'package:pharmacy/ui/navigation/main_nav_item.dart';
import 'package:pharmacy/ui/page/catalog/catalog_bloc.dart';
import 'package:pharmacy/ui/page/catalog/catalog_event.dart';
import 'package:pharmacy/ui/page/catalog/catalog_state.dart';
import 'package:pharmacy/ui/widget/empty_result_retry_widget.dart';

class PaginatedProductList extends StatefulWidget {
  const PaginatedProductList({Key? key}) : super(key: key);

  @override
  _PaginatedProductListState createState() => _PaginatedProductListState();
}

class _PaginatedProductListState extends State<PaginatedProductList> {
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
    return BlocListener<CatalogBloc, CatalogState>(
      listener: (context, state) {
        state.map(
          loaded: (state) {
            try {
              final isLastPage = state.page.current == state.page.next;
              if (isLastPage) {
                _pagingController.appendLastPage(state.items);
              } else {
                _pagingController.appendPage(state.items, state.page.next);
              }
            } catch (error) {
              _pagingController.error = error;
            }
          },
          loadedInitial: (state) {
            _pagingController.value = PagingState(
              nextPageKey: state.page.next,
              itemList: state.items,
            );
          },
          loading: (state) {
            // do nothing
          },
          error: (state) {
            _pagingController.error = state.error;
          },
        );
      },
      child: RefreshIndicator(
        onRefresh: () => Future.sync(
          () => _pagingController.refresh(),
        ),
        child: PagedGridView(
          pagingController: _pagingController,
          builderDelegate: PagedChildBuilderDelegate<Product>(
            firstPageErrorIndicatorBuilder: (_) => EmptyResultRetry(
              onRetry: () {
                _pagingController.retryLastFailedRequest();
              },
              error: AppLocalizations.of(context)!.generalErrorMessage,
            ),
            newPageErrorIndicatorBuilder: (_) => EmptyResultRetry(
              onRetry: () {
                _pagingController.retryLastFailedRequest();
              },
              error: AppLocalizations.of(context)!.generalErrorMessage,
            ),
            itemBuilder: (context, item, index) => ProductWidget(
              item: item,
              onTap: (Product value) {
                context.read<MainNavBloc>().add(MainNavEvent.navigateToPage(MainNavItem.productScreen(value)));
              },
            ),
            noItemsFoundIndicatorBuilder: (context) => EmptyResultRetry(
              onRetry: () {
                _pagingController.refresh();
              },
            ),
            noMoreItemsIndicatorBuilder: (context) => Container(),
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.7,
            crossAxisCount: 2,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }
}
