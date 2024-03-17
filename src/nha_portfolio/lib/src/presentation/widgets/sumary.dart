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
                fontSize: 42.sp,
                height: 1.2,
              ),
            ),
            SizedBox(height: 12.w,),
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
          minRadius: 120.w,
        ),
      ],
    );
  }
}
