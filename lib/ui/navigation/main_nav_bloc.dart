import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy/ui/navigation/main_nav_event.dart';
import 'package:pharmacy/ui/navigation/main_nav_item.dart';
import 'package:pharmacy/ui/navigation/main_nav_state.dart';

class MainNavBloc extends Bloc<MainNavEvent, MainNavState> {
  MainNavBloc() : super(MainNavBloc.initialState) {
    on<MainNavEvent>(
      (event, emit) async => event.map(
        navigateToPage: (event) async => _navigateToPage(event, emit),
        navigateBack: (event) async => _navigateBack(event, emit),
      ),
    );
  }

  Future<void> _navigateToPage(NavigateToPage event, Emitter<MainNavState> emit) async {
    final items = state.items;
    items.removeWhere((element) => element == event.mainNavItem);
    items.add(event.mainNavItem);
    emit(MainNavState(items: items, key: items.valueKey));
  }

  Future<void> _navigateBack(NavigateBack event, Emitter<MainNavState> emit) async {
    final items = state.items;
    if (items.isNotEmpty) {
      items.removeLast();
      emit(state.copyWith(items: items, key: items.valueKey));
    }
  }

  static MainNavState initialState = MainNavState(
    items: Queue.of(
      [MainNavItem.mainScreen()],
    ),
    key: [MainNavItem.mainScreen()].valueKey,
  );
}

extension IterableExtension on Iterable {
  ValueKey<String> get valueKey => ValueKey<String>(last.toString() + length.toString());
}
