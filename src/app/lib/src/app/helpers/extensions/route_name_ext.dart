import 'package:flutter/widgets.dart';
import 'package:nguyenhoangvannha/src/app/helpers/extensions/build_context_extension.dart';
import 'package:nguyenhoangvannha/src/app/routes/route_name.dart';

extension RouteNameExt on RouteName {
  String toL10n(BuildContext context) => switch (this) {
        RouteName.initial => context.l10n.authorName,
        RouteName.home => context.l10n.home,
        RouteName.articles => context.l10n.articles,
        RouteName.chat => context.l10n.chat,
        RouteName.reading => context.l10n.readingList,
        RouteName.projects => context.l10n.projects,
        RouteName.resume => context.l10n.authorName,
        RouteName.settings => context.l10n.settings,
      };
}
