import 'package:flutter/material.dart';

import 'package:nha_portfolio/src/presentation/widgets/contacts.dart';
import 'package:nha_portfolio/src/presentation/widgets/make_with.dart';
import 'package:nha_portfolio/src/presentation/widgets/projects.dart';
import 'package:nha_portfolio/src/presentation/widgets/sumary.dart';
import 'package:nha_portfolio/src/presentation/widgets/tech_stacks.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({
    super.key,
    this.padding = const EdgeInsets.all(0.0),
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
            Sumary(onPressedDownloadCV: onPressedDownloadCV),
            SizedBox(
              height: getValueForScreenType(
                context: context,
                mobile: 60,
                desktop: 140,
              ),
            ),
            TechStacks(),
            SizedBox(
                height: getValueForScreenType(
              context: context,
              mobile: 42,
              desktop: 64,
            )),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getValueForScreenType(
                context: context,
                mobile: 0,
                desktop: 76,
              )),
              child: Projects(),
            ),
            SizedBox(height: 100),
            Contacts(),
            Divider(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: MakeWith(),
            ),
          ],
        ),
      ),
    );
  }
}
