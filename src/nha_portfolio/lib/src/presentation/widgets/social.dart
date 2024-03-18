import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:nha_portfolio/src/assets/generated/assets.gen.dart';
import 'package:nha_portfolio/src/helpers/consts/consts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class Social extends StatelessWidget {
  const Social({
    super.key,
    this.email = true,
    this.phone = true,
  });

  final bool email;
  final bool phone;

  @override
  Widget build(BuildContext context) {
    final cacheSize = getValueForScreenType(
      context: context,
      mobile: 18,
      desktop: 26,
    );
    final size = cacheSize.toDouble();
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (phone)
          IconButton(
              onPressed: () {
                launchUrl(Uri.parse("tel:" + Consts.authorPhone));
              },
              icon: Assets.icons.icons8Phone48.image(
                width: size,
                height: size,
                cacheWidth: cacheSize.toInt(),
                cacheHeight: cacheSize.toInt(),
              )),
        if (email)
          IconButton(
              onPressed: () {
                launchUrl(Uri.parse("mailto:" + Consts.authorEmail));
              },
              icon: Assets.icons.icons8Gmail48.image(
                width: size,
                height: size,
                cacheWidth: cacheSize.toInt(),
                cacheHeight: cacheSize.toInt(),
              )),
        IconButton(
            onPressed: () {
              launchUrl(Uri.parse(Consts.authorLinkedIn));
            },
            icon: Assets.icons.linkedin.image(
              width: size,
              height: size,
              cacheWidth: cacheSize.toInt(),
              cacheHeight: cacheSize.toInt(),
            )),
        IconButton(
            onPressed: () {
              launchUrl(Uri.parse(Consts.authorGithub));
            },
            icon: Assets.icons.github.image(
              width: size,
              height: size,
              cacheWidth: cacheSize.toInt(),
              cacheHeight: cacheSize.toInt(),
            )),
      ],
    );
  }
}
