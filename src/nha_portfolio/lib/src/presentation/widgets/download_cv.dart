import 'package:flutter/material.dart';

import 'package:nha_portfolio/src/helpers/ext/context_ext.dart';
import 'package:responsive_builder/responsive_builder.dart';

class DownloadCV extends StatelessWidget {
  const DownloadCV({super.key, this.onPressed});

  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.attach_file,
            size: getValueForScreenType(
              context: context,
              mobile: 18,
              desktop: 28,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            context.l10n.downloadCV,
            style: TextStyle(
              fontSize: getValueForScreenType(
                context: context,
                mobile: 16,
                desktop: 20,
              ),
              decoration: TextDecoration.underline,
            ),
          )
        ],
      ),
    );
  }
}
