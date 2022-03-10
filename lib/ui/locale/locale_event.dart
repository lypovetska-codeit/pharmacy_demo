import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pharmacy/domain/model/app_locale.dart';

part 'locale_event.freezed.dart';

@freezed
class LocaleEvent with _$LocaleEvent {
  factory LocaleEvent.changeLocale(AppLocale locale) = ChangeLocale;

  factory LocaleEvent.onLocaleChanged(AppLocale locale) = OnLocaleChanged;
}
