import 'package:flutter/material.dart';
import 'package:practice/widgets/sign_screen_body.dart';

class SignScreen extends StatelessWidget {
  const SignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SignScreenBody(),
    );
  }
}
