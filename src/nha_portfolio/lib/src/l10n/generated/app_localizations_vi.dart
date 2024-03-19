import 'app_localizations.dart';

/// The translations for Vietnamese (`vi`).
class PortfolioLocalizationsVi extends PortfolioLocalizations {
  PortfolioLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get authorName => 'Nguyễn Hoàng Văn Nhã';

  @override
  String get home => 'Trang chủ';

  @override
  String get projects => 'Dự án';

  @override
  String get articles => 'Bài viết';

  @override
  String get resumeCV => 'Resume/CV';

  @override
  String get chat => 'Trò chuyện';

  @override
  String get readingList => 'Đọc sách';

  @override
  String get settings => 'Cài đặt';

  @override
  String get resumeFileName => 'Nguyen Hoang Van Nha - Mobile Engineer.pdf';

  @override
  String summaryParagraph(String name) {
    return 'Hi 👋,\nMy name is\n$name\nI build things for mobile';
  }

  @override
  String shareResumeMessage(String websiteLink) {
    return 'Check out this website $websiteLink';
  }

  @override
  String get shareResumeTitle => 'Nguyen Hoang Van Nha - Mobile Engineer';

  @override
  String get myTechStack => 'My Tech Stack';

  @override
  String get technologiesIVeBeenWorkingWithRecently =>
      'Technologies I’ve been working with recently';

  @override
  String get thingsIVeBuiltSoFar => 'Things I’ve built so far';

  @override
  String get viewCode => 'View Code';

  @override
  String get demo => 'Demo';

  @override
  String get livePreview => 'Live Preview';

  @override
  String get techStack => 'Tech stack :';

  @override
  String get downloadCV => 'Download CV';

  @override
  String makeByAndWith(String makeBy) {
    return 'Make by $makeBy using';
  }

  @override
  String get flutter => 'Flutter';

  @override
  String get dart => 'Dart';

  @override
  String get summary => 'Summary';

  @override
  String get employment => 'Employment';

  @override
  String get myProfessionalWorks => 'My professional works';

  @override
  String get awards => 'Awards';

  @override
  String get myAwards => 'My awards';

  @override
  String get education => 'Education';

  @override
  String get myProfessionalLearningExperiences =>
      'My professional learning experiences';

  @override
  String get project_ => 'Project: ';

  @override
  String get description_ => 'Description: ';

  @override
  String get technologies_ => 'Technologies: ';

  @override
  String get contribution_ => 'Contribution: ';
}
