import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nha_portfolio/src/assets/colors.dart';
import 'package:nha_portfolio/src/assets/generated/assets.gen.dart';
import 'package:nha_portfolio/src/domain/entity/award.dart';
import 'package:nha_portfolio/src/helpers/ext/context_ext.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:timeline_tile/timeline_tile.dart';

class AwardHistoryList extends StatelessWidget {
  const AwardHistoryList({super.key});

  @override
  Widget build(BuildContext context) {
    final awardHistorySet = {
      Award(
        title: "Manabian of the month award",
        descriptions: {
          'In recognition of bloody good performance and have lived and breathed the Manabie way. Has been chosen from ~30 team members.',
        },
      )
    };

    final indicatorSize =
        getValueForScreenType(context: context, mobile: 24.w, desktop: 40.w);
    final lineThickness =
        getValueForScreenType(context: context, mobile: 2.w, desktop: 4.w);

    return Column(
      children: awardHistorySet
          .map(
            (awardHistory) => TimelineTile(
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
                    padding: EdgeInsets.all(2.w),
                    color: MyColors.manabie,
                    child: Assets.icons.manabie.image(),
                  ),
                ),
              ),
              beforeLineStyle: LineStyle(
                color: MyColors.manabie,
                thickness: lineThickness,
              ),
              endChild: buildEndChild(context, awardHistory),
            ),
          )
          .toList(),
    );
  }

  Widget buildEndChild(
    BuildContext context,
    Award awardHistory,
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          awardHistory.title,
          style: titleStyle,
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
            children: awardHistory.descriptions
                .map(
                  (description) => buildDegree(context, description),
                )
                .toList(),
          ),
        ),
      ],
    );
  }

  Widget buildDegree(BuildContext context, String description) {
    final bodyStyle = TextStyle(
      fontSize: getValueForScreenType(
        context: context,
        mobile: 11.sp,
        tablet: 16.sp,
        desktop: 22.sp,
      ),
    );
    final titleStyle = bodyStyle;

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
            description,
            style: titleStyle,
          ),
        ),
      ],
    );
  }
}
