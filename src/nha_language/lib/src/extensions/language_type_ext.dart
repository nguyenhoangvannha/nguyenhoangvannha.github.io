import 'package:flutter/material.dart';
import 'package:nha_language/nha_language.dart';

extension LanguageTypeExt on LanguageType {
  String localized(BuildContext context) => switch (this) {
        LanguageType.en => LanguageLocalizations.of(context).english,
        LanguageType.vi => LanguageLocalizations.of(context).vietnamese,
      };
}
