import 'package:nha_portfolio/src/assets/generated/assets.gen.dart';
import 'package:nha_portfolio/src/domain/entity/tech_stack.dart';

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
  };
}