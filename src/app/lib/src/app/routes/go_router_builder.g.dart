// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'go_router_builder.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homeScreenShellRouteData,
    ];

RouteBase get $homeScreenShellRouteData => StatefulShellRouteData.$route(
      restorationScopeId: HomeScreenShellRouteData.$restorationScopeId,
      navigatorContainerBuilder:
          HomeScreenShellRouteData.$navigatorContainerBuilder,
      factory: $HomeScreenShellRouteDataExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/home',
              factory: $HomePageRouteDataExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/projects',
              factory: $ProjectsPageRouteDataExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/resume',
              factory: $ResumePageRouteDataExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/settings',
              factory: $SettingsPageRouteDataExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $HomeScreenShellRouteDataExtension on HomeScreenShellRouteData {
  static HomeScreenShellRouteData _fromState(GoRouterState state) =>
      const HomeScreenShellRouteData();
}

extension $HomePageRouteDataExtension on HomePageRouteData {
  static HomePageRouteData _fromState(GoRouterState state) =>
      const HomePageRouteData();

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ProjectsPageRouteDataExtension on ProjectsPageRouteData {
  static ProjectsPageRouteData _fromState(GoRouterState state) =>
      const ProjectsPageRouteData();

  String get location => GoRouteData.$location(
        '/projects',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ResumePageRouteDataExtension on ResumePageRouteData {
  static ResumePageRouteData _fromState(GoRouterState state) =>
      const ResumePageRouteData();

  String get location => GoRouteData.$location(
        '/resume',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SettingsPageRouteDataExtension on SettingsPageRouteData {
  static SettingsPageRouteData _fromState(GoRouterState state) =>
      const SettingsPageRouteData();

  String get location => GoRouteData.$location(
        '/settings',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
