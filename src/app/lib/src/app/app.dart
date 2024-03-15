import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nguyenhoangvannha/src/app/di/injection.dart';
import 'package:nguyenhoangvannha/src/app/routes/app_router.dart';
import 'package:nguyenhoangvannha/src/l10n/app_localizations.dart';
import 'package:nha_language/nha_language.dart';
import 'package:nha_theme/nha_theme.dart';

class App extends StatelessWidget {
  App({super.key});

  final _appRouter = getIt<AppRouter>();

  final List<BlocProvider<dynamic>> _providers = <BlocProvider<dynamic>>[
    BlocProvider<ThemeBloc>(
      create: (BuildContext context) => getIt<ThemeBloc>(),
    ),
    BlocProvider<LanguageBloc>(
      create: (BuildContext context) => getIt<LanguageBloc>(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    /// This will tell you which image is oversized by throwing an exception.
    debugInvertOversizedImages = true;
    return MultiBlocProvider(
      providers: _providers,
      child: BlocBuilder<LanguageBloc, LanguageType>(
        builder: (context, languageType) {
          return BlocBuilder<ThemeBloc, ThemeType>(
            builder: (BuildContext context, ThemeType themeType) =>
                MaterialApp.router(
                  routerConfig: _appRouter.router,
                  themeMode: themeType.themeMode,
                  theme: ThemeData.light(useMaterial3: true),
                  darkTheme: ThemeData.dark(useMaterial3: true),
                  localizationsDelegates: const [
                    ...AppLocalizations.localizationsDelegates,
                    ThemeLocalizations.delegate,
                    LanguageLocalizations.delegate,
                  ],
                  locale: Locale.fromSubtags(languageCode: languageType.languageCode),
                  supportedLocales: AppLocalizations.supportedLocales,
                  debugShowCheckedModeBanner: false,
                ),
          );
        },
      ),
    );
  }
}