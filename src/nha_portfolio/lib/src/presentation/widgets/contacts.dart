import 'package:flutter/material.dart';
import 'package:nha_portfolio/src/helpers/ext/context_ext.dart';
import 'package:nha_portfolio/src/presentation/widgets/social.dart';

class Contacts extends StatelessWidget {
  const Contacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(context.l10n.authorName),
        Social(),
      ],
    );
  }
}
