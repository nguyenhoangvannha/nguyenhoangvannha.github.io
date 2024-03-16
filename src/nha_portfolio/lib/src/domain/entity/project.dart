import 'package:built_value/built_value.dart';

part 'project.g.dart';

abstract class Project implements Built<Project, ProjectBuilder> {
  Project._();

  factory Project([void Function(ProjectBuilder) updates]) = _$Project;

  String get title;

  String get description;

  String get techStack;

  String get repoLink;

  String get demoLink;
}
