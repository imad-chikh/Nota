import 'package:app_01/ui/pages/auth/login_page.dart';
import 'package:app_01/ui/pages/note/note_reader.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'ui/pages/auth/auth_page.dart';
import 'ui/pages/auth/register_page.dart';
import 'ui/pages/note/home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      home: AuthPage(),

      routes:
      {
        "Login" : (context)=>LoginPage(),
        "Register" : (context)=>RegisterPage(),
        "Auth" : (context)=>AuthPage(),
        "HomePage" : (context)=>NoteReaderPage(),
      },
    );
  }
}
