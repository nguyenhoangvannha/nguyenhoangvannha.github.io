import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nha_portfolio/src/presentation/widgets/contacts.dart';
import 'package:nha_portfolio/src/presentation/widgets/make_with.dart';
import 'package:nha_portfolio/src/presentation/widgets/projects.dart';
import 'package:nha_portfolio/src/presentation/widgets/sumary.dart';
import 'package:nha_portfolio/src/presentation/widgets/tech_stacks.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({
    super.key,
    this.padding = const EdgeInsets.all(80.0),
    this.onPressedDownloadCV,
  });

  final EdgeInsetsGeometry padding;
  final Function()? onPressedDownloadCV;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Sumary(
              onPressedDownloadCV: onPressedDownloadCV,
            ),
            SizedBox(height: 100.w),
            TechStacks(),
            SizedBox(height: 64.w),
            Projects(),
            SizedBox(height: 100.w),
            Contacts(),
            Divider(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12.w),
              child: MakeWith(),
            ),
          ],
        ),
      ),
    );
  }
}
