import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:nha_portfolio/src/assets/generated/assets.gen.dart';
import 'package:nha_portfolio/src/domain/entity/project.dart';
import 'package:nha_portfolio/src/helpers/ext/context_ext.dart';
import 'package:nha_portfolio/src/helpers/ext/framework_ext.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, required this.project, this.onTap});

  final Project project;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final fontSize =
        getValueForScreenType(context: context, mobile: 6, desktop: 14.0)
            .toDouble();

    final size = getValueForScreenType<int>(
      context: context,
      mobile: 10,
      tablet: 18,
      desktop: 32,
    );

    return Card(
      elevation: 5,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Assets.images.projectCover.image(
              height: getValueForScreenType(
                context: context,
                mobile: 60,
                desktop: 140,
              ),
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(getValueForScreenType(
                    context: context, mobile: 6, desktop: 18)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        project.framework.asset.image(
                          width: size.toDouble(),
                          height: size.toDouble(),
                          cacheHeight: size,
                          cacheWidth: size,
                        ),
                        SizedBox(
                          width: getValueForScreenType(
                            context: context,
                            mobile: 4,
                            desktop: 8,
                          ),
                        ),
                        Flexible(
                          child: Text(
                            project.title,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: getValueForScreenType(
                                context: context,
                                mobile: 8,
                                desktop: 18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: getValueForScreenType(
                          context: context, mobile: 2, desktop: 6),
                    ),
                    Text(
                      project.description,
                      maxLines: getValueForScreenType(
                          context: context, mobile: 3, desktop: 4),
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: fontSize,
                      ),
                    ),
                    SizedBox(
                      height: getValueForScreenType(
                          context: context, mobile: 2, desktop: 4),
                    ),

                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              project.techStacks,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: fontSize,
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                textButton(
                                  context,
                                  context.l10n.demo,
                                  Assets.icons.akarIconsLinkChain.provider(),
                                  onPressed: () {
                                    launchUrl(Uri.parse(project.demoLink));
                                  },
                                  fontSize: fontSize,
                                  iconSize: size,
                                ),
                                textButton(
                                  context,
                                  context.l10n.viewCode,
                                  Assets.icons.github.provider(),
                                  onPressed: () {
                                    launchUrl(Uri.parse(project.repoLink));
                                  },
                                  iconSize: size,
                                  fontSize: fontSize,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget textButton(BuildContext context, String text, ImageProvider image,
      {VoidCallback? onPressed,
      required int iconSize,
      required double fontSize}) {
    final paddingSize =
        getValueForScreenType(context: context, mobile: 6, desktop: 12);
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: EdgeInsets.all(paddingSize.toDouble()),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ImageIcon(
              image,
              size: iconSize.toDouble(),
            ),
            SizedBox(
              width: paddingSize / 2,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: fontSize,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
