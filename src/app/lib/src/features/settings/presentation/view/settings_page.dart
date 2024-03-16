import 'package:flutter/material.dart';
import 'package:nguyenhoangvannha/src/app/helpers/extensions/build_context_extension.dart';
import 'package:nha_language/nha_language.dart';
import 'package:nha_theme/nha_theme.dart';

class SettingsPage extends StatelessWidget {
  SettingsPage({super.key, this.hasTitle = true});

  final bool hasTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ThemeListTile(
          hasTitle: hasTitle,
        ),
        Divider(),
        LanguageListTile(
          hasTitle: hasTitle,
        ),
      ],
    );
  }
}
