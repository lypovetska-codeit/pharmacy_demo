import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy/domain/model/app_locale.dart';
import 'package:pharmacy/domain/repo/user_repo.dart';
import 'package:pharmacy/ui/locale/locale_event.dart';
import 'package:pharmacy/ui/locale/locale_state.dart';
import 'package:rxdart/rxdart.dart';

class LocaleBloc extends Bloc<LocaleEvent, LocaleState> {
  final UserRepo _userRepo;
  final _subscription = CompositeSubscription();

  LocaleBloc(this._userRepo) : super(LocaleState(AppLocale.en, null)) {
    on<LocaleEvent>(
      (event, emit) async => event.map(
        changeLocale: (event) async => _changeLocale(event, emit),
        onLocaleChanged: (event) async => _onLocaleChanged(event, emit),
      ),
    );
    _subscription.add(
      _userRepo.subscribeToLocale().listen((element) {
        add(LocaleEvent.onLocaleChanged(element));
      }),
    );
  }

  Future<void> _onLocaleChanged(OnLocaleChanged event, Emitter<LocaleState> emit) async {
    emit(state.copyWith(locale: event.locale, error: null));
  }

  Future<void> _changeLocale(ChangeLocale event, Emitter<LocaleState> emit) async {
    emit(state.copyWith(error: null));
    try {
      if (event.locale != state.locale) {
        await _userRepo.setLocale(event.locale);
      }
    } catch (e) {
      emit(state.copyWith(error: e));
    }
  }

  @override
  Future<void> close() {
    _subscription.dispose();
    return super.close();
  }
}
