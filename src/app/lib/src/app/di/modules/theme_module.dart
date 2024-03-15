import 'package:injectable/injectable.dart';
import 'package:nha_theme/nha_theme.dart';

@module
abstract class ThemeModule {
  @lazySingleton
  ThemeBloc get themeBloc => ThemeBloc();
}
