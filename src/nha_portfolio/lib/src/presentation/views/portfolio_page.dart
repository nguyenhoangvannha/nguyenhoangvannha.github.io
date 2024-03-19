import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nha_portfolio/src/helpers/ext/context_ext.dart';
import 'package:nha_portfolio/src/presentation/widgets/awards_history_list.dart';
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
            PortfolioPart(
              title: context.l10n.summary,
              subTitle: "",
              child: Text(
                "I am a Mobile Engineer with 3+ years of experience in product development using Flutter and Android native. I continuously learn and apply my skills to create high-quality, performant mobile applications, while optimizing development costs and consistently delivering projects on time and within budget.",
                style: TextStyle(
                  fontSize: getValueForScreenType(
                    context: context,
                    mobile: 11.sp,
                    tablet: 18.sp,
                    desktop: 24.sp,
                  ),
                ),
              ),
            ),
            SizedBox(
                height: getValueForScreenType(
              context: context,
              mobile: 32.w,
              desktop: 64.w,
            )),
            const TechStacks(),
            SizedBox(
                height: getValueForScreenType(
              context: context,
              mobile: 32.w,
              desktop: 64.w,
            )),
            PortfolioPart(
              title: context.l10n.employment,
              subTitle: context.l10n.myProfessionalWorks,
              child: const WorkingHistoryList(),
            ),
            SizedBox(
                height: getValueForScreenType(
              context: context,
              mobile: 32.w,
              desktop: 64.w,
            )),
            SizedBox(
                height: getValueForScreenType(
              context: context,
              mobile: 32.w,
              desktop: 64.w,
            )),
            PortfolioPart(
              title: context.l10n.awards,
              subTitle: context.l10n.myAwards,
              child: const AwardHistoryList(),
            ),
            SizedBox(
                height: getValueForScreenType(
              context: context,
              mobile: 32.w,
              desktop: 64.w,
            )),
            PortfolioPart(
              title: context.l10n.education,
              subTitle: context.l10n.myProfessionalLearningExperiences,
              child: const EducationHistoryList(),
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
