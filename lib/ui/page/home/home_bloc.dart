import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy/ui/page/home/home_event.dart';
import 'package:pharmacy/ui/page/home/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.loading()) {
    on<HomeEvent>(_load);
    add(HomeEvent());
  }

  Future<void> _load(HomeEvent event, Emitter<HomeState> emit) async {
    emit(HomeState.loading());
    await Future<void>.delayed(const Duration(milliseconds: 400));
    emit(HomeState.loaded());
  }
}
