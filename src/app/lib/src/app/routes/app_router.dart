import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:nguyenhoangvannha/src/app/di/injection.dart';
import 'package:nguyenhoangvannha/src/app/observers/go_route_observer.dart';
import 'package:nguyenhoangvannha/src/app/routes/go_router_builder.dart';
import 'package:nguyenhoangvannha/src/app/routes/route_name.dart';

@injectable
final class AppRouter {
  static const String debugLabel = 'root';

  late final router = GoRouter(
    routes: $appRoutes,
    initialLocation: RouteName.home.path,
    observers: <NavigatorObserver>[getIt<GoRouteObserver>(param1: debugLabel)],
  );
}
