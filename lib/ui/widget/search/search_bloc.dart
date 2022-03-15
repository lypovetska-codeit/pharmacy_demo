import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy/domain/model/product.dart';
import 'package:pharmacy/domain/repo/remote_repo.dart';
import 'package:pharmacy/ui/widget/search/search_event.dart';
import 'package:pharmacy/ui/widget/search/search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final RemoteRepo _remoteRepo;

  SearchBloc(this._remoteRepo)
      : super(
          SearchState.success(
            List<Product>.empty(),
          ),
        ) {
    on<SearchEvent>(_search);
  }

  Future<void> _search(SearchEvent event, Emitter<SearchState> emit) async {
    try {
      if (event.query.length < 3) {
        event.completer.complete(
          [],
        );
      } else {
        final items = await _remoteRepo.searchProducts(event.query);
        event.completer.complete(items);
      }
      emit(state);
    } catch (e) {
      emit(SearchState.error(e));
      event.completer.complete([]);
    }
  }
}
