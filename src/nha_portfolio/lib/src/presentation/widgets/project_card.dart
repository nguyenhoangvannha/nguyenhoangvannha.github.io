import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:nha_portfolio/src/assets/generated/assets.gen.dart';
import 'package:nha_portfolio/src/domain/entity/project.dart';
import 'package:nha_portfolio/src/helpers/ext/context_ext.dart';
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
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Assets.images.projectCover.image(
              height: getValueForScreenType(
                  context: context, mobile: 60, desktop: 160),
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
            Padding(
              padding: EdgeInsets.all(getValueForScreenType(
                  context: context, mobile: 6, desktop: 18)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    project.title,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: getValueForScreenType(
                          context: context, mobile: 8, desktop: 18),
                    ),
                  ),
                  SizedBox(
                    height: getValueForScreenType(
                        context: context, mobile: 2, desktop: 6),
                  ),
                  Text(
                    project.description,
                    style: TextStyle(
                      fontSize: fontSize,
                    ),
                  ),
                  SizedBox(
                    height: getValueForScreenType(
                        context: context, mobile: 2, desktop: 4),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        context.l10n.techStack,
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: fontSize,
                        ),
                      ),
                      Text(
                        project.techStacks,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: fontSize,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      textButton(
                        context,
                        context.l10n.livePreview,
                        Assets.icons.akarIconsLinkChain.provider(),
                        onPressed: () {
                          launchUrl(Uri.parse(project.demoLink));
                        },
                      ),
                      Spacer(),
                      textButton(
                        context,
                        context.l10n.viewCode,
                        Assets.icons.github.provider(),
                        onPressed: () {
                          launchUrl(Uri.parse(project.repoLink));
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget textButton(BuildContext context, String text, ImageProvider image,
      {VoidCallback? onPressed}) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        children: [
          ImageIcon(
            image,
            size: 18,
          ),
          Text(text),
        ],
      ),
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(
            horizontal: 0,
          ),
        ),
        textStyle: MaterialStateProperty.all(
          TextStyle(
            fontSize: 18,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}
