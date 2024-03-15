import 'package:flutter/material.dart';
import 'package:nguyenhoangvannha/src/app/helpers/extensions/build_context_extension.dart';
import 'package:nha_theme/nha_theme.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        ThemeListTile(),
        Text(context.l10n.language),
        Divider(),
        ListTile(
          title: Text(
            context.l10n.englishVietnamese,
            style: context.textTheme.bodyMedium,
          ),
          trailing: Switch.adaptive(value: true, onChanged: (_) {}),
        ),
      ],
    );
  }
}
