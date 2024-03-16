import 'package:flutter/material.dart';
import 'package:nha_portfolio/src/assets/generated/assets.gen.dart';

class MakeWith extends StatelessWidget {
  const MakeWith({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Assets.icons.icons8Flutter48.image(),
        Assets.icons.icons8Dart48.image(),
      ],
    );
  }
}
