import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:nha_portfolio/src/domain/entity/tech_stack_enum.dart';
import 'package:nha_portfolio/src/helpers/ext/context_ext.dart';
import 'package:nha_portfolio/src/presentation/widgets/portfolio_part.dart';
import 'package:nha_portfolio/src/presentation/widgets/tech_stack.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TechStacks extends StatelessWidget {
  const TechStacks({super.key});

  @override
  Widget build(BuildContext context) {
    const stacks = TechStackEnum.values;

    return PortfolioPart(
      title: context.l10n.myTechStack,
      subTitle: context.l10n.technologiesIVeBeenWorkingWithRecently,
      child: GridView(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:
              getValueForScreenType(context: context, mobile: 4, tablet: 6),
          childAspectRatio: getValueForScreenType(
            context: context,
            mobile: 1,
            tablet: 1.2,
            desktop: 1.5.w,
          ),
        ),
        children: stacks.map((e) => TechStack(techStack: e)).toList(),
      ),
    );
  }
}
