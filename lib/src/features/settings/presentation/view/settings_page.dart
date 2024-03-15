import 'package:flutter/material.dart';
import 'package:nguyenhoangvannha/src/app/helpers/extensions/build_context_extension.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(context.l10n.theme),
        Divider(),
        ListTile(
          title: Text(
            context.l10n.lightDark,
            style: context.textTheme.bodyMedium,
          ),
          trailing: Switch.adaptive(value: true, onChanged: (_) {}),
        ),
        ListTile(
          title: Text(
            context.l10n.syncWithOS,
            style: context.textTheme.bodyMedium,
          ),
          trailing: Switch.adaptive(value: true, onChanged: (_) {}),
        ),
        Text(context.l10n.language),
        Divider(),
        ListTile(
          title: Text(
            context.l10n.englishVietnamese,
            style: context.textTheme.bodyMedium,
          ),
          trailing: Switch.adaptive(value: true, onChanged: (_) {}),
        ),
        ListTile(
          title: Text(
            context.l10n.syncWithOS,
            style: context.textTheme.bodyMedium,
          ),
          trailing: Switch.adaptive(value: true, onChanged: (_) {}),
        ),
      ],
    );
  }
}
