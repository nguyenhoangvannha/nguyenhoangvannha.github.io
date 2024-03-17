import 'package:flutter/material.dart';
import 'package:nha_portfolio/src/domain/entity/tech_stack_enum.dart';
import 'package:nha_portfolio/src/helpers/ext/tech_stack_ext.dart';

class TechStack extends StatelessWidget {
  const TechStack({super.key, required this.techStack});

  final TechStackEnum techStack;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        techStack.assetGenImage.image(
          width: 32,
          height: 32,
          cacheHeight: 32,
          cacheWidth: 32,
        ),
        SizedBox(height: 16.0,),
        Text(techStack.name, textAlign: TextAlign.center,),
      ],
    );
  }
}
