import 'package:flutter/material.dart';
import 'package:nha_language/nha_language.dart';
import 'package:nha_theme/nha_theme.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key, this.hasTitle = true});

  final bool hasTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ThemeListTile(
            hasTitle: hasTitle,
          ),
          const Divider(),
          LanguageListTile(
            hasTitle: hasTitle,
          ),
        ],
      ),
    );
  }
}
