import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pharmacy/domain/model/app_locale.dart';

part 'locale_state.freezed.dart';

@freezed
class LocaleState with _$LocaleState {
  factory LocaleState(AppLocale locale, Object? error) = _LocaleState;
}
