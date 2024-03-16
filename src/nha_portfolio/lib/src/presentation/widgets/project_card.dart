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
          Assets.images.avatarWork.image(height: 120, fit: BoxFit.fill),
          Text(
            project.title,
            style: context.themeData.textTheme.titleSmall,
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
              Icon(Icons.link),
              TextButton(
                onPressed: () {},
                child: Text(context.l10n.livePreview),
                style: ButtonStyle(
                    textStyle: MaterialStateProperty.all(
                        context.themeData.textTheme.titleSmall)),
              ),
              Assets.icons.github.image(
                width: 12,
                height: 12,
              ),
              TextButton(
                onPressed: () {},
                child: Text(context.l10n.viewCode),
                style: ButtonStyle(
                    textStyle: MaterialStateProperty.all(
                        context.themeData.textTheme.titleSmall)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
