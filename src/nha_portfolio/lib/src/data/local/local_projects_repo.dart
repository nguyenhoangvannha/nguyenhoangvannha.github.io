import 'dart:async';

import 'package:nha_portfolio/src/domain/entity/project.dart';
import 'package:nha_portfolio/src/domain/export.dart';

class LocalProjectsRepo implements ProjectsRepo {
  @override
  FutureOr<Map<String, Project>> getProjects() {
    return List.generate(
            6,
            (index) => Project((u) => u
              ..id = "$index"
              ..title = "Project Tile goes here"
              ..description =
                  "This is sample project description random things are here in description"
              ..techStack = "HTML , JavaScript, SASS, React"
              ..demoLink = "https://nguyenhoangvannha.github.io/"
              ..repoLink = "https://github.com/NoName-exe/revanced-extended"))
        .asMap()
        .map((key, value) => MapEntry(value.id, value));
  }
}
