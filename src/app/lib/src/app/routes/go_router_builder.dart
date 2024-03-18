import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nguyenhoangvannha/src/features/home/presentation/views/home_screen.dart';
import 'package:nguyenhoangvannha/src/features/settings/presentation/view/settings_page.dart';
import 'package:nha_portfolio/nha_portfolio.dart';
import 'package:responsive_builder/responsive_builder.dart';

part 'go_router_builder.g.dart';

@TypedStatefulShellRoute<HomeScreenShellRouteData>(
  branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
    TypedStatefulShellBranch<HomePageStatefulShellBranchData>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<HomePageRouteData>(path: '/home'),
      ],
    ),
    TypedStatefulShellBranch<ProjectsPageStatefulShellBranchData>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<ProjectsPageRouteData>(path: '/projects'),
      ],
    ),
    TypedStatefulShellBranch<ResumePageStatefulShellBranchData>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<ResumePageRouteData>(path: '/resume'),
      ],
    ),
    TypedStatefulShellBranch<SettingsPageStatefulShellBranchData>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<SettingsPageRouteData>(path: '/settings'),
      ],
    ),
  ],
)
class HomeScreenShellRouteData extends StatefulShellRouteData {
  const HomeScreenShellRouteData();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return navigationShell;
  }

  static const String $restorationScopeId = 'restorationScopeId';

  static Widget $navigatorContainerBuilder(BuildContext context,
      StatefulNavigationShell navigationShell, List<Widget> children) {
    return HomeScreen(
      navigationShell: navigationShell,
      children: children,
    );
  }
}

class HomePageStatefulShellBranchData extends StatefulShellBranchData {
  const HomePageStatefulShellBranchData();
}

class ProjectsPageStatefulShellBranchData extends StatefulShellBranchData {
  const ProjectsPageStatefulShellBranchData();

//static final GlobalKey<NavigatorState> $navigatorKey = _projectsNavigatorKey;
//static const String $restorationScopeId = 'restorationScopeId';
}

class ResumePageStatefulShellBranchData extends StatefulShellBranchData {
  const ResumePageStatefulShellBranchData();
}

class SettingsPageStatefulShellBranchData extends StatefulShellBranchData {
  const SettingsPageStatefulShellBranchData();
}

class HomePageRouteData extends GoRouteData {
  const HomePageRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return PortfolioPage(
      padding: getValueForScreenType<EdgeInsetsGeometry>(
        context: context,
        desktop: const EdgeInsets.symmetric(horizontal: 200, vertical: 140),
        tablet: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
        mobile: const EdgeInsets.only(
          left: 24,
          right: 24,
          top: 32,
          bottom: 18,
        ),
      ),
      onPressedDownloadCV: () {
        const ResumePageRouteData().go(context);
      },
    );
  }
}

class ProjectsPageRouteData extends GoRouteData {
  const ProjectsPageRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Text('Project screen');
  }
}

class ResumePageRouteData extends GoRouteData {
  const ResumePageRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ResumePage();
  }
}

class SettingsPageRouteData extends GoRouteData {
  const SettingsPageRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SettingsPage();
  }
}
