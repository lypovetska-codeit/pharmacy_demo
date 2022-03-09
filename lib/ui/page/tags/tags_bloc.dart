import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy/domain/repo/remote_repo.dart';
import 'package:pharmacy/ui/page/tags/tags_event.dart';
import 'package:pharmacy/ui/page/tags/tags_state.dart';

class TagsBloc extends Bloc<TagsEvent, TagsState> {
  final RemoteRepo _remoteRepo;

  TagsBloc(this._remoteRepo) : super(TagsState.loading()) {
    on<TagsEvent>(_load);
    add(TagsEvent());
  }

  Future<void> _load(TagsEvent event, Emitter<TagsState> emit) async {
    emit(TagsState.loading());
    try {
      final list = await _remoteRepo.getTags();
      emit(TagsState.loaded(list));
    } catch (e) {
      emit(TagsState.error(e));
    }
  }
}
