import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nha_portfolio/src/domain/entity/tech_stack_enum.dart';
import 'package:nha_portfolio/src/helpers/ext/context_ext.dart';
import 'package:nha_portfolio/src/helpers/ext/tech_stack_ext.dart';
import 'package:nha_portfolio/src/presentation/widgets/tech_stack.dart';

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
            fontSize: 32.sp,
            height: 0.5,
          ),
        ),
        SizedBox(
          height: 20.w,
        ),
        Text(
          context.l10n.technologiesIVeBeenWorkingWithRecently,
          style: TextStyle(
            fontSize: 20.sp,
            height: 0.7,
          ),
        ),
        SizedBox(
          height: 28.w,
        ),
        GridView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 6,
          ),
          children: stacks.map((e) => TechStack(techStack: e)).toList(),
        ),
      ],
    );
  }
}
