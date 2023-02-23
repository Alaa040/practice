import 'package:flutter/material.dart';
import 'package:practice/constant.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  static String id = 'RegisterScreen';
  String? email, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 32),
            child: Row(
              children: const [
                Text(
                  'Create your Account',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          CustomTextField(
            textInputType: TextInputType.emailAddress,
            hintText: 'Email',
            onchanged: (data) {
              email = data;
            },
          ),
          CustomTextField(
            textInputType: TextInputType.number,
            hintText: 'Password',
            onchanged: (data) {
              password = data;
            },
          ),
          const SizedBox(
            height: 15,
          ),
          CustomButton(
            onPressed: () {},
            colorText: Colors.white,
            fillColor: kMainColor,
            text: 'Sign In',
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Forgot Password ?',
            style: TextStyle(
              color: kMainColor,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
