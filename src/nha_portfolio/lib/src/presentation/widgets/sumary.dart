import 'package:flutter/material.dart';
import 'package:nha_portfolio/src/helpers/ext/context_ext.dart';
import 'package:nha_portfolio/src/presentation/widgets/avatar.dart';
import 'package:nha_portfolio/src/presentation/widgets/social.dart';

class Sumary extends StatelessWidget {
  const Sumary({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(context.l10n.summaryParagraph(context.l10n.authorName)),
            Social(),
          ],
        ),
        const Avatar(),
      ],
    );
  }
}
