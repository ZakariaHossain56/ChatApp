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
    apiKey: 'AIzaSyAclaksp9A9olW8gE6TA0caADJK4I73r7I',
    appId: '1:593306079403:web:af2b8ea84d816453c367ee',
    messagingSenderId: '593306079403',
    projectId: 'chat-app-42c73',
    authDomain: 'chat-app-42c73.firebaseapp.com',
    storageBucket: 'chat-app-42c73.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAum4ve8Ve5ixKomBBDSrXeG5Me6xlIIPU',
    appId: '1:593306079403:android:780350da9988d36ec367ee',
    messagingSenderId: '593306079403',
    projectId: 'chat-app-42c73',
    storageBucket: 'chat-app-42c73.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDtQSjam0rWkD6RvMUXMaZgNJggxzNU3Ns',
    appId: '1:593306079403:ios:5f00d0348b47afedc367ee',
    messagingSenderId: '593306079403',
    projectId: 'chat-app-42c73',
    storageBucket: 'chat-app-42c73.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDtQSjam0rWkD6RvMUXMaZgNJggxzNU3Ns',
    appId: '1:593306079403:ios:5f00d0348b47afedc367ee',
    messagingSenderId: '593306079403',
    projectId: 'chat-app-42c73',
    storageBucket: 'chat-app-42c73.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAclaksp9A9olW8gE6TA0caADJK4I73r7I',
    appId: '1:593306079403:web:7576d4f63b0bf6e9c367ee',
    messagingSenderId: '593306079403',
    projectId: 'chat-app-42c73',
    authDomain: 'chat-app-42c73.firebaseapp.com',
    storageBucket: 'chat-app-42c73.appspot.com',
  );

}