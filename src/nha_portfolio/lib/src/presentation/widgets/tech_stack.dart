import 'package:flutter/material.dart';
import 'package:nha_portfolio/src/domain/entity/tech_stack.dart';
import 'package:nha_portfolio/src/helpers/ext/context_ext.dart';
import 'package:nha_portfolio/src/helpers/ext/tech_stack_ext.dart';

class TechStack extends StatelessWidget {
  const TechStack({super.key});

  @override
  Widget build(BuildContext context) {
    const stacks = TechStackEnum.values;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          context.l10n.myTechStack,
          style: context.themeData.textTheme.headlineLarge,
        ),
        Text(
          context.l10n.technologiesIVeBeenWorkingWithRecently,
          style: context.themeData.textTheme.labelLarge,
        ),
        GridView.builder(
          shrinkWrap: true,
          itemCount: TechStackEnum.values.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 6,
            mainAxisSpacing: 32,
            crossAxisSpacing: 32,
          ),
          itemBuilder: (context, index) {
            return SizedBox(
              width: 32,
              height: 32,
              child: stacks[index].assetGenImage.image(
                    width: 32,
                    height: 32,
                  ),
            );
          },
        ),
      ],
    );
  }
}
