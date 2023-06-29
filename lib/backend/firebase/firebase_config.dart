import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDaIQbgDQUZU-jgtkxLzGSQX8lBOU3lKak",
            authDomain: "bibliotecasimer.firebaseapp.com",
            projectId: "bibliotecasimer",
            storageBucket: "bibliotecasimer.appspot.com",
            messagingSenderId: "775666598409",
            appId: "1:775666598409:web:ef93be5162449acd2a6ed8"));
  } else {
    await Firebase.initializeApp();
  }
}
