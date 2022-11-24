import 'package:flutter/material.dart';
import 'package:recs1/screens/home/home.dart';
import 'package:recs1/screens/auth/register.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:recs1/screens/auth/Login.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // if (kIsWeb) {
  //   await Firebase.initializeApp(
  //     options: const FirebaseOptions(
  //       apiKey: "",
  //       authDomain: "",
  //       projectId: "",
  //       storageBucket: "",
  //       messagingSenderId: "",
  //       appId: "",
  //       measurementId: "",
  //     ),
  //   );
  // } else {
  await Firebase.initializeApp();
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/': (context) =>Login(),
      '/home': (context) =>Home(),
      '/register': (context) => Register(),
    },
  ));
}



