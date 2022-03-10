// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

enum AppLocale {
  en,
  uk,
}

extension AppLocaleExtension on AppLocale {
  String asString() {
    switch (this) {
      case AppLocale.en:
        return "en";
      case AppLocale.uk:
        return "uk";
      default:
        return "en";
    }
  }

  String asTitle(BuildContext context) {
    switch (this) {
      case AppLocale.en:
        return AppLocalizations.of(context)!.en;
      case AppLocale.uk:
        return AppLocalizations.of(context)!.uk;
      default:
        return AppLocalizations.of(context)!.en;
    }
  }

  Locale toLocale() {
    switch (this) {
      case AppLocale.en:
        return const Locale.fromSubtags(languageCode: "en");
      case AppLocale.uk:
        return const Locale.fromSubtags(languageCode: "uk");
      default:
        return const Locale.fromSubtags(languageCode: "en");
    }
  }
}
