import 'package:flutter/material.dart';
import 'package:nha_portfolio/src/assets/generated/assets.gen.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Assets.images.avatarWork.image(
      width: 300,
      height: 300,
      fit: BoxFit.fill,
    );
  }
}
