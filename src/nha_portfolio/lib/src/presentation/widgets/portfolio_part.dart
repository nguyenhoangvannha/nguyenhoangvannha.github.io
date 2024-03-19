import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PortfolioPart extends StatelessWidget {
  const PortfolioPart(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.child});

  final String title;
  final String subTitle;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: getValueForScreenType(
              context: context,
              mobile: 20,
              tablet: 22.sp,
              desktop: 32.sp,
            ),
            height: 0.5,
          ),
        ),
        SizedBox(
          height: getValueForScreenType(
            context: context,
            mobile: 16,
            desktop: 20,
          ),
        ),
        if (subTitle.isNotEmpty)
          Text(
            subTitle,
            style: TextStyle(
              fontSize: getValueForScreenType(
                context: context,
                mobile: 12,
                tablet: 16.sp,
                desktop: 20.sp,
              ),
              height: 0.7,
            ),
          ),
        if (subTitle.isNotEmpty)
          SizedBox(
            height: getValueForScreenType(
              context: context,
              mobile: 28,
              desktop: 52.w,
            ),
          ),
        child,
      ],
    );
  }
}
