import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mohammad_shboul/pages/Home.dart';
import 'package:mohammad_shboul/pages/Sign_up.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:mohammad_shboul/pages/Sign_in.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MaterialApp(
    routes: {
      "Sign_up": (context) => const SignUpPage(),
      "Sign_in": (context) => const Log_in()
    },
    home: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Home();
  }
}
