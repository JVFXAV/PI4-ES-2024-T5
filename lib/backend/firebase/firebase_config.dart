import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDhZzuLJhKGHFEVmGzuUD5yvkO7E21n3XY",
            authDomain: "servicos-ja-pi4-es-2024-t5.firebaseapp.com",
            projectId: "servicos-ja-pi4-es-2024-t5",
            storageBucket: "servicos-ja-pi4-es-2024-t5.appspot.com",
            messagingSenderId: "264925967880",
            appId: "1:264925967880:web:6a0cacaaf31afd831a03bd",
            measurementId: "G-MZBEJJJFB3"));
  } else {
    await Firebase.initializeApp();
  }
}
