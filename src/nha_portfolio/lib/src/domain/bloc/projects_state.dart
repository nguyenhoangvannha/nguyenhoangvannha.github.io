import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:nha_portfolio/src/domain/entity/project.dart';

part 'projects_state.g.dart';

abstract class ProjectsState
    implements Built<ProjectsState, ProjectsStateBuilder> {
  ProjectsState._();
  factory ProjectsState([void Function(ProjectsStateBuilder) updates]) =
      _$ProjectsState;

  BuiltMap<String, Project> get projectsMap;

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ProjectsStateBuilder b) => b..projectsMap = MapBuilder();
}
