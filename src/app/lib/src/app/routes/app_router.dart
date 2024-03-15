import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:nguyenhoangvannha/src/app/di/injection.dart';
import 'package:nguyenhoangvannha/src/app/observers/go_route_observer.dart';
import 'package:nguyenhoangvannha/src/app/routes/route_name.dart';
import 'package:nguyenhoangvannha/src/features/home/presentation/views/home_screen.dart';

part 'app_routes.dart';

@injectable
final class AppRouter {
  static const String debugLabel = 'root';

  late final router = GoRouter(
    routes: _getRoutes(),
    initialLocation: RouteName.initial.path,
    observers: <NavigatorObserver>[getIt<GoRouteObserver>(param1: debugLabel)],
  );
}
