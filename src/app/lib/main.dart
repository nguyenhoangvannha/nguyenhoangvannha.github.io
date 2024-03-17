import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:logger/logger.dart';
import 'package:nguyenhoangvannha/firebase_options.dart';
import 'package:nguyenhoangvannha/src/app/app.dart';
import 'package:nguyenhoangvannha/src/app/constants/fireabase_consts.dart';
import 'package:nguyenhoangvannha/src/app/di/injection.dart';
import 'package:nguyenhoangvannha/src/app/observers/app_bloc_observer.dart';
import 'package:nha_portfolio/nha_portfolio.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  initializeSingletons();
  configureDependencies();
  Bloc.observer = getIt<AppBlocObserver>();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Pass all uncaught "fatal" errors from the framework to Crashlytics
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getApplicationDocumentsDirectory(),
  );
  runApp(App());
}

void initializeSingletons() {
  getIt.registerLazySingleton<Logger>(
    () => Logger(
      filter: ProductionFilter(),
      printer: PrettyPrinter(),
      output: ConsoleOutput(),
    ),
  );
}

void read() {
  final db = FirebaseFirestore.instance;
  final docRef = db
      .collection(FirebaseConsts.rootCollection)
      .doc(FireBaseDocuments.public.id)
      .collection(FireBaseDocuments.techStacks.id)
      .doc();
  docRef.get().then(
    (DocumentSnapshot doc) {
      final data = doc.data();
      print("data getting document: $data");
    },
    onError: (e) => print("Error getting document: $e"),
  );
}

void add() {
  final techStack = <String, String>{
    "name": "Flutter",
    "id": "flutter",
    "icon": "https://img.icons8.com/fluency/48/flutter.png"
  };
  final techStack2 = <String, String>{
    "name": "Android",
    "id": "android",
    "icon": "https://img.icons8.com/color/48/android-os.png"
  };
  final techStack3 = TechStack((u) => u
    ..id = "java"
    ..name = "Java"
    ..icon = "");
  final db = FirebaseFirestore.instance;
  final docRef = db
      .collection(FirebaseConsts.rootCollection)
      .doc(FireBaseDocuments.public.id)
      .collection(FireBaseDocuments.techStacks.id)
      .withConverter<TechStack>(
        fromFirestore: (
          DocumentSnapshot<Map<String, dynamic>> snapshot,
          SnapshotOptions? options,
        ) {
          final data = snapshot.data();

          return TechStack.fromJson(jsonEncode(data))!;
        },
        toFirestore: (TechStack techStack, options) =>
            jsonDecode(techStack.toJson()),
      )
      .doc();
  docRef.set(techStack3).onError(
        (e, _) => print("Error set document: $e"),
      );
}
