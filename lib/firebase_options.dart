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
    apiKey: 'AIzaSyC2HotQdLbpqUsYSzy4oy5OY2R95IWLsoQ',
    appId: '1:108097768461:web:2f052b17a9c8829fa81944',
    messagingSenderId: '108097768461',
    projectId: 'fucci-rents',
    authDomain: 'fucci-rents.firebaseapp.com',
    storageBucket: 'fucci-rents.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBO8NOgZduimlnbSVS0ElKRYK5DUL4O7rs',
    appId: '1:108097768461:android:f72c646a17bd22dea81944',
    messagingSenderId: '108097768461',
    projectId: 'fucci-rents',
    storageBucket: 'fucci-rents.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB6Y2lKw9iFvX3KKuoO8O-bEeL_7sDK6g0',
    appId: '1:108097768461:ios:cef0239324e8012ea81944',
    messagingSenderId: '108097768461',
    projectId: 'fucci-rents',
    storageBucket: 'fucci-rents.appspot.com',
    androidClientId:
        '108097768461-h52a62dgokvafk4h2pfgda7umafn03lp.apps.googleusercontent.com',
    iosClientId:
        '108097768461-7slcbta31mhai5jjp3u5t1fdcel4u6po.apps.googleusercontent.com',
    iosBundleId: 'com.example.fucciRent',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB6Y2lKw9iFvX3KKuoO8O-bEeL_7sDK6g0',
    appId: '1:108097768461:ios:415edfe8c9911661a81944',
    messagingSenderId: '108097768461',
    projectId: 'fucci-rents',
    storageBucket: 'fucci-rents.appspot.com',
    androidClientId:
        '108097768461-h52a62dgokvafk4h2pfgda7umafn03lp.apps.googleusercontent.com',
    iosClientId:
        '108097768461-cmnblcubl90d6o0ibdrrt0dgbsevsvkb.apps.googleusercontent.com',
    iosBundleId: 'com.example.fucciRent.RunnerTests',
  );
}