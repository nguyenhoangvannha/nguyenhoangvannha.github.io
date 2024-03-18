import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nha_portfolio/nha_portfolio.dart';
import 'package:nha_portfolio/src/domain/entity/project.dart';
import 'package:nha_portfolio/src/helpers/ext/context_ext.dart';
import 'package:nha_portfolio/src/presentation/widgets/portfolio_part.dart';
import 'package:nha_portfolio/src/presentation/widgets/project_card.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Projects extends StatelessWidget {
  const Projects({super.key, this.onProjectTap});

  final Function(String id)? onProjectTap;

  @override
  Widget build(BuildContext context) {
    return PortfolioPart(
      title: context.l10n.projects,
      subTitle: context.l10n.thingsIVeBuiltSoFar,
      child:
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
              childAspectRatio: 1 / 1.3,
              mainAxisSpacing: getValueForScreenType(
                  context: context, mobile: 6, desktop: 18),
              crossAxisSpacing: getValueForScreenType(
                  context: context, mobile: 6, desktop: 18),
            ),
            children: projectsMap.values
                .map((e) => ProjectCard(
                      project: e,
                      onTap: () => onProjectTap?.call(e.id),
                    ))
                .toList(),
          );
        },
      ),
    );
  }
}
