import 'package:nha_theme/nha_theme.dart';

extension IntExt on int {
  ThemeType get themeType => switch (this) {
        0 => ThemeType.system,
        1 => ThemeType.dark,
        2 => ThemeType.light,
        int() => ThemeType.system,
      };
}
