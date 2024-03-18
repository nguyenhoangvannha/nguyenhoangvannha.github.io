class EducationHistory {
  EducationHistory({
    required this.schoolName,
    required this.startDate,
    required this.endDate,
    required this.degrees,
  });

  String schoolName;
  DateTime startDate;
  DateTime endDate;
  Set<String> degrees;
}
