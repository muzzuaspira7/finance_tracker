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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBgfMH3FSYEeBFACsyhDqIg12XnhEkQxgE',
    appId: '1:87044758179:android:68119556ba2820506efd16',
    messagingSenderId: '87044758179',
    projectId: 'finance-tracker-33881',
    storageBucket: 'finance-tracker-33881.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDCXIS5DuARfidWxrBwcqxQ14IRoXQNKUk',
    appId: '1:87044758179:ios:9563aa3bf14e1a4a6efd16',
    messagingSenderId: '87044758179',
    projectId: 'finance-tracker-33881',
    storageBucket: 'finance-tracker-33881.appspot.com',
    androidClientId: '87044758179-er2b2buu6r7jtn33ntbap115msd8v425.apps.googleusercontent.com',
    iosClientId: '87044758179-m8fsdcgfe26pjndvkuvg7jtslk23lq04.apps.googleusercontent.com',
    iosBundleId: 'com.example.financeTracker',
  );
}
