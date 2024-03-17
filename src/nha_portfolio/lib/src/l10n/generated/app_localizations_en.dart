import 'app_localizations.dart';

/// The translations for English (`en`).
class PortfolioLocalizationsEn extends PortfolioLocalizations {
  PortfolioLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get authorName => 'Nguyen Hoang Van Nha';

  @override
  String get home => 'Home';

  @override
  String get projects => 'Projects';

  @override
  String get articles => 'Articles';

  @override
  String get resumeCV => 'Resume/CV';

  @override
  String get chat => 'Chat';

  @override
  String get readingList => 'Reading List';

  @override
  String get settings => 'Settings';

  @override
  String get resumeFileName => 'Nguyen Hoang Van Nha - Mobile Engineer.pdf';

  @override
  String summaryParagraph(String name) {
    return 'Hi 👋,\nMy name is\n$name\nI build things for web';
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
}
