import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:nha_theme/nha_theme.dart';
import 'package:nha_theme/src/extensions/theme_type_ext.dart';

class ThemeListTile extends StatelessWidget {
  const ThemeListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeType>(
      builder: (context, state) {
        return ListTile(
          leading: const Icon(Icons.language),
          title: Text(
            ThemeLocalizations.of(context).theme,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          trailing: DropdownButton<ThemeType>(
            value: state,
            onChanged: (selected) {
              BlocProvider.of<ThemeBloc>(context).add(selected!);
            },
            items: ThemeType.values
                .map((e) => DropdownMenuItem<ThemeType>(
                    value: e, child: Text(e.localized(context))))
                .toList(),
          ),
        );
      },
    );
  }
}
