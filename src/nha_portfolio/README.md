Setup:

```dart
void main() async {
  runApp(App());
}

class App extends StatelessWidget {
  App({super.key});

  final List<BlocProvider<dynamic>> _providers = <BlocProvider<dynamic>>[
    BlocProvider<ProjectsBloc>(
      create: (BuildContext context) => ProjectsBloc(projectsRepo: ProjectsRepoImpl(localProjectsRepo: LocalProjectsRepo()),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: _providers,
      child: BlocBuilder<ThemeBloc, ThemeType>(
        builder: (BuildContext context, ThemeType themeType) =>
            MaterialApp(),
      ),
    );
  }
}
```