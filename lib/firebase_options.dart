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
    apiKey: key,
    appId: id,
    messagingSenderId: '15817954716',
    projectId: 'heritage-quest',
    authDomain: 'heritage-quest.firebaseapp.com',
    storageBucket: 'heritage-quest.appspot.com',
    measurementId: 'G-6JSV16GJ9N',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: key,
    appId: id,
    messagingSenderId: '15817954716',
    projectId: 'heritage-quest',
    storageBucket: 'heritage-quest.appspot.com',
    iosClientId: '15817954716-hnpelubqkm8ihboek465vchh7ld2o1js.apps.googleusercontent.com',
    iosBundleId: 'com.example.arTest',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: key,
    appId: id,
    messagingSenderId: '15817954716',
    projectId: 'heritage-quest',
    authDomain: 'heritage-quest.firebaseapp.com',
    storageBucket: 'heritage-quest.appspot.com',
    measurementId: 'G-VK6VXYNYCG',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: key,
    appId: id,
    messagingSenderId: '15817954716',
    projectId: 'heritage-quest',
    storageBucket: 'heritage-quest.appspot.com',
    iosClientId: '15817954716-hnpelubqkm8ihboek465vchh7ld2o1js.apps.googleusercontent.com',
    iosBundleId: 'com.example.arTest',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: key,
    appId: id,
    messagingSenderId: '15817954716',
    projectId: 'heritage-quest',
    storageBucket: 'heritage-quest.appspot.com',
  );

}
