import 'package:flutter/material.dart';
import 'package:nha_portfolio/src/helpers/ext/context_ext.dart';

class DownloadCV extends StatelessWidget {
  const DownloadCV({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {

      },
      child:  Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.attach_file),
          const SizedBox(width: 8.0,),
          Text(context.l10n.downloadCV)
        ],
      ),
    );
  }
}
