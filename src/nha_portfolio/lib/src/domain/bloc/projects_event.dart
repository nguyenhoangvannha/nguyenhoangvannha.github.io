import 'package:built_value/built_value.dart';

part 'projects_event.g.dart';

sealed class ProjectsEvent {}

abstract class LoadProjectsProjectsEvent extends ProjectsEvent
    implements
        Built<LoadProjectsProjectsEvent, LoadProjectsProjectsEventBuilder> {
  LoadProjectsProjectsEvent._();

  factory LoadProjectsProjectsEvent(
          [void Function(LoadProjectsProjectsEventBuilder) updates]) =
      _$LoadProjectsProjectsEvent;
}
