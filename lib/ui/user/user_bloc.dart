import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy/domain/repo/user_repo.dart';
import 'package:pharmacy/ui/user/user_event.dart';
import 'package:pharmacy/ui/user/user_state.dart';
import 'package:rxdart/rxdart.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepo _userRepo;
  final _subscription = CompositeSubscription();

  UserBloc(this._userRepo) : super(UserState.loading()) {
    on<UserEvent>(
      (event, emit) async => event.map(
        authorize: (event) async => _authorize(event, emit),
        logout: (event) async => _logout(event, emit),
        onUserChange: (event) async => _userChanged(event, emit),
      ),
    );
    _subscription.add(
      _userRepo.subscribeToCurrentProfile().listen((value) {
        add(UserEvent.onUserChange(value));
      }),
    );
  }

  Future<void> _authorize(AuthorizeEvent event, Emitter<UserState> emit) async {
    emit(UserState.loading());
    await _userRepo.authorize();
  }

  Future<void> _logout(LogoutEvent event, Emitter<UserState> emit) async {
    emit(UserState.loading());
    await _userRepo.logout();
  }

  Future<void> _userChanged(OnUserChangeEvent event, Emitter<UserState> emit) async {
    emit(UserState.loaded(event.user));
  }

  @override
  Future<void> close() {
    _subscription.dispose();
    return super.close();
  }
}
