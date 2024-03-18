import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:nha_portfolio/src/presentation/widgets/contacts.dart';
import 'package:nha_portfolio/src/presentation/widgets/education_history_list.dart';
import 'package:nha_portfolio/src/presentation/widgets/make_with.dart';
import 'package:nha_portfolio/src/presentation/widgets/portfolio_part.dart';
import 'package:nha_portfolio/src/presentation/widgets/projects.dart';
import 'package:nha_portfolio/src/presentation/widgets/sumary.dart';
import 'package:nha_portfolio/src/presentation/widgets/tech_stacks.dart';
import 'package:nha_portfolio/src/presentation/widgets/working_history_list.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({
    super.key,
    this.padding = const EdgeInsets.all(0.0),
    this.onPressedDownloadCV,
    this.onProjectTap,
  });

  final EdgeInsetsGeometry padding;
  final Function()? onPressedDownloadCV;
  final Function(String id)? onProjectTap;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Sumary(onPressedDownloadCV: onPressedDownloadCV),
            SizedBox(
              height: getValueForScreenType(
                context: context,
                mobile: 60.w,
                desktop: 140.w,
              ),
            ),
            const TechStacks(),
            SizedBox(
                height: getValueForScreenType(
              context: context,
              mobile: 32.w,
              desktop: 64.w,
            )),
            PortfolioPart(
              title: "Employment",
              subTitle: "My profesional works",
              child: WorkingHistoryList(),
            ),
            SizedBox(
                height: getValueForScreenType(
              context: context,
              mobile: 32.w,
              desktop: 64.w,
            )),SizedBox(
                height: getValueForScreenType(
              context: context,
              mobile: 32.w,
              desktop: 64.w,
            )),
            PortfolioPart(
              title: "Education",
              subTitle: "My profesional learning experiences",
              child: EducationHistoryList(),
            ),
            SizedBox(
                height: getValueForScreenType(
              context: context,
              mobile: 32.w,
              desktop: 64.w,
            )),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getValueForScreenType(
                context: context,
                mobile: 0,
                desktop: 76.w,
              )),
              child: Projects(
                onProjectTap: onProjectTap,
              ),
            ),
            SizedBox(height: 80.w),
            const Contacts(),
            const Divider(),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: MakeWith(),
            ),
          ],
        ),
      ),
    );
  }
}
