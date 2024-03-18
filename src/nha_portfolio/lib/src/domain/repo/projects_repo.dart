import 'dart:async';

import 'package:nha_portfolio/src/domain/entity/project.dart';

abstract interface class ProjectsRepo {
  FutureOr<Map<String, Project>> getProjects();
}
