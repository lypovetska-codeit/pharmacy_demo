import 'package:pharmacy/domain/model/app_locale.dart';
import 'package:pharmacy/domain/model/user.dart';
import 'package:pharmacy/domain/model/user_id.dart';
import 'package:pharmacy/domain/repo/user_repo.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserRepoImpl extends UserRepo {
  final BehaviorSubject<AppLocale> _locale = BehaviorSubject.seeded(AppLocale.uk);

  static const localeNameKey = "LOCALE_NAME_KEY";
  final BehaviorSubject<User> _user = BehaviorSubject.seeded(User.guest());

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

  @override
  Future<void> authorize() async {
    final user = User.authorized(
      userId: UserId(123),
      firstName: "firstName",
      lastName: "lastName",
      phoneNumber: "+3806868484333",
    );
    await Future<User>.delayed(
      const Duration(milliseconds: 400),
      () {
        return _user.value = user;
      },
    );
  }

  @override
  Future<void> logout() async {
    await Future<User>.delayed(
      const Duration(milliseconds: 400),
      () => _user.value = User.guest(),
    );
  }

  @override
  BehaviorSubject<User> subscribeToCurrentProfile() {
    return _user;
  }
}
