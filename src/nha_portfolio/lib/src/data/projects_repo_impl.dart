import 'dart:async';

import 'package:nha_portfolio/src/data/local/local_projects_repo.dart';
import 'package:nha_portfolio/src/domain/entity/project.dart';
import 'package:nha_portfolio/src/domain/export.dart';

class ProjectsRepoImpl implements ProjectsRepo {
  final LocalProjectsRepo localProjectsRepo;

  ProjectsRepoImpl({required this.localProjectsRepo});

  @override
  FutureOr<Map<String, Project>> getProjects() {
    return localProjectsRepo.getProjects();
  }
}
