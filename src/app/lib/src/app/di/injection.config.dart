// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:nha_theme/nha_theme.dart' as _i6;

import '../observers/app_bloc_observer.dart' as _i3;
import '../observers/go_route_observer.dart' as _i5;
import '../routes/app_router.dart' as _i4;
import 'modules/theme_module.dart' as _i7;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final themeModule = _$ThemeModule();
    gh.singleton<_i3.AppBlocObserver>(() => _i3.AppBlocObserver());
    gh.factory<_i4.AppRouter>(() => _i4.AppRouter());
    gh.factoryParam<_i5.GoRouteObserver, String, dynamic>((
      _navigatorLocation,
      _,
    ) =>
        _i5.GoRouteObserver(_navigatorLocation));
    gh.lazySingleton<_i6.ThemeBloc>(() => themeModule.themeBloc);
    return this;
  }
}

class _$ThemeModule extends _i7.ThemeModule {}
