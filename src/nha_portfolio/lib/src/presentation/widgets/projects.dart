import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nha_portfolio/nha_portfolio.dart';
import 'package:nha_portfolio/src/domain/entity/project.dart';
import 'package:nha_portfolio/src/helpers/ext/context_ext.dart';
import 'package:nha_portfolio/src/presentation/widgets/project_card.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Projects extends StatelessWidget {
  const Projects({super.key, this.onProjectTap});

  final Function(String id)? onProjectTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          context.l10n.projects,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: getValueForScreenType(
              context: context,
              mobile: 20,
              tablet: 26,
              desktop: 28,
            ),
            height: 0.5,
          ),
        ),
        SizedBox(
          height: getValueForScreenType(
            context: context,
            mobile: 16,
            desktop: 20,
          ),
        ),
        Text(
          context.l10n.thingsIVeBuiltSoFar,
          style: TextStyle(
            fontSize: getValueForScreenType(
              context: context,
              mobile: 12,
              tablet: 16,
              desktop: 20,
            ),
            height: 0.7,
          ),
        ),
        SizedBox(
          height: getValueForScreenType(
            context: context,
            mobile: 24,
            desktop: 28,
          ),
        ),
        BlocSelector<ProjectsBloc, ProjectsState, BuiltMap<String, Project>>(
          selector: (ProjectsState state) {
            return state.projectsMap;
          },
          builder: (context, projectsMap) {
            return GridView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 0.75,
                mainAxisSpacing: getValueForScreenType(
                    context: context, mobile: 6, desktop: 28),
                crossAxisSpacing: getValueForScreenType(
                    context: context, mobile: 6, desktop: 24),
              ),
              children: projectsMap.values
                  .map((e) => ProjectCard(
                        project: e,
                        onTap: () => onProjectTap?.call(e.id),
                      ))
                  .toList(),
            );
          },
        )
      ],
    );
  }
}
