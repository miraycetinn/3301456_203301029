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
    apiKey: 'AIzaSyCO48nND1xFtjaRDF7NzM6GyDhFFuBBsgE',
    appId: '1:1013812992051:web:ae308094e128a768c2ab46',
    messagingSenderId: '1013812992051',
    projectId: 'fresh-45922',
    authDomain: 'fresh-45922.firebaseapp.com',
    storageBucket: 'fresh-45922.appspot.com',
    measurementId: 'G-VRN3XZ4EWL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDDLdeBa2JHUMlfUg8vtbmmAfk8nS2v6TQ',
    appId: '1:1013812992051:android:4c6d5845e662d5a1c2ab46',
    messagingSenderId: '1013812992051',
    projectId: 'fresh-45922',
    storageBucket: 'fresh-45922.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBtFADjjD2AKgOWeEoy9AivNCjWFNROEhA',
    appId: '1:1013812992051:ios:0956edf0a208fddec2ab46',
    messagingSenderId: '1013812992051',
    projectId: 'fresh-45922',
    storageBucket: 'fresh-45922.appspot.com',
    iosClientId: '1013812992051-9ja5o0pf3pjnt22l9ssdl7pif1eht9fa.apps.googleusercontent.com',
    iosBundleId: 'tr.com.miraycetin.fresh',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBtFADjjD2AKgOWeEoy9AivNCjWFNROEhA',
    appId: '1:1013812992051:ios:0956edf0a208fddec2ab46',
    messagingSenderId: '1013812992051',
    projectId: 'fresh-45922',
    storageBucket: 'fresh-45922.appspot.com',
    iosClientId: '1013812992051-9ja5o0pf3pjnt22l9ssdl7pif1eht9fa.apps.googleusercontent.com',
    iosBundleId: 'tr.com.miraycetin.fresh',
  );
}
