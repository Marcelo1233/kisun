import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAs5CRV8KNT0zbKb3qI4ENnVKBzDfb6R8A",
            authDomain: "kisun-cc398.firebaseapp.com",
            projectId: "kisun-cc398",
            storageBucket: "kisun-cc398.appspot.com",
            messagingSenderId: "461335962948",
            appId: "1:461335962948:web:47c756df1c8626c192a311"));
  } else {
    await Firebase.initializeApp();
  }
}
