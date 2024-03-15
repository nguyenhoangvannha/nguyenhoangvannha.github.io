import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:nguyenhoangvannha/src/app/helpers/extensions/build_context_extension.dart';
import 'package:nguyenhoangvannha/src/features/settings/presentation/view/settings_page.dart';

/// Creates a basic adaptive page with navigational elements and a body using
/// [AdaptiveLayout].
class MyHomePage extends StatefulWidget {
  /// Creates a const [MyHomePage].
  const MyHomePage({super.key, this.transitionDuration = 1000});

  /// Declare transition duration.
  final int transitionDuration;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedNavigation = 0;
  int _transitionDuration = 1000;

  // Initialize transition time variable.
  @override
  void initState() {
    super.initState();
    setState(() {
      _transitionDuration = widget.transitionDuration;
    });
  }

  @override
  Widget build(BuildContext context) {
    final NavigationRailThemeData navRailTheme =
        Theme.of(context).navigationRailTheme;

    // Define the children to display within the body.
    final List<Widget> children = List<Widget>.generate(10, (int index) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: const Color.fromARGB(255, 255, 201, 197),
          height: 400,
        ),
      );
    });

    // Define the list of destinations to be used within the app.
    List<NavigationDestination> destinations = _destinations();

    // #docregion Example
    // AdaptiveLayout has a number of slots that take SlotLayouts and these
    // SlotLayouts' configs take maps of Breakpoints to SlotLayoutConfigs.
    return AdaptiveLayout(
      // An option to override the default transition duration.
      transitionDuration: Duration(milliseconds: _transitionDuration),
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
              onDestinationSelected: (int newIndex) {
                setState(() {
                  selectedNavigation = newIndex;
                });
              },
              leading: const Icon(Icons.menu),
              destinations: destinations
                  .map((NavigationDestination destination) =>
                      AdaptiveScaffold.toRailDestination(destination))
                  .toList(),
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
              onDestinationSelected: (int newIndex) {
                setState(() {
                  selectedNavigation = newIndex;
                });
              },
              extended: true,
              leading: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    context.l10n.authorName,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 255, 201, 197)),
                  ),
                  const Icon(Icons.menu_open)
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
          Breakpoints.small: SlotLayout.from(
            key: const Key('Body Small'),
            builder: (_) => ListView.builder(
              itemCount: children.length,
              itemBuilder: (BuildContext context, int index) => children[index],
            ),
          ),
          Breakpoints.mediumAndUp: SlotLayout.from(
            key: const Key('Body Medium'),
            builder: (_) =>
                GridView.count(crossAxisCount: 2, children: children),
          )
        },
      ),
      // BottomNavigation is only active in small views defined as under 600 dp
      // width.
      bottomNavigation: SlotLayout(
        config: <Breakpoint, SlotLayoutConfig>{
          Breakpoints.small: SlotLayout.from(
            key: const Key('Bottom Navigation Small'),
            inAnimation: AdaptiveScaffold.bottomToTop,
            outAnimation: AdaptiveScaffold.topToBottom,
            builder: (_) => AdaptiveScaffold.standardBottomNavigationBar(
              destinations: destinations,
              currentIndex: selectedNavigation,
              onDestinationSelected: (int newIndex) {
                setState(() {
                  selectedNavigation = newIndex;
                });
              },
            ),
          )
        },
      ),
    );
    // #enddocregion Example
  }

  List<NavigationDestination> _destinations() {
    return <NavigationDestination>[
      NavigationDestination(
        label: context.l10n.home,
        icon: const Icon(Icons.home_outlined),
        selectedIcon: const Icon(Icons.home),
      ),
      NavigationDestination(
        label: context.l10n.articles,
        icon: const Icon(Icons.article_outlined),
        selectedIcon: const Icon(Icons.article),
      ),
      NavigationDestination(
        label: context.l10n.chat,
        icon: const Icon(Icons.chat_outlined),
        selectedIcon: const Icon(Icons.chat),
      ),
      NavigationDestination(
        label: context.l10n.readingList,
        icon: const Icon(Icons.book_outlined),
        selectedIcon: const Icon(Icons.book),
      ),
      NavigationDestination(
        label: context.l10n.projects,
        icon: const Icon(Icons.work_history_outlined),
        selectedIcon: const Icon(Icons.work_history),
      ),
      NavigationDestination(
        label: context.l10n.resumeCV,
        icon: const Icon(Icons.work_history_outlined),
        selectedIcon: const Icon(Icons.work_history),
      ),
    ];
  }

  Widget trailingNavRail() => Column(
        children: <Widget>[
          const Divider(color: Colors.black),
          const SizedBox(height: 10),
          Row(
            children: <Widget>[
              const SizedBox(width: 27),
              Text(context.l10n.settings, style: context.textTheme.titleMedium),
            ],
          ),
          const SizedBox(height: 10),
          const SettingsPage()
        ],
      );
}