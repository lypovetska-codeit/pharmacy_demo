import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy/domain/repo/remote_repo.dart';
import 'package:pharmacy/ui/page/special_offers/special_offers_event.dart';
import 'package:pharmacy/ui/page/special_offers/special_offers_state.dart';

class SpecialOffersBloc extends Bloc<SpecialOffersEvent, SpecialOffersState> {
  final RemoteRepo _remoteRepo;

  SpecialOffersBloc(this._remoteRepo) : super(SpecialOffersState.loading()) {
    on<SpecialOffersEvent>(_loadOffers);
    add(SpecialOffersEvent.load());
  }

  Future<void> _loadOffers(SpecialOffersEvent event, Emitter<SpecialOffersState> emit) async {
    emit(SpecialOffersState.loading());
    try {
      final list = await _remoteRepo.getSpecialOffers();
      emit(SpecialOffersState.loaded(list));
    } catch (e) {
      emit(SpecialOffersState.error(e));
    }
  }
}
