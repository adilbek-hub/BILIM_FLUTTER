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
        return windows;
      case TargetPlatform.linux:
        return linux;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCJ9N2OqFEr6tEFpOCx9H8EWkp_e3cOYus',
    appId: '1:162860758777:web:029b0b19b0e866da30d428',
    messagingSenderId: '162860758777',
    projectId: 'todo-c0d50',
    authDomain: 'todo-c0d50.firebaseapp.com',
    storageBucket: 'todo-c0d50.appspot.com',
    measurementId: 'G-HP09F2TM28',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBoMCNl7i4MG0einchZWrzY4b81gp6Xqgw',
    appId: '1:162860758777:android:4eb98f3405a0617230d428',
    messagingSenderId: '162860758777',
    projectId: 'todo-c0d50',
    storageBucket: 'todo-c0d50.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCMFWYo7a4zjUoXzAq9o4R4dou7iwGTLQg',
    appId: '1:162860758777:ios:6b05ad530361716430d428',
    messagingSenderId: '162860758777',
    projectId: 'todo-c0d50',
    storageBucket: 'todo-c0d50.appspot.com',
    iosClientId: '162860758777-hmhcolfg9vk9ll2ks1n1g8hbfm8aao7s.apps.googleusercontent.com',
    iosBundleId: 'com.example.sabak33Firebase1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCMFWYo7a4zjUoXzAq9o4R4dou7iwGTLQg',
    appId: '1:162860758777:ios:7cab96d17f524bce30d428',
    messagingSenderId: '162860758777',
    projectId: 'todo-c0d50',
    storageBucket: 'todo-c0d50.appspot.com',
    iosClientId: '162860758777-6d530jikf6vqh7dq0rgd0q1gga8gb9l1.apps.googleusercontent.com',
    iosBundleId: 'com.example.sabak33Firebase1.RunnerTests',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCJ9N2OqFEr6tEFpOCx9H8EWkp_e3cOYus',
    appId: '1:162860758777:web:89737b0a2d42f6bd30d428',
    messagingSenderId: '162860758777',
    projectId: 'todo-c0d50',
    authDomain: 'todo-c0d50.firebaseapp.com',
    storageBucket: 'todo-c0d50.appspot.com',
    measurementId: 'G-P5RX5G63G1',
  );

  static const FirebaseOptions linux = FirebaseOptions(
    apiKey: 'AIzaSyCJ9N2OqFEr6tEFpOCx9H8EWkp_e3cOYus',
    appId: '1:162860758777:web:830da21517a236ac30d428',
    messagingSenderId: '162860758777',
    projectId: 'todo-c0d50',
    authDomain: 'todo-c0d50.firebaseapp.com',
    storageBucket: 'todo-c0d50.appspot.com',
    measurementId: 'G-VH5RFPYKD6',
  );
}
