import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:nha_language/nha_language.dart';

class LanguageListTile extends StatelessWidget {
  const LanguageListTile({
    super.key,
    this.hasTitle = true,
  });

  final bool hasTitle;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageBloc, LanguageType>(
      builder: (context, state) {
        return ListTile(
          leading: const Icon(Icons.language),
          title: hasTitle
              ? Text(
                  LanguageLocalizations.of(context).language,
                  style: Theme.of(context).textTheme.bodyMedium,
                )
              : null,
          trailing: DropdownButton<LanguageType>(
            value: state,
            onChanged: (selected) {
              BlocProvider.of<LanguageBloc>(context).add(selected!);
            },
            items: LanguageType.values
                .map((e) => DropdownMenuItem<LanguageType>(
                    value: e, child: Text(e.localized(context))))
                .toList(),
          ),
        );
      },
    );
  }
}
