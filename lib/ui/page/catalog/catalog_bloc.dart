import 'dart:async';

import 'package:fimber/fimber.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy/domain/model/page.dart';
import 'package:pharmacy/domain/model/paged_products.dart';
import 'package:pharmacy/domain/model/product_sort_order.dart';
import 'package:pharmacy/domain/repo/remote_repo.dart';
import 'package:pharmacy/ui/page/catalog/catalog_event.dart';
import 'package:pharmacy/ui/page/catalog/catalog_state.dart';

class CatalogBloc extends Bloc<CatalogEvent, CatalogState> {
  final RemoteRepo _remoteRepo;

  CatalogBloc(this._remoteRepo) : super(CatalogBloc.initialState) {
    on<CatalogEvent>(
      (event, emit) async => event.map(
        loadPage: (event) async => _loadPage(event, emit),
        applyFilter: (event) async => _applyFilter(event, emit),
        applySortOrder: (event) async => _applySortOrder(event, emit),
      ),
    );
  }

  Future<void> _loadPage(LoadPageEvent event, Emitter<CatalogState> emit) async {
    final page = state.page;
    final nextPage = page.copyWith(current: event.page);
    await _load(nextPage, emit);
  }

  // for page controller
  Future<void> _load(Page page, Emitter<CatalogState> emit) async {
    emit(CatalogState.loading(page: page, sortOrder: state.sortOrder, productCategories: state.productCategories));
    try {
      final PagedProducts response = await _remoteRepo.getProductList(page, state.productCategories, state.sortOrder);
      if (page.current - 1 > response.page.total / response.page.pageSize) {
        emit(
          CatalogState.loaded(
            items: [],
            page: response.page,
            sortOrder: state.sortOrder,
            productCategories: state.productCategories,
          ),
        );
      } else {
        emit(
          CatalogState.loaded(
            page: response.page,
            items: response.items,
            sortOrder: state.sortOrder,
            productCategories: state.productCategories,
          ),
        );
      }
    } catch (ex) {
      Fimber.e("Error fetching product list", ex: ex);
      emit(
        CatalogState.error(
          page: page,
          error: ex,
          sortOrder: state.sortOrder,
          productCategories: state.productCategories,
        ),
      );
    }
  }

  static CatalogState initialState = CatalogState.loading(
    page: Page(current: 0, total: 10, pageSize: 10, next: 1),
    sortOrder: ProductSortOrder.rating,
    productCategories: {},
  );

  Future<void> _applyFilter(ApplyFilterEvent event, Emitter<CatalogState> emit) async {
    emit(
      CatalogState.loading(
        page: PageExtension.initial(),
        sortOrder: state.sortOrder,
        productCategories: event.categories,
      ),
    );
  }

  Future<void> _applySortOrder(ApplySortOrderEvent event, Emitter<CatalogState> emit) async {
    emit(
      CatalogState.loading(
        page: PageExtension.initial(),
        sortOrder: event.sortOrder,
        productCategories: state.productCategories,
      ),
    );
  }
}
