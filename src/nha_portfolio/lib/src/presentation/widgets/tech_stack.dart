import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nha_portfolio/src/domain/entity/tech_stack_enum.dart';
import 'package:nha_portfolio/src/helpers/ext/tech_stack_ext.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TechStack extends StatelessWidget {
  const TechStack({super.key, required this.techStack});

  final TechStackEnum techStack;

  @override
  Widget build(BuildContext context) {
    final size = getValueForScreenType(
      context: context,
      mobile: 32,
      tablet: 38,
      desktop: 56.w,
    ).toDouble();
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        techStack.assetGenImage.image(
          width: size,
          height: size,
          cacheHeight: 56,
          cacheWidth: 56,
        ),
        SizedBox(
          height:getValueForScreenType(context: context, mobile: 6, desktop:  8.w),
        ),
        Text(
          techStack.name,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: getValueForScreenType(
              context: context,
              mobile: 10,
              desktop: 14.sp,
            ),
          ),
        ),
      ],
    );
  }
}
