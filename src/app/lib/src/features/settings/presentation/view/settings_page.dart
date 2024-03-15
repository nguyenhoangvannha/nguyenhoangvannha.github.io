import 'package:flutter/material.dart';
import 'package:nha_language/nha_language.dart';
import 'package:nha_theme/nha_theme.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ThemeListTile(
          hasTitle: false,
        ),
        Divider(),
        LanguageListTile(
          hasTitle: false,
        ),
      ],
    );
  }
}
