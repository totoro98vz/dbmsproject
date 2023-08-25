import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCc-9G1hDTiYSk0-QPGXLUwSvq9jcZqcK8",
            authDomain: "copper-7e53b.firebaseapp.com",
            projectId: "copper-7e53b",
            storageBucket: "copper-7e53b.appspot.com",
            messagingSenderId: "483943341628",
            appId: "1:483943341628:web:1fc0395498ba2429fd6d39"));
  } else {
    await Firebase.initializeApp();
  }
}
