import 'package:flutter/material.dart';
import 'package:nha_portfolio/src/assets/generated/assets.gen.dart';

class Social extends StatelessWidget {
  const Social({super.key});

  @override
  Widget build(BuildContext context) {
    final size = 32.0;
    return  Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(onPressed: () {}, icon: Assets.icons.github.image(width: size, height: size)),
        IconButton(onPressed: () {}, icon: Assets.icons.linkedin.image(width: size, height: size)),
        IconButton(onPressed: () {}, icon: Assets.icons.icons8Gmail48.image(width: size, height: size)),
      ],
    );
  }
}
