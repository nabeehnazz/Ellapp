import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC6ACXMZ7RAbSMRsP7yi9PMvDblo4FE_38",
            authDomain: "ellapp-78d8b.firebaseapp.com",
            projectId: "ellapp-78d8b",
            storageBucket: "ellapp-78d8b.appspot.com",
            messagingSenderId: "463607294075",
            appId: "1:463607294075:web:94fee580e2e951327f1ade",
            measurementId: "G-Q9PEEDMGSW"));
  } else {
    await Firebase.initializeApp();
  }
}
