import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nha_portfolio/src/helpers/consts/consts.dart';
import 'package:nha_portfolio/src/helpers/ext/context_ext.dart';
import 'package:nha_portfolio/src/presentation/widgets/social.dart';
import 'package:url_launcher/url_launcher.dart';

class Contacts extends StatelessWidget {
  const Contacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Text(
          "{ ${context.l10n.authorName} }",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(),
        TextButton(
          onPressed: () {
            launchUrl(Uri.parse("tel:" + Consts.authorPhone));
          },
          child: Text(
            Consts.authorPhone,
            style: TextStyle(fontSize: 12),
          ),
        ),
        SizedBox(
          width: 12.w,
        ),
        TextButton(
          onPressed: () {
            launchUrl(Uri.parse("mailto:" + Consts.authorEmail));
          },
          child: Text(
            Consts.authorEmail,
            style: TextStyle(fontSize: 12),
          ),
        ),
        SizedBox(
          width: 20.w,
        ),
        Social(
          email: false,
          phone: false,
        ),
      ],
    );
  }
}
