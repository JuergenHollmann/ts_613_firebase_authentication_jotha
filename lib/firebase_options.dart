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
    apiKey: 'AIzaSyCRJkktyu0W4dpOPkBvEtuDjWNTLVOoXMQ',
    appId: '1:1010482868471:web:d13da32e29e5229559e3f2',
    messagingSenderId: '1010482868471',
    projectId: 'ts-613-authentication',
    authDomain: 'ts-613-authentication.firebaseapp.com',
    storageBucket: 'ts-613-authentication.firebasestorage.app',
    measurementId: 'G-G9RMX4HG38',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBQwAEbXHx83CvHTtmQdmzieMD0nFAUka4',
    appId: '1:1010482868471:android:8c73307b15b0f15a59e3f2',
    messagingSenderId: '1010482868471',
    projectId: 'ts-613-authentication',
    storageBucket: 'ts-613-authentication.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDN6Ben6SdoNPMCqlK4mNwImDMDVMnhNQ0',
    appId: '1:1010482868471:ios:3d1a3cd1599b9b3259e3f2',
    messagingSenderId: '1010482868471',
    projectId: 'ts-613-authentication',
    storageBucket: 'ts-613-authentication.firebasestorage.app',
    iosBundleId: 'com.example.ts613FirebaseAuthenticationJotha',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDN6Ben6SdoNPMCqlK4mNwImDMDVMnhNQ0',
    appId: '1:1010482868471:ios:3d1a3cd1599b9b3259e3f2',
    messagingSenderId: '1010482868471',
    projectId: 'ts-613-authentication',
    storageBucket: 'ts-613-authentication.firebasestorage.app',
    iosBundleId: 'com.example.ts613FirebaseAuthenticationJotha',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCRJkktyu0W4dpOPkBvEtuDjWNTLVOoXMQ',
    appId: '1:1010482868471:web:b31b838f13d8890d59e3f2',
    messagingSenderId: '1010482868471',
    projectId: 'ts-613-authentication',
    authDomain: 'ts-613-authentication.firebaseapp.com',
    storageBucket: 'ts-613-authentication.firebasestorage.app',
    measurementId: 'G-J4GH9QLGN1',
  );
}
