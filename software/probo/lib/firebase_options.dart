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
    apiKey: 'AIzaSyCcIcrfjDq0exXhov0MebNbOZzfIR1Fi-o',
    appId: '1:342083126011:web:bdbdc353b564e92b1a265e',
    messagingSenderId: '342083126011',
    projectId: 'probo-61bd9',
    authDomain: 'probo-61bd9.firebaseapp.com',
    storageBucket: 'probo-61bd9.appspot.com',
    measurementId: 'G-92Z7DN4PNK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDFCfsmE7tF6Yr2x0BSrsYQftfRyhtPdVo',
    appId: '1:342083126011:android:c4d11a8e435de72b1a265e',
    messagingSenderId: '342083126011',
    projectId: 'probo-61bd9',
    storageBucket: 'probo-61bd9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAKuPgdjm_ZwKIz_q5G9kic46GZp8IDqFE',
    appId: '1:342083126011:ios:8f2ccbe4865d01381a265e',
    messagingSenderId: '342083126011',
    projectId: 'probo-61bd9',
    storageBucket: 'probo-61bd9.appspot.com',
    iosBundleId: 'com.example.probo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAKuPgdjm_ZwKIz_q5G9kic46GZp8IDqFE',
    appId: '1:342083126011:ios:8f2ccbe4865d01381a265e',
    messagingSenderId: '342083126011',
    projectId: 'probo-61bd9',
    storageBucket: 'probo-61bd9.appspot.com',
    iosBundleId: 'com.example.probo',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCcIcrfjDq0exXhov0MebNbOZzfIR1Fi-o',
    appId: '1:342083126011:web:4624281e183295cd1a265e',
    messagingSenderId: '342083126011',
    projectId: 'probo-61bd9',
    authDomain: 'probo-61bd9.firebaseapp.com',
    storageBucket: 'probo-61bd9.appspot.com',
    measurementId: 'G-JZF806KXKC',
  );
}
