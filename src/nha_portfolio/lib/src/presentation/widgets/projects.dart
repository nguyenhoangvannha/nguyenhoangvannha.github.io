import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28.sp,
            height: 0.5,
          ),
        ),
        SizedBox(
          height: 20.w,
        ),
        Text(
          context.l10n.thingsIVeBuiltSoFar,
          style: TextStyle(
            fontSize: 20.sp,
            height: 0.7,
          ),
        ),
        SizedBox(
          height: 28.w,
        ),
        GridView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 24.w,
            crossAxisSpacing: 24.w,
          ),
          children: List.generate(6, (index) => project)
              .map((e) => ProjectCard(
                    project: project,
                  ))
              .toList(),
        ),
      ],
    );
  }
}
