import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_vi.dart';

/// Callers can lookup localized strings with an instance of PortfolioLocalizations
/// returned by `PortfolioLocalizations.of(context)`.
///
/// Applications need to include `PortfolioLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: PortfolioLocalizations.localizationsDelegates,
///   supportedLocales: PortfolioLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the PortfolioLocalizations.supportedLocales
/// property.
abstract class PortfolioLocalizations {
  PortfolioLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static PortfolioLocalizations of(BuildContext context) {
    return Localizations.of<PortfolioLocalizations>(
        context, PortfolioLocalizations)!;
  }

  static const LocalizationsDelegate<PortfolioLocalizations> delegate =
      _PortfolioLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('vi')
  ];

  /// The author name
  ///
  /// In en, this message translates to:
  /// **'Nguyen Hoang Van Nha'**
  String get authorName;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @projects.
  ///
  /// In en, this message translates to:
  /// **'Projects'**
  String get projects;

  /// No description provided for @articles.
  ///
  /// In en, this message translates to:
  /// **'Articles'**
  String get articles;

  /// No description provided for @resumeCV.
  ///
  /// In en, this message translates to:
  /// **'Resume/CV'**
  String get resumeCV;

  /// No description provided for @chat.
  ///
  /// In en, this message translates to:
  /// **'Chat'**
  String get chat;

  /// No description provided for @readingList.
  ///
  /// In en, this message translates to:
  /// **'Reading List'**
  String get readingList;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @resumeFileName.
  ///
  /// In en, this message translates to:
  /// **'Nguyen Hoang Van Nha - Mobile Engineer.pdf'**
  String get resumeFileName;

  /// Share resume message
  ///
  /// In en, this message translates to:
  /// **'Hi 👋,\nMy name is\n{name}\nI build things for web'**
  String summaryParagraph(String name);

  /// Share resume message
  ///
  /// In en, this message translates to:
  /// **'Check out this website {websiteLink}'**
  String shareResumeMessage(String websiteLink);

  /// No description provided for @shareResumeTitle.
  ///
  /// In en, this message translates to:
  /// **'Nguyen Hoang Van Nha - Mobile Engineer'**
  String get shareResumeTitle;

  /// No description provided for @myTechStack.
  ///
  /// In en, this message translates to:
  /// **'My Tech Stack'**
  String get myTechStack;

  /// No description provided for @technologiesIVeBeenWorkingWithRecently.
  ///
  /// In en, this message translates to:
  /// **'Technologies I’ve been working with recently'**
  String get technologiesIVeBeenWorkingWithRecently;

  /// No description provided for @thingsIVeBuiltSoFar.
  ///
  /// In en, this message translates to:
  /// **'Things I’ve built so far'**
  String get thingsIVeBuiltSoFar;

  /// No description provided for @viewCode.
  ///
  /// In en, this message translates to:
  /// **'View Code'**
  String get viewCode;

  /// No description provided for @livePreview.
  ///
  /// In en, this message translates to:
  /// **'Live Preview'**
  String get livePreview;

  /// No description provided for @techStack.
  ///
  /// In en, this message translates to:
  /// **'Tech stack'**
  String get techStack;
}

class _PortfolioLocalizationsDelegate
    extends LocalizationsDelegate<PortfolioLocalizations> {
  const _PortfolioLocalizationsDelegate();

  @override
  Future<PortfolioLocalizations> load(Locale locale) {
    return SynchronousFuture<PortfolioLocalizations>(
        lookupPortfolioLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'vi'].contains(locale.languageCode);

  @override
  bool shouldReload(_PortfolioLocalizationsDelegate old) => false;
}

PortfolioLocalizations lookupPortfolioLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return PortfolioLocalizationsEn();
    case 'vi':
      return PortfolioLocalizationsVi();
  }

  throw FlutterError(
      'PortfolioLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
