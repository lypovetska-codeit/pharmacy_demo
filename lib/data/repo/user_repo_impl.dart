import 'package:pharmacy/domain/model/app_locale.dart';
import 'package:pharmacy/domain/repo/user_repo.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserRepoImpl extends UserRepo {
  final BehaviorSubject<AppLocale> _locale = BehaviorSubject.seeded(AppLocale.uk);

  UserRepoImpl() {
    _init();
  }

  @override
  BehaviorSubject<AppLocale> subscribeToLocale() {
    return _locale;
  }

  @override
  Future<void> setLocale(AppLocale locale) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(localeNameKey, locale.asString());
    _locale.value = locale;
  }

  Future<AppLocale?> _getLocale() async {
    final prefs = await SharedPreferences.getInstance();
    final key = prefs.getString(localeNameKey);
    switch (key) {
      case "uk":
        return AppLocale.uk;
      case "ua":
        return AppLocale.en;
      default:
        return null;
    }
  }

  Future<void> _init() async {
    final initialLocale = await _getLocale();
    _locale.add(initialLocale ?? AppLocale.en);
  }

  static const localeNameKey = "LOCALE_NAME_KEY";
}
