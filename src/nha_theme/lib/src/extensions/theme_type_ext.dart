import 'package:flutter/material.dart';
import 'package:nha_theme/nha_theme.dart';

extension ThemeTypeExt on ThemeType {
  ThemeMode get themeMode => switch (this) {
        ThemeType.system => ThemeMode.system,
        ThemeType.dark => ThemeMode.dark,
        ThemeType.light => ThemeMode.light,
      };

  String localized(BuildContext context) => switch (this) {
        ThemeType.system => ThemeLocalizations.of(context).system,
        ThemeType.dark => ThemeLocalizations.of(context).dark,
        ThemeType.light => ThemeLocalizations.of(context).light,
      };
}
