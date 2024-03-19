import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nha_portfolio/src/assets/colors.dart';
import 'package:nha_portfolio/src/assets/generated/assets.gen.dart';
import 'package:nha_portfolio/src/domain/entity/working_history.dart';
import 'package:nha_portfolio/src/helpers/ext/context_ext.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:timeline_tile/timeline_tile.dart';

class WorkingHistoryList extends StatelessWidget {
  const WorkingHistoryList({super.key});

  @override
  Widget build(BuildContext context) {
    final workingHistorySet = {
      WorkingHistory(
          companyName: "Manabie | Global Edtech",
          employeePosition: "Mobile Engineer",
          startWorking: DateTime(2019),
          endWorking: DateTime(2023),
          projects: {
            WorkingProject(
              name: "Manabie Teacher and Manabie Learner",
              description:
                  "An SaaS Mobile (Android, iOS) and Web application providing end-to-end digital infrastructure for all educators and high-quality online and offline learning experiences for learners.",
              technologies: {
                "Flutter for cross platform development.",
                "Android, iOS, Web for implementing native functionality.",
              },
              contributions: {
                "Collaborate with a cross-functional scrum team of 7 to 21 members from Japan, Vietnam, Philippines to develop offline and online learning features.",
                "Built high-quality, modular, scalable, and testable applications implementing packages and plugins.",
                "Led a team of 2 developers in implementing go_router, fluttergen and l10n, resulting in a 75% improvement in code quality and developer productivity. Developed internal widget catalogs and auto-code generation tools to streamline development workflow.",
                "Reduced cloud recording costs by 20% by implementing Browser native a share screen for recording feature, improving user experience and platform sustainability.",
                "Reviewed code and supported new members, wrote documentation to help other members understand features faster and easier.",
                "Refactor code, do manual tests, write automation tests to ensure product quality.",
                "Setup CI/CD using Github actions for running tests, build and deploy internal tools.",
              },
            )
          })
    };

    final indicatorSize =
        getValueForScreenType(context: context, mobile: 24.w, desktop: 40.w);
    final lineThickness =
        getValueForScreenType(context: context, mobile: 2.w, desktop: 4.w);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: workingHistorySet
          .map(
            (workingHistory) => TimelineTile(
              alignment: TimelineAlign.start,
              lineXY: 0.1,
              isFirst: true,
              indicatorStyle: IndicatorStyle(
                indicatorXY: 0.0,
                width: indicatorSize,
                height: indicatorSize,
                color: MyColors.manabie,
                padding: EdgeInsets.only(right: indicatorSize / 2.5),
                indicator: CircleAvatar(
                  child: Container(
                    color: MyColors.manabie,
                    padding: EdgeInsets.all(2.w),
                    child: Assets.icons.manabie.image(),
                  ),
                ),
              ),
              beforeLineStyle: LineStyle(
                color: MyColors.manabie,
                thickness: lineThickness,
              ),
              endChild: buildEndChild(context, workingHistory),
            ),
          )
          .toList(),
    );
  }

  Widget buildEndChild(
    BuildContext context,
    WorkingHistory workingHistory,
  ) {
    final yearTextStyle = TextStyle(
      fontSize: getValueForScreenType(
        context: context,
        mobile: 11,
        tablet: 18.sp,
        desktop: 24.sp,
      ),
    );
    final titleStyle = yearTextStyle.copyWith(
      fontWeight: FontWeight.bold,
    );

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              workingHistory.companyName,
              style: titleStyle,
            ),
            Text(
              workingHistory.employeePosition,
              style: titleStyle,
            ),
            Text(
              "${workingHistory.startWorking.year} - ${workingHistory.endWorking.year}",
              style: yearTextStyle,
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
              left: getValueForScreenType(
                context: context,
                mobile: 8.w,
                desktop: 16.w,
              ),
              top: getValueForScreenType(
                context: context,
                mobile: 2.w,
                tablet: 4.w,
                desktop: 6.w,
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: workingHistory.projects
                .map(
                  (project) => buildProject(context, project),
                )
                .toList(),
          ),
        ),
      ],
    );
  }

  Widget buildProject(BuildContext context, WorkingProject project) {
    final paddingLeft = getValueForScreenType(
      context: context,
      mobile: 6.w,
      tablet: 14.w,
      desktop: 24.w,
    );
    final paddingTop = 2.w;
    final bodyStyle = TextStyle(
      fontSize: getValueForScreenType(
        context: context,
        mobile: 11.sp,
        tablet: 16.sp,
        desktop: 22.sp,
      ),
    );
    final titleStyle = bodyStyle.copyWith(
      fontWeight: FontWeight.bold,
    );

    final dotPadding = getValueForScreenType(
      context: context,
      mobile: 4.w,
      tablet: 8.w,
      desktop: 16.w,
    );
    final dotSize = getValueForScreenType(
        context: context, mobile: 4.w, desktop: 8.w, tablet: 6.w);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              context.l10n.project_,
              style: titleStyle,
            ),
            Text(project.name, style: bodyStyle),
          ],
        ),
        Padding(
            padding: EdgeInsets.only(left: paddingLeft, top: paddingTop),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.circle,
                      size: dotSize,
                    ),
                    SizedBox(
                      width: dotPadding,
                    ),
                    Flexible(
                      child: Text(
                        context.l10n.description_,
                        style: titleStyle,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: paddingLeft),
                  child: Text(
                    project.description,
                    style: bodyStyle,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.circle,
                      size: dotSize,
                    ),
                    SizedBox(
                      width: dotPadding,
                    ),
                    Text(
                      context.l10n.technologies_,
                      style: titleStyle,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: paddingLeft),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: project.technologies
                        .map((technology) => Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.circle_outlined,
                                  size: dotSize,
                                ),
                                SizedBox(
                                  width: dotPadding,
                                ),
                                Flexible(
                                    child: Text(
                                  technology,
                                  style: bodyStyle,
                                )),
                              ],
                            ))
                        .toList(),
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.circle,
                      size: dotSize,
                    ),
                    SizedBox(
                      width: dotPadding,
                    ),
                    Text(
                      context.l10n.contribution_,
                      style: titleStyle,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: paddingLeft),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: project.contributions
                        .map((contribution) => Row(
                              children: [
                                Icon(
                                  Icons.circle_outlined,
                                  size: dotSize,
                                ),
                                SizedBox(
                                  width: dotPadding,
                                ),
                                Flexible(
                                    child: Text(
                                  contribution,
                                  style: bodyStyle,
                                )),
                              ],
                            ))
                        .toList(),
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
