import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nha_portfolio/src/assets/colors.dart';
import 'package:nha_portfolio/src/assets/generated/assets.gen.dart';
import 'package:nha_portfolio/src/domain/entity/education_history.dart';
import 'package:nha_portfolio/src/helpers/ext/context_ext.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:timeline_tile/timeline_tile.dart';

class EducationHistoryList extends StatelessWidget {
  const EducationHistoryList({super.key});

  @override
  Widget build(BuildContext context) {
    final educationHistorySet = {
      EducationHistory(
          schoolName: "Ho Chi Minh City - University of Science",
          startDate: DateTime(2015),
          endDate: DateTime(2019),
          degrees: {"Bachelor of Science in Software Engineering"})
    };

    final indicatorSize =
        getValueForScreenType(context: context, mobile: 24.w, desktop: 40.w);
    final lineThickness =
        getValueForScreenType(context: context, mobile: 2.w, desktop: 4.w);

    return Column(
      children: educationHistorySet
          .map(
            (educationHistory) => TimelineTile(
              alignment: TimelineAlign.start,
              lineXY: 0.1,
              isFirst: true,
              indicatorStyle: IndicatorStyle(
                indicatorXY: 0.0,
                width: indicatorSize,
                height: indicatorSize,
                color: MyColors.hcmus,
                padding: EdgeInsets.only(right: indicatorSize / 2.5),
                indicator: CircleAvatar(
                  backgroundColor: context.isDark ? Colors.white : Colors.black,
                  child: Container(
                    padding: EdgeInsets.all(2.w),
                    child: Assets.icons.hcmus.image(),
                  ),
                ),
              ),
              beforeLineStyle: LineStyle(
                color: MyColors.hcmus,
                thickness: lineThickness,
              ),
              endChild: buildEndChild(context, educationHistory),
            ),
          )
          .toList(),
    );
  }

  Widget buildEndChild(
    BuildContext context,
    EducationHistory educationHistory,
  ) {
    final yearTextStyle = TextStyle(
      fontSize: getValueForScreenType(
        context: context,
        mobile: 11.sp,
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
              educationHistory.schoolName,
              style: titleStyle,
            ),
            Text(
              "${educationHistory.startDate.year} - ${educationHistory.endDate.year}",
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
            children: educationHistory.degrees
                .map(
                  (degree) => buildDegree(context, degree),
                )
                .toList(),
          ),
        ),
      ],
    );
  }

  Widget buildDegree(BuildContext context, String degree) {
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

    return Row(
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
            degree,
            style: titleStyle,
          ),
        ),
      ],
    );
  }
}
