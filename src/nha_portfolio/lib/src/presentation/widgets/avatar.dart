import 'package:flutter/material.dart';
import 'package:nha_portfolio/src/assets/generated/assets.gen.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key, this.minRadius = 100.0});

  final double minRadius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      foregroundImage: Assets.images.avatarWork.provider(),
      backgroundColor: Colors.red,
      minRadius: minRadius,
    );
  }
}
