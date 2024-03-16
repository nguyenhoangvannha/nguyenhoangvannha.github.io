import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nguyenhoangvannha/src/features/home/presentation/views/home_screen.dart';

part 'go_router_builder.g.dart';

@TypedGoRoute<HomeRoute>(
  path: "/:destination",
)
class HomeRoute extends GoRouteData {
  const HomeRoute({
    required this.destination,
  });

  final String destination;

  @override
  Widget build(BuildContext context, GoRouterState state) => HomeScreen(destination);
}
