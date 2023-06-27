import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCJdu0MFpsyYE2oawPMI1xEx8ws__WbAGw",
            authDomain: "bibliotec-e5d70.firebaseapp.com",
            projectId: "bibliotec-e5d70",
            storageBucket: "bibliotec-e5d70.appspot.com",
            messagingSenderId: "855913683500",
            appId: "1:855913683500:web:ea3fb36c74da6b1ae98f89",
            measurementId: "G-P6HL2HNQ4X"));
  } else {
    await Firebase.initializeApp();
  }
}
