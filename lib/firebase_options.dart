// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyCKTucyKe-DBhCLp_519AG3Mo_XhhsMoYs',
    appId: '1:695485306415:web:7892b5d09ade2009acd8da',
    messagingSenderId: '695485306415',
    projectId: 'flutter-app-44772',
    authDomain: 'flutter-app-44772.firebaseapp.com',
    storageBucket: 'flutter-app-44772.firebasestorage.app',
    measurementId: 'G-VSJKZ2R7YC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCXX3onH1_xoHjv4wMoZXT00PO2yavDylI',
    appId: '1:695485306415:android:7c04432e8a04c404acd8da',
    messagingSenderId: '695485306415',
    projectId: 'flutter-app-44772',
    storageBucket: 'flutter-app-44772.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAsiL_JjxJbEL0IzVi66TVq-8fkEfmXvy8',
    appId: '1:695485306415:ios:842b59944140a74bacd8da',
    messagingSenderId: '695485306415',
    projectId: 'flutter-app-44772',
    storageBucket: 'flutter-app-44772.firebasestorage.app',
    androidClientId: '695485306415-cjkmdgrhhhppq5ima6r97tgv0j6p5o16.apps.googleusercontent.com',
    iosClientId: '695485306415-jqepvt19ilsab2tfoi0osjrp8aohdsui.apps.googleusercontent.com',
    iosBundleId: 'com.example.signInApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAsiL_JjxJbEL0IzVi66TVq-8fkEfmXvy8',
    appId: '1:695485306415:ios:842b59944140a74bacd8da',
    messagingSenderId: '695485306415',
    projectId: 'flutter-app-44772',
    storageBucket: 'flutter-app-44772.firebasestorage.app',
    androidClientId: '695485306415-cjkmdgrhhhppq5ima6r97tgv0j6p5o16.apps.googleusercontent.com',
    iosClientId: '695485306415-jqepvt19ilsab2tfoi0osjrp8aohdsui.apps.googleusercontent.com',
    iosBundleId: 'com.example.signInApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCKTucyKe-DBhCLp_519AG3Mo_XhhsMoYs',
    appId: '1:695485306415:web:4b9d99fbedbf4c04acd8da',
    messagingSenderId: '695485306415',
    projectId: 'flutter-app-44772',
    authDomain: 'flutter-app-44772.firebaseapp.com',
    storageBucket: 'flutter-app-44772.firebasestorage.app',
    measurementId: 'G-WY81XRPXNS',
  );

}