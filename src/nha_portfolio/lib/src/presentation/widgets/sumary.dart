import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:nha_portfolio/src/helpers/ext/context_ext.dart';
import 'package:nha_portfolio/src/presentation/widgets/avatar.dart';
import 'package:nha_portfolio/src/presentation/widgets/download_cv.dart';
import 'package:nha_portfolio/src/presentation/widgets/social.dart';

class Sumary extends StatelessWidget {
  const Sumary({super.key, this.onPressedDownloadCV});

  final Function()? onPressedDownloadCV;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.l10n.summaryParagraph(context.l10n.authorName),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: getValueForScreenType(
                  context: context,
                  desktop: 42.sp,
                  mobile: 28,
                ),
                height: 1.2,
              ),
            ),
            SizedBox(
              height: 12.w,
            ),
            Row(
              children: [
                Social(),
                DownloadCV(
                  onPressed: onPressedDownloadCV,
                ),
              ],
            )
          ],
        ),
        Spacer(),
        Avatar(
          minRadius: getValueForScreenType(
            context: context,
            mobile: 42,
            desktop: 120.w,
          ),
        ),
      ],
    );
  }
}
