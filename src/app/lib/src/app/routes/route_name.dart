enum RouteName {
  initial("/home"),
  home("home"),
  articles("articles"),
  chat("chat"),
  reading("reading"),
  projects("projects"),
  resume("resume"),
  settings("settings");

  const RouteName(this.path);

  final String path;
}
