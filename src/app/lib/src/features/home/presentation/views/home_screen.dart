import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nguyenhoangvannha/src/app/helpers/extensions/build_context_extension.dart';
import 'package:nguyenhoangvannha/src/app/helpers/extensions/route_name_ext.dart';
import 'package:nguyenhoangvannha/src/app/routes/go_router_builder.dart';
import 'package:nguyenhoangvannha/src/app/routes/route_name.dart';
import 'package:nguyenhoangvannha/src/features/settings/presentation/view/settings_page.dart';
import 'package:nha_portfolio/nha_portfolio.dart';
import 'package:responsive_builder/responsive_builder.dart';

/// Creates a basic adaptive page with navigational elements and a body using
/// [AdaptiveLayout].
class HomeScreen extends StatefulWidget {
  /// Creates a const [HomeScreen].
  const HomeScreen(this.destination,
      {super.key, this.transitionDuration = 1000});

  /// Declare transition duration.
  final int transitionDuration;
  final String destination;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedNavigation = 0;
  int _transitionDuration = 1000;
  final routeNumberToName = {
    0: RouteName.home,
    1: RouteName.articles,
    2: RouteName.chat,
    3: RouteName.reading,
    4: RouteName.projects,
    5: RouteName.resume,
    6: RouteName.settings,
  };

  // Initialize transition time variable.
  @override
  void initState() {
    selectedNavigation = routeNumberToName.entries
        .firstWhere((element) => element.value.path == widget.destination,
            orElse: () => const MapEntry(0, RouteName.home))
        .key;
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

    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize: const Size.fromHeight(kToolbarHeight),
      //   child: SlotLayout(
      //     config: <Breakpoint, SlotLayoutConfig>{
      //       Breakpoints.small: SlotLayout.from(
      //         key: const Key('Top Navigation Small'),
      //         outAnimation: AdaptiveScaffold.bottomToTop,
      //         builder: (_) => appBar(),
      //       )
      //     },
      //   ),
      // ),
      // #docregion Example
      // AdaptiveLayout has a number of slots that take SlotLayouts and these
      // SlotLayouts' configs take maps of Breakpoints to SlotLayoutConfigs.
      body: AdaptiveLayout(
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
                builder: (_) => switch (selectedNavigation) {
                      0 => PortfolioPage(
                          padding: getValueForScreenType<EdgeInsetsGeometry>(
                            context: context,
                            desktop: EdgeInsets.symmetric(
                                horizontal: 340.w, vertical: 140.w),
                            tablet: EdgeInsets.symmetric(
                                horizontal: 100, vertical: 40),
                            mobile: EdgeInsets.symmetric(
                                horizontal: 40, vertical: 20),
                          ),
                          onPressedDownloadCV: () {
                            selectedNavigation = 5;
                            HomeRoute(destination: RouteName.resume.path)
                                .go(context);
                          },
                        ),
                      5 => const ResumePage(),
                      6 => SettingsPage(),
                      int() => Text(
                          "mediumAndUp selectedNavigation=$selectedNavigation"),
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

  void onDestinationSelected(int newIndex) {
    selectedNavigation = newIndex;
    HomeRoute(
            destination: routeNumberToName[newIndex]?.path ??
                routeNumberToName.values.first.path)
        .go(context);

    // setState(() {
    //   selectedNavigation = newIndex;
    // });
  }

  Icon buildSettingIcon() => Icon(Icons.settings);

  _destinations() => <NavigationDestination>[
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

  AppBar appBar() => AppBar(
        title: Text(
          routeNumberToName[selectedNavigation]?.toL10n(context) ??
              context.l10n.authorName,
        ),
        centerTitle: true,
      );
}
