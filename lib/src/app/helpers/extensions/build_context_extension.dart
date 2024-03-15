import 'package:flutter/material.dart';
import 'package:nguyenhoangvannha/src/l10n/app_localizations.dart';

extension BuildContextExt on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
  TextTheme get textTheme => Theme.of(this).textTheme;
}