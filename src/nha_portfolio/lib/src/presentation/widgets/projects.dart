import 'package:flutter/material.dart';
import 'package:nha_portfolio/src/domain/entity/project.dart';
import 'package:nha_portfolio/src/helpers/ext/context_ext.dart';
import 'package:nha_portfolio/src/presentation/widgets/project_card.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    final project = Project((u) => u
      ..title = "Project Tile goes here"
      ..description =
          "This is sample project description random things are here in description This is sample project lorem ipsum generator for dummy content"
      ..techStack = "HTML , JavaScript, SASS, React"
      ..demoLink = "https://nguyenhoangvannha.github.io/"
      ..repoLink = "https://github.com/NoName-exe/revanced-extended");
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          context.l10n.projects,
          style: context.themeData.textTheme.labelLarge,
        ),
        Text(
          context.l10n.thingsIVeBuiltSoFar,
          style: context.themeData.textTheme.bodySmall,
        ),
        GridView.builder(
          shrinkWrap: true,
          itemCount: 6,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 32,
            crossAxisSpacing: 32,
          ),
          itemBuilder: (context, index) {
            return ProjectCard(
              project: project,
            );
          },
        ),
      ],
    );
  }
}
