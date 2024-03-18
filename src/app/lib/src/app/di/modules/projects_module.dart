import 'package:injectable/injectable.dart';
import 'package:nguyenhoangvannha/src/app/di/injection.dart';
import 'package:nha_portfolio/nha_portfolio.dart';

@module
abstract class ProjectsModule {
  @lazySingleton
  LocalProjectsRepo get localProjectsRepo => LocalProjectsRepo();

  @lazySingleton
  ProjectsRepo get projectsRepo =>
      ProjectsRepoImpl(localProjectsRepo: getIt<LocalProjectsRepo>());

  @lazySingleton
  ProjectsBloc get languageBloc =>
      ProjectsBloc(projectsRepo: getIt<ProjectsRepo>());
}
