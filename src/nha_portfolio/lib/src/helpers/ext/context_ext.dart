import 'package:flutter/material.dart';
import 'package:nha_portfolio/src/l10n/generated/app_localizations.dart';

extension ContextExt on BuildContext {
  PortfolioLocalizations get l10n => PortfolioLocalizations.of(this);
  ThemeData get themeData => Theme.of(this);
  bool get isDark => themeData.brightness == Brightness.dark;
}
