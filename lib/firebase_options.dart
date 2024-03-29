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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDllV2SaQmm5NUKZRvY86u-9cKkw4L2zqU',
    appId: '1:816419451058:web:f8ab155c1a08122ff099ab',
    messagingSenderId: '816419451058',
    projectId: 'flutter-pushnotificaton',
    authDomain: 'flutter-pushnotificaton.firebaseapp.com',
    databaseURL: 'https://flutter-pushnotificaton-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'flutter-pushnotificaton.appspot.com',
    measurementId: 'G-2FKS6W30Z7',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA4BgmmSyF_hnx6ju0aHvfT7GgiBGnMiCI',
    appId: '1:816419451058:android:d047815be4c9de21f099ab',
    messagingSenderId: '816419451058',
    projectId: 'flutter-pushnotificaton',
    databaseURL: 'https://flutter-pushnotificaton-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'flutter-pushnotificaton.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAJ6vvqiwQC5koJdRvgTYodMQXOp2w5Ans',
    appId: '1:816419451058:ios:2b5e602709271f1af099ab',
    messagingSenderId: '816419451058',
    projectId: 'flutter-pushnotificaton',
    databaseURL: 'https://flutter-pushnotificaton-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'flutter-pushnotificaton.appspot.com',
    iosClientId: '816419451058-t3ikn9vi03frraepjo6qfk0i0s5fm16m.apps.googleusercontent.com',
    iosBundleId: 'com.vinova.pushNotification',
  );
}
