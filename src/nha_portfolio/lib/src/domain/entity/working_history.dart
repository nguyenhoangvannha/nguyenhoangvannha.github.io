class WorkingHistory {
  WorkingHistory({
    required this.companyName,
    required this.employeePosition,
    required this.startWorking,
    required this.endWorking,
    required this.projects,
  });

  String companyName;
  String employeePosition;
  DateTime startWorking;
  DateTime endWorking;
  Set<WorkingProject> projects;
}

class WorkingProject {
  WorkingProject({
    required this.name,
    required this.description,
    required this.technologies,
    required this.contributions,
  });

  String name;
  String description;
  Set<String> technologies;
  Set<String> contributions;
}
