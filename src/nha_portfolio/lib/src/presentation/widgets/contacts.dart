import 'package:flutter/material.dart';
import 'package:nha_portfolio/src/helpers/consts/consts.dart';
import 'package:nha_portfolio/src/helpers/ext/context_ext.dart';
import 'package:nha_portfolio/src/presentation/widgets/social.dart';

class Contacts extends StatelessWidget {
  const Contacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("{ ${context.l10n.authorName} }"),
        Spacer(),
        Text(Consts.authorPhone),
        SizedBox(width: 32,),
        Text(Consts.authorEmail),     SizedBox(width: 32,),
        Social(),
      ],
    );
  }
}
