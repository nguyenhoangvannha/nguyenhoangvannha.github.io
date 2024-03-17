import 'package:flutter/material.dart';
import 'package:nha_portfolio/src/assets/generated/assets.gen.dart';
import 'package:nha_portfolio/src/domain/entity/project.dart';
import 'package:nha_portfolio/src/helpers/ext/context_ext.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, required this.project});

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Assets.images.projectCover.image(
            height: 120,
            fit: BoxFit.scaleDown,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  project.title,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                Text(
                  project.description,
                  style: context.themeData.textTheme.titleSmall,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      context.l10n.techStack,
                      style: context.themeData.textTheme.titleSmall,
                    ),
                    Text(
                      project.techStack,
                      style: context.themeData.textTheme.titleSmall,
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    textButton(context, context.l10n.livePreview, Assets.icons.akarIconsLinkChain.provider()),
                    textButton(context, context.l10n.viewCode, Assets.icons.github.provider()),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget textButton(
    BuildContext context,
    String text,
    ImageProvider image,
  ) {
    return TextButton(
      onPressed: () {},
      child: Row(
        children: [
          ImageIcon(
            image,
            size: 12.0,
          ),
          Text(text),
        ],
      ),
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(
          TextStyle(
            fontSize: 12,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}
