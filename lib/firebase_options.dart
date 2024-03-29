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
    apiKey: 'AIzaSyA1JaBiCAXWgk_kQ-V489JQrSk-3e52mcQ',
    appId: '1:397431061238:web:18d67859e4332da1698ad7',
    messagingSenderId: '397431061238',
    projectId: 'kalistenika-2-93',
    authDomain: 'kalistenika-2-93.firebaseapp.com',
    storageBucket: 'kalistenika-2-93.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBTVV50OXyUUqXBP8aNhJfLL9fGBB1AJEs',
    appId: '1:397431061238:android:76d73e40e9f1a7f4698ad7',
    messagingSenderId: '397431061238',
    projectId: 'kalistenika-2-93',
    storageBucket: 'kalistenika-2-93.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA95hoAbHcIWNHtkjBNbnb59zYrwsmz2K4',
    appId: '1:397431061238:ios:9a8ab6b25e62b6b9698ad7',
    messagingSenderId: '397431061238',
    projectId: 'kalistenika-2-93',
    storageBucket: 'kalistenika-2-93.appspot.com',
    iosClientId: '397431061238-6osnok8gup4p6uhp30gkok499hsst24g.apps.googleusercontent.com',
    iosBundleId: 'com.szymonmatecki.kalistenika2',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA95hoAbHcIWNHtkjBNbnb59zYrwsmz2K4',
    appId: '1:397431061238:ios:9a8ab6b25e62b6b9698ad7',
    messagingSenderId: '397431061238',
    projectId: 'kalistenika-2-93',
    storageBucket: 'kalistenika-2-93.appspot.com',
    iosClientId: '397431061238-6osnok8gup4p6uhp30gkok499hsst24g.apps.googleusercontent.com',
    iosBundleId: 'com.szymonmatecki.kalistenika2',
  );
}
