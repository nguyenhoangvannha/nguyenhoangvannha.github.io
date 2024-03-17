import 'package:flutter/material.dart';
import 'package:nha_portfolio/src/assets/generated/assets.gen.dart';
import 'package:nha_portfolio/src/helpers/ext/context_ext.dart';

class MakeWith extends StatelessWidget {
  const MakeWith({super.key});

  @override
  Widget build(BuildContext context) {
    final size  = 28.0;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(context.l10n.makeByAndWith(context.l10n.authorName)),
        SizedBox(width: 4,),
        Assets.icons.icons8Flutter48.image(
          width: size,
          height: size,
        ),
        Assets.icons.icons8Dart48.image(       width: size,
          height: size,),
      ],
    );
  }
}
