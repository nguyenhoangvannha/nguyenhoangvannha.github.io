import 'package:nha_portfolio/src/assets/generated/assets.gen.dart';
import 'package:nha_portfolio/src/domain/entity/tech_stack_enum.dart';

extension TechStackExt on TechStackEnum {
  AssetGenImage get assetGenImage => switch (this) {
        TechStackEnum.flutter => Assets.icons.icons8Flutter48,
        TechStackEnum.dart => Assets.icons.icons8Dart48,
        TechStackEnum.android => Assets.icons.icons8Android48,
        TechStackEnum.androidStudio => Assets.icons.androidStudioStable,
        TechStackEnum.java => Assets.icons.icons8Java48,
        TechStackEnum.kotlin => Assets.icons.icons8Kotlin48,
        TechStackEnum.git => Assets.icons.icons8Git48,
        TechStackEnum.js => Assets.icons.icons8Javascript48,
        TechStackEnum.agile => Assets.icons.icons8Scrum64,
        TechStackEnum.ciCd => Assets.icons.icons8Agile264,
        TechStackEnum.vsCode => Assets.icons.icons8VisualStudioCode48,
        TechStackEnum.testing => Assets.icons.icons8Testing96,
      };

  String get name => switch (this) {
        TechStackEnum.flutter => "Flutter",
        TechStackEnum.dart => "Dart",
        TechStackEnum.android => "Android",
        TechStackEnum.androidStudio => "Android Studio",
        TechStackEnum.java => "Java",
        TechStackEnum.kotlin => "Kotlin",
        TechStackEnum.git => "Git",
        TechStackEnum.js => "Javascript",
        TechStackEnum.agile => "Agile/Scrum",
        TechStackEnum.ciCd => "CI/CD",
        TechStackEnum.vsCode => "VS Code",
        TechStackEnum.testing => "Testing",
      };
}
