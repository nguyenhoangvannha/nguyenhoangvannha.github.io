import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:nguyenhoangvannha/src/app/di/injection.dart';

// ignore_for_file: avoid_dynamic_calls
@singleton
final class AppBlocObserver extends BlocObserver {
  final Logger _logger = getIt<Logger>();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    _logger.t('onChange(${bloc.runtimeType}, ${change.nextState.runtimeType})');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    _logger.e('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}
