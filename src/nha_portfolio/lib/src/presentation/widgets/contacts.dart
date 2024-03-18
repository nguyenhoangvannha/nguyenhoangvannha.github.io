import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:nha_portfolio/src/helpers/consts/consts.dart';
import 'package:nha_portfolio/src/helpers/ext/context_ext.dart';
import 'package:nha_portfolio/src/presentation/widgets/social.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class Contacts extends StatelessWidget {
  const Contacts({super.key});

  @override
  Widget build(BuildContext context) {
    final children = [
      Text(
        "{ ${context.l10n.authorName} }",
        style: TextStyle(
          fontSize: getValueForScreenType(
            context: context,
            mobile: 16,
            desktop: 22.sp,
          ),
          fontWeight: FontWeight.bold,
        ),
      ),
      getValueForScreenType(
          context: context, mobile: SizedBox.shrink(), desktop: Spacer()),
      TextButton(
        onPressed: () {
          launchUrl(Uri.parse("tel:" + Consts.authorPhone));
        },
        child: Text(
          Consts.authorPhone,
          style: TextStyle(
            fontSize: getValueForScreenType(
              context: context,
              mobile: 12,
              desktop: 15.sp,
            ),
          ),
        ),
      ),
      SizedBox(
        width: 12,
      ),
      TextButton(
        onPressed: () {
          launchUrl(Uri.parse("mailto:" + Consts.authorEmail));
        },
        child: Text(
          Consts.authorEmail,
          style: TextStyle(
            fontSize: getValueForScreenType(
              context: context,
              mobile: 12,
              desktop: 16.sp,
            ),
          ),
        ),
      ),
      SizedBox(
        width: 20,
      ),
      Social(
        email: false,
        phone: false,
      ),
    ];
    return getValueForScreenType(
        context: context,
        mobile: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: children,
        ),
        desktop: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: children,
        ));
  }
}
