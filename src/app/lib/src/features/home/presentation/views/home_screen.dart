import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:go_router/src/route.dart';
import 'package:nguyenhoangvannha/src/app/helpers/extensions/build_context_extension.dart';
import 'package:nguyenhoangvannha/src/features/settings/presentation/view/settings_page.dart';
import 'package:nha_portfolio/nha_portfolio.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
    required this.navigationShell,
    required this.children, required this.onDestinationSelected,
  });

  final StatefulNavigationShell navigationShell;
  final List<Widget> children;
  final Function(int index) onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    final navRailTheme = Theme.of(context).navigationRailTheme;
    // Define the list of destinations to be used within the app.
    final List<NavigationDestination> destinations = _destinations(context);
    final selectedNavigation = navigationShell.currentIndex;

    return Scaffold(
      body: AdaptiveLayout(
        // An option to override the default transition duration.
        transitionDuration: Duration(milliseconds: 1000),
        // Primary navigation config has nothing from 0 to 600 dp screen width,
        // then an unextended NavigationRail with no labels and just icons then an
        // extended NavigationRail with both icons and labels.
        primaryNavigation: SlotLayout(
          config: <Breakpoint, SlotLayoutConfig>{
            Breakpoints.medium: SlotLayout.from(
              inAnimation: AdaptiveScaffold.leftOutIn,
              key: const Key('Primary Navigation Medium'),
              builder: (_) => AdaptiveScaffold.standardNavigationRail(
                selectedIndex: selectedNavigation,
                onDestinationSelected: onDestinationSelected,
                leading: const Icon(Icons.menu),
                destinations: [
                  ...destinations.map((NavigationDestination destination) =>
                      AdaptiveScaffold.toRailDestination(destination)),
                ],
                backgroundColor: navRailTheme.backgroundColor,
                selectedIconTheme: navRailTheme.selectedIconTheme,
                unselectedIconTheme: navRailTheme.unselectedIconTheme,
                selectedLabelTextStyle: navRailTheme.selectedLabelTextStyle,
                unSelectedLabelTextStyle: navRailTheme.unselectedLabelTextStyle,
              ),
            ),
            Breakpoints.large: SlotLayout.from(
              key: const Key('Primary Navigation Large'),
              inAnimation: AdaptiveScaffold.leftOutIn,
              builder: (_) => AdaptiveScaffold.standardNavigationRail(
                selectedIndex: selectedNavigation,
                onDestinationSelected: onDestinationSelected,
                extended: true,
                leading: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    const Avatar(
                      minRadius: 12,
                    ),
                    Text(
                      context.l10n.authorName,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 255, 201, 197)),
                    ),
                  ],
                ),
                destinations: destinations
                    .map((NavigationDestination destination) =>
                        AdaptiveScaffold.toRailDestination(destination))
                    .toList(),
                trailing: trailingNavRail(),
                backgroundColor: navRailTheme.backgroundColor,
                selectedIconTheme: navRailTheme.selectedIconTheme,
                unselectedIconTheme: navRailTheme.unselectedIconTheme,
                selectedLabelTextStyle: navRailTheme.selectedLabelTextStyle,
                unSelectedLabelTextStyle: navRailTheme.unselectedLabelTextStyle,
              ),
            ),
          },
        ),
        // Body switches between a ListView and a GridView from small to medium
        // breakpoints and onwards.
        body: SlotLayout(
          config: <Breakpoint, SlotLayoutConfig>{
            Breakpoints.smallAndUp: SlotLayout.from(
                key: const Key('Body Medium'),
                builder: (_) {
                  return IndexedStack(
                    index: navigationShell.currentIndex,
                    children: children,
                  );
                })
          },
        ),
      ),
      bottomNavigationBar: SlotLayout(
        config: <Breakpoint, SlotLayoutConfig>{
          Breakpoints.small: SlotLayout.from(
            key: const Key('Bottom Navigation Small'),
            inAnimation: AdaptiveScaffold.bottomToTop,
            outAnimation: AdaptiveScaffold.topToBottom,
            builder: (_) => AdaptiveScaffold.standardBottomNavigationBar(
              destinations: destinations,
              currentIndex: selectedNavigation,
              onDestinationSelected: onDestinationSelected,
            ),
          )
        },
      ),
    );
  }

  _destinations(BuildContext context) => <NavigationDestination>[
        NavigationDestination(
          label: context.l10n.home,
          icon: const Icon(Icons.home_outlined),
          selectedIcon: const Icon(Icons.home),
        ),
        // NavigationDestination(
        //   label: context.l10n.articles,
        //   icon: const Icon(Icons.article_outlined),
        //   selectedIcon: const Icon(Icons.article),
        // ),
        // NavigationDestination(
        //   label: context.l10n.chat,
        //   icon: const Icon(Icons.chat_outlined),
        //   selectedIcon: const Icon(Icons.chat),
        // ),
        // NavigationDestination(
        //   label: context.l10n.readingList,
        //   icon: const Icon(Icons.book_outlined),
        //   selectedIcon: const Icon(Icons.book),
        // ),
        NavigationDestination(
          label: context.l10n.projects,
          icon: const Icon(Icons.work_history_outlined),
          selectedIcon: const Icon(Icons.work_history),
        ),
        NavigationDestination(
          label: context.l10n.resumeCV,
          icon: const Icon(Icons.contact_page_outlined),
          selectedIcon: const Icon(Icons.contact_page),
        ),
        NavigationDestination(
          label: context.l10n.settings,
          icon: const Icon(Icons.settings_outlined),
          selectedIcon: const Icon(Icons.settings),
        ),
      ];

  Widget trailingNavRail() => Expanded(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Spacer(),
            SettingsPage(
              hasTitle: false,
            ),
          ],
        ),
      );
}
