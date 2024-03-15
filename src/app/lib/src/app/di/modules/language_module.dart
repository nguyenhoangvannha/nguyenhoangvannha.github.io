import 'package:injectable/injectable.dart';
import 'package:nha_language/nha_language.dart';

@module
abstract class LanguageModule {
  @lazySingleton
  LanguageBloc get languageBloc => LanguageBloc();
}
