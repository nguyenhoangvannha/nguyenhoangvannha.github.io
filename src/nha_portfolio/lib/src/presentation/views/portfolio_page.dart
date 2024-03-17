import 'package:flutter/material.dart';
import 'package:nha_portfolio/src/presentation/widgets/contacts.dart';
import 'package:nha_portfolio/src/presentation/widgets/make_with.dart';
import 'package:nha_portfolio/src/presentation/widgets/projects.dart';
import 'package:nha_portfolio/src/presentation/widgets/sumary.dart';
import 'package:nha_portfolio/src/presentation/widgets/tech_stacks.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({
    super.key,
    this.padding = const EdgeInsets.all(80.0),
  });

  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Sumary(),
            SizedBox(height: 120,),
            TechStacks(),
            SizedBox(
              height: 84,
            ),
            Projects(),
            SizedBox(
              height: 84,
            ),
            Contacts(),
            Divider(),
            SizedBox(
              height: 8,
            ),
            MakeWith(),
          ],
        ),
      ),
    );
  }
}
