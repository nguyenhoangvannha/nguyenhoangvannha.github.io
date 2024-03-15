part of 'app_router.dart';

List<RouteBase> _getRoutes() => <RouteBase>[
      GoRoute(
        path: RouteName.initial.path,
        name: RouteName.initial.name,
        builder: (BuildContext context, GoRouterState state) =>
            const HomePage(),
      ),
    ];
