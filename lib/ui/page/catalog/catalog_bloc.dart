import 'dart:async';

import 'package:fimber/fimber.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy/domain/model/page.dart';
import 'package:pharmacy/domain/model/paged_products.dart';
import 'package:pharmacy/domain/repo/remote_repo.dart';
import 'package:pharmacy/ui/page/catalog/catalog_event.dart';
import 'package:pharmacy/ui/page/catalog/catalog_state.dart';

class CatalogBloc extends Bloc<CatalogEvent, CatalogState> {
  final RemoteRepo _remoteRepo;

  CatalogBloc(this._remoteRepo) : super(CatalogBloc.initialState) {
    on<CatalogEvent>(_loadPage);
  }

  Future<void> _loadPage(CatalogEvent event, Emitter<CatalogState> emit) async {
    final page = state.page;
    final nextPage = page.copyWith(current: event.page);
    await _load(nextPage, emit);
  }

  // for page controller
  Future<void> _load(Page page, Emitter<CatalogState> emit) async {
    emit(CatalogState.loading(page: page));
    try {
      final PagedProducts response = await _remoteRepo.getProductList(page);
      if (page.current - 1 > response.page.total / response.page.pageSize) {
        emit(CatalogState.loaded(items: [], page: response.page));
      } else {
        emit(CatalogState.loaded(page: response.page, items: response.items));
      }
    } catch (ex) {
      Fimber.e("Error fetching product list", ex: ex);
      emit(CatalogState.error(page: page, error: ex));
    }
  }

  static CatalogState initialState = CatalogState.loading(page: Page(current: 0, total: 10, pageSize: 10, next: 1));
}
