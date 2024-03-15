import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:nguyenhoangvannha/src/app/app.dart';
import 'package:nguyenhoangvannha/src/app/di/injection.dart';
import 'package:nguyenhoangvannha/src/app/observers/app_bloc_observer.dart';

void main() {
  initializeSingletons();
  configureDependencies();
  Bloc.observer = getIt<AppBlocObserver>();
  runApp(App());
}

void initializeSingletons() {
  getIt
    .registerLazySingleton<Logger>(
      () => Logger(
        filter: ProductionFilter(),
        printer: PrettyPrinter(),
        output: ConsoleOutput(),
      ),
    );
}
