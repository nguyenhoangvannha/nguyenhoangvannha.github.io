Setup:

```dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: kIsWeb
          ? HydratedStorage.webStorageDirectory
          : await getApplicationDocumentsDirectory(),
  );
  runApp(App());
}

class App extends StatelessWidget {
  App({super.key});

  final List<BlocProvider<dynamic>> _providers = <BlocProvider<dynamic>>[
    BlocProvider<LanguageBloc>(
      create: (BuildContext context) => LanguageBloc(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: _providers,
      child: BlocBuilder<LanguageBloc, LanguageType>(
        builder: (BuildContext context, LanguageType languageType) =>
            MaterialApp(
              locale: Locale.fromSubtags(languageCode: languageType.languageCode),
              localizationsDelegates: const [
                ...AppLocalizations.localizationsDelegates,
                LanguageLocalizations.delegate,
              ],
              supportedLocales: AppLocalizations.supportedLocales,
            ),
      ),
    );
  }
}
```