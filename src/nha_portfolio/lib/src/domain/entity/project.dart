import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:nha_portfolio/src/domain/entity/framework.dart';

part 'project.g.dart';

abstract class Project implements Built<Project, ProjectBuilder> {
  Project._();

  factory Project([void Function(ProjectBuilder) updates]) = _$Project;

  String get id;

  String get title;

  BuiltSet<String> get strengths;

  String get description;

  String get techStacks;

  String get repoLink;

  String get demoLink;

  Framework get framework;

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ProjectBuilder b) => b..strengths = SetBuilder();
}
