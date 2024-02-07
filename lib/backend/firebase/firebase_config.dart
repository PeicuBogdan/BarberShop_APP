import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDtDEGehinTWmp2xlo4qa-EkcM3S_3QFck",
            authDomain: "down-stairs-barber-shop-3givly.firebaseapp.com",
            projectId: "down-stairs-barber-shop-3givly",
            storageBucket: "down-stairs-barber-shop-3givly.appspot.com",
            messagingSenderId: "836710639150",
            appId: "1:836710639150:web:2a3984081fd45f524461bf"));
  } else {
    await Firebase.initializeApp();
  }
}
