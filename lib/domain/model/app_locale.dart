
import 'package:flutter/material.dart';
import 'package:pharmacy/build_context_extensions.dart';

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
        return context.l10n.en;
      case AppLocale.uk:
        return context.l10n.uk;
      default:
        return context.l10n.en;
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
