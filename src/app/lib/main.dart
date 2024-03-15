import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:logger/logger.dart';
import 'package:nguyenhoangvannha/src/app/app.dart';
import 'package:nguyenhoangvannha/src/app/di/injection.dart';
import 'package:nguyenhoangvannha/src/app/observers/app_bloc_observer.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  initializeSingletons();
  configureDependencies();
  Bloc.observer = getIt<AppBlocObserver>();

  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: kIsWeb
          ? HydratedStorage.webStorageDirectory
          : await getApplicationDocumentsDirectory(),
  );
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
