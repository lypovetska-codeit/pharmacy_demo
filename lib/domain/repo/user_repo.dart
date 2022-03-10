import 'package:pharmacy/domain/model/app_locale.dart';
import 'package:rxdart/rxdart.dart';

abstract class UserRepo {
  BehaviorSubject<AppLocale> subscribeToLocale();

  Future<void> setLocale(AppLocale locale);
}
