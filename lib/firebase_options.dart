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
    apiKey: 'AIzaSyA9ltEZIHqM2N8eonwFHH4HECSeHIeqgI0',
    appId: '1:587171145883:web:78b7d9330ad2eaeec63e3e',
    messagingSenderId: '587171145883',
    projectId: 'qm-studio-photo',
    authDomain: 'qm-studio-photo.firebaseapp.com',
    storageBucket: 'qm-studio-photo.appspot.com',
    measurementId: 'G-JJS9VE1YGN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDNx3v-1L-MTTLWbFDBx1-HsC1VHJmVYjM',
    appId: '1:587171145883:android:b1af3247ab8f44a4c63e3e',
    messagingSenderId: '587171145883',
    projectId: 'qm-studio-photo',
    storageBucket: 'qm-studio-photo.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBHem7a09CWyE9Mt1OuUlrUsrFv453KmYs',
    appId: '1:587171145883:ios:33a2d3a056cb1469c63e3e',
    messagingSenderId: '587171145883',
    projectId: 'qm-studio-photo',
    storageBucket: 'qm-studio-photo.appspot.com',
    androidClientId: '587171145883-egr9l3iej24feojr93m34mu1a55hjqu3.apps.googleusercontent.com',
    iosClientId: '587171145883-d5u192iefpkd0a0h91hmrnd5eapg3969.apps.googleusercontent.com',
    iosBundleId: 'com.example.studioFoto',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBHem7a09CWyE9Mt1OuUlrUsrFv453KmYs',
    appId: '1:587171145883:ios:33a2d3a056cb1469c63e3e',
    messagingSenderId: '587171145883',
    projectId: 'qm-studio-photo',
    storageBucket: 'qm-studio-photo.appspot.com',
    androidClientId: '587171145883-egr9l3iej24feojr93m34mu1a55hjqu3.apps.googleusercontent.com',
    iosClientId: '587171145883-d5u192iefpkd0a0h91hmrnd5eapg3969.apps.googleusercontent.com',
    iosBundleId: 'com.example.studioFoto',
  );
}
