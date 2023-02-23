import 'package:flutter/material.dart';
import 'package:practice/screens/login_screen.dart';
import 'package:practice/screens/register_screen.dart';
import 'package:practice/screens/sign_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        RegisterScreen.id: (context) =>  RegisterScreen(),
        LoginScreen.id: (context) =>  LoginScreen(),
      },
      debugShowCheckedModeBanner: false,
      home: const SignScreen(),
    );
  }
}
