import 'dart:async';

import 'package:built_collection/built_collection.dart';
import 'package:nha_portfolio/src/domain/entity/project.dart';
import 'package:nha_portfolio/src/domain/export.dart';

class LocalProjectsRepo implements ProjectsRepo {
  @override
  FutureOr<Map<String, Project>> getProjects() {
    return [
      Project(
        (u) => u
          ..id = "project_movie_flutter"
          ..title = "project_movie_flutter"
          ..description =
              "Impressive feature-rich movie app with search, favorites, watchlist, trailers, details, themes, and multi-languages."
          ..techStacks = "Flutter, BLoc, Clean architecture, REST, DI, Drift DB"
          ..demoLink =
              "https://nguyenhoangvannha.github.io/project_movie_flutter/"
          ..repoLink =
              "https://github.com/nguyenhoangvannha/project_movie_flutter",
      ),
      Project(
        (u) => u
          ..id = "nguyenhoangvannha.github.io"
          ..title = "nguyenhoangvannha.github.io"
          ..description = "Nguyễn Hoàng Văn Nhã's Portfolio"
          ..techStacks =
              "Flutter, Responsive, BLoc, Clean architecture, DI, go-router"
          ..demoLink = "https://nguyenhoangvannha.github.io/#/"
          ..repoLink =
              "https://github.com/nguyenhoangvannha/nguyenhoangvannha.github.io",
      ),
      Project(
        (u) => u
          ..id = "android_activity_lifecycle"
          ..title = "android_activity_lifecycle"
          ..description =
              "Plugin for monitoring Android activity lifecycle changes within Flutter apps."
          ..techStacks =
              "Flutter native plugin, Platform channel, Pigeon code gen, Android native"
          ..demoLink = "https://pub.dev/packages/android_activity_lifecycle"
          ..repoLink =
              "https://github.com/nguyenhoangvannha/flutter_dart_packages/tree/main/android_activity_lifecycle",
      ),
      Project(
        (u) => u
          ..id = "vn-e-learning"
          ..title = "vn-e-learning"
          ..description =
              "Online learning app with course browsing, learning, and progress saving."
          ..techStacks =
              "React-native, Expo, Javascript, axios, multi languages, react-navigation, redux"
          ..demoLink = "https://www.youtube.com/watch?v=1pBzcH7J1no"
          ..repoLink = "https://github.com/nguyenhoangvannha/vn-e-learning",
      ),
      Project(
        (u) => u
          ..id = "OpenGallery"
          ..title = "OpenGallery"
          ..description =
              "Photo gallery and album app for viewing and sharing photos."
          ..techStacks = "Android native, Glide, exifinterface"
          ..demoLink = "https://github.com/nguyenhoangvannha/OpenGallery"
          ..repoLink = "https://github.com/nguyenhoangvannha/OpenGallery",
      ),
      Project(
        (u) => u
          ..id = "udemy-back-end"
          ..title = "udemy-back-end"
          ..description =
              "Backend for an online learning website with features like JWT, search, and email"
          ..techStacks =
              "NodeJS, JWT, elastic search, postgresql, nodemailter, express, middleware, schemas"
          ..demoLink = "https://github.com/wnc2021nnn/udemy-back-end"
          ..repoLink = "https://github.com/wnc2021nnn/udemy-back-end",
      ),
    ].asMap().map((key, value) => MapEntry(value.id, value));
  }
}
