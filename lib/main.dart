import 'package:flutter/material.dart';
import 'package:reciclaqui/pages/Home_Page.dart';
import 'package:reciclaqui/pages/Login_Screen.dart';
import 'package:reciclaqui/pages/Signup_Screen.dart';
import 'package:reciclaqui/pages/Welcome_Screen.dart';
import 'package:reciclaqui/pages/Reason_Screen.dart';
import 'package:reciclaqui/pages/Partners_Screen.dart';
import 'package:firebase_core/firebase_core.dart' as firebase_core;
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Necessário para o uso de 'async' no main
  await firebase_core.Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/', //  rota inicial
      routes: {
        '/': (context) => WelcomeScreen(),
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignupScreen(),
        '/home': (context) => const HomePage(),
        '/reason': (context) => ReasonScreen(),
        '/partners': (context) => PartnersScreen(),
      },
    );
  }
}
