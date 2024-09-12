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
    apiKey: 'AIzaSyCKjqtItXwueMOET_uQ7QwrgXygGvTvcXw',
    appId: '1:1045286057482:web:1ef03df0fc91d1fe2551f3',
    messagingSenderId: '1045286057482',
    projectId: 'testbloc-a9b96',
    authDomain: 'testbloc-a9b96.firebaseapp.com',
    storageBucket: 'testbloc-a9b96.appspot.com',
    measurementId: 'G-048B403SW6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBfMYCayTEV5XtFm2ryH4FecBIzNckbEmI',
    appId: '1:1045286057482:android:268475ed3b3eeb402551f3',
    messagingSenderId: '1045286057482',
    projectId: 'testbloc-a9b96',
    storageBucket: 'testbloc-a9b96.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAOlAaFxpsBG_teCAUl4guS7PJDZo7Fheo',
    appId: '1:1045286057482:ios:cecf764cbc32f9192551f3',
    messagingSenderId: '1045286057482',
    projectId: 'testbloc-a9b96',
    storageBucket: 'testbloc-a9b96.appspot.com',
    iosBundleId: 'com.example.testbloc',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAOlAaFxpsBG_teCAUl4guS7PJDZo7Fheo',
    appId: '1:1045286057482:ios:cecf764cbc32f9192551f3',
    messagingSenderId: '1045286057482',
    projectId: 'testbloc-a9b96',
    storageBucket: 'testbloc-a9b96.appspot.com',
    iosBundleId: 'com.example.testbloc',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCKjqtItXwueMOET_uQ7QwrgXygGvTvcXw',
    appId: '1:1045286057482:web:6accc03a9e6e8bf72551f3',
    messagingSenderId: '1045286057482',
    projectId: 'testbloc-a9b96',
    authDomain: 'testbloc-a9b96.firebaseapp.com',
    storageBucket: 'testbloc-a9b96.appspot.com',
    measurementId: 'G-Q21TEPQ96D',
  );
}
