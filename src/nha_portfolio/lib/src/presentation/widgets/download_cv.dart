import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nha_portfolio/src/helpers/ext/context_ext.dart';

class DownloadCV extends StatelessWidget {
  const DownloadCV({super.key, this.onPressed});

  final  Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.attach_file,
            size: 28.w,
          ),
          SizedBox(
            width: 8.w,
          ),
          Text(
            context.l10n.downloadCV,
            style: TextStyle(
              fontSize: 20.sp,
              decoration: TextDecoration.underline,
            ),
          )
        ],
      ),
    );
  }
}
