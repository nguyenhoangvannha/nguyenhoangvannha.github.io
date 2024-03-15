import 'package:nha_language/nha_language.dart';

extension StringExt on String {
  LanguageType get languageType => switch (this) {
        "en" => LanguageType.en,
        "vi" => LanguageType.vi,
        String() => LanguageType.en,
      };
}
