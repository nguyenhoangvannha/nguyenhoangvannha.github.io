import 'package:nha_portfolio/src/assets/generated/assets.gen.dart';
import 'package:nha_portfolio/src/domain/entity/framework.dart';

extension FrameworkExt on Framework {
  AssetGenImage get asset =>
      switch(this) {
        Framework.flutter => Assets.icons.icons8Flutter48,
        Framework.android => Assets.icons.icons8Android48,
        Framework.reactNative => Assets.icons.logosReact,
        Framework.nodeJS => Assets.icons.icons8Nodejs48,
      };
}