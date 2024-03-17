import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nha_portfolio/src/domain/entity/tech_stack_enum.dart';
import 'package:nha_portfolio/src/helpers/ext/context_ext.dart';
import 'package:nha_portfolio/src/presentation/widgets/tech_stack.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TechStacks extends StatelessWidget {
  const TechStacks({super.key});

  @override
  Widget build(BuildContext context) {
    const stacks = TechStackEnum.values;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          context.l10n.myTechStack,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: getValueForScreenType(
              context: context,
              mobile: 22,
              tablet: 26,
              desktop: 30.sp,
            ),
            height: 0.5,
          ),
        ),
        SizedBox(
          height: getValueForScreenType(
            context: context,
            mobile: 16,
            desktop: 20.w,
          ),
        ),
        Text(
          context.l10n.technologiesIVeBeenWorkingWithRecently,
          style: TextStyle(
            fontSize: getValueForScreenType(
              context: context,
              mobile: 14,
              tablet: 16,
              desktop: 20.sp,
            ),
            height: 0.7,
          ),
        ),
        SizedBox(
          height: getValueForScreenType(
            context: context,
            mobile: 28,
            desktop: 42.w,
          ),
        ),
        GridView(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 6,
            mainAxisSpacing: getValueForScreenType(context: context, mobile: 10.0),
          ),
          children: stacks.map((e) => TechStack(techStack: e)).toList(),
        ),
      ],
    );
  }
}