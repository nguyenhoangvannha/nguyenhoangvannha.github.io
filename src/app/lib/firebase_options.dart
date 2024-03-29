// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyD7Hu-uuroV2MKoOTr5d6D2x0yCJ2ZPvSE',
    appId: '1:92989169508:web:069b4255d268303162e471',
    messagingSenderId: '92989169508',
    projectId: 'nhvnha',
    authDomain: 'nhvnha.firebaseapp.com',
    storageBucket: 'nhvnha.appspot.com',
    measurementId: 'G-3RV25GZFX3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDGpo7275jucgMY8muFg9V0X1mTcGZnRm0',
    appId: '1:92989169508:android:deadd81a1205bd1b62e471',
    messagingSenderId: '92989169508',
    projectId: 'nhvnha',
    storageBucket: 'nhvnha.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA2Nz6Aq0RcLce8WsO2OEVEf1q8vleRSdA',
    appId: '1:92989169508:ios:f3e23adf074685d762e471',
    messagingSenderId: '92989169508',
    projectId: 'nhvnha',
    storageBucket: 'nhvnha.appspot.com',
    iosBundleId: 'io.github.nguyenhoangvannha.apps.nguyenhoangvannha',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA2Nz6Aq0RcLce8WsO2OEVEf1q8vleRSdA',
    appId: '1:92989169508:ios:ae2c985d4b11a5ab62e471',
    messagingSenderId: '92989169508',
    projectId: 'nhvnha',
    storageBucket: 'nhvnha.appspot.com',
    iosBundleId:
        'io.github.nguyenhoangvannha.apps.nguyenhoangvannha.RunnerTests',
  );
}
