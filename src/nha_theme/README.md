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
    BlocProvider<ThemeBloc>(
      create: (BuildContext context) => ThemeBloc(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: _providers,
      child: BlocBuilder<ThemeBloc, ThemeType>(
        builder: (BuildContext context, ThemeType themeType) =>
            MaterialApp.router(
              themeMode: themeType.themeMode,
              theme: ThemeData.light(),
              darkTheme: ThemeData.dark(),
              localizationsDelegates: const [
                ...AppLocalizations.localizationsDelegates,
                ThemeLocalizations.delegate,
              ],
              supportedLocales: AppLocalizations.supportedLocales,
            ),
      ),
    );
  }
}
```