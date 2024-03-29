import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:nha_theme/nha_theme.dart';

class ThemeListTile extends StatelessWidget {
  const ThemeListTile({
    super.key,
    this.hasTitle = true,
  });

  final bool hasTitle;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeType>(
      builder: (context, state) {
        return ListTile(
          leading: const Icon(Icons.format_paint),
          title: hasTitle
              ? Text(
                  ThemeLocalizations.of(context).theme,
                  style: Theme.of(context).textTheme.bodyMedium,
                )
              : null,
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
