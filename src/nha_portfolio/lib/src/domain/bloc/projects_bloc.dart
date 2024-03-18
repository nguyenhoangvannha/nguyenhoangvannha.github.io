import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:nha_portfolio/src/domain/bloc/projects_event.dart';
import 'package:nha_portfolio/src/domain/bloc/projects_state.dart';
import 'package:nha_portfolio/src/domain/export.dart';

class ProjectsBloc extends Bloc<ProjectsEvent, ProjectsState> {
  final ProjectsRepo projectsRepo;

  ProjectsBloc({required this.projectsRepo}) : super(ProjectsState()) {
    on<LoadProjectsProjectsEvent>((event, emit) async {
      final projects = await projectsRepo.getProjects();
      emit(state.rebuild((p0) => p0..projectsMap = MapBuilder(projects)));
    });
    add(LoadProjectsProjectsEvent());
  }
}
