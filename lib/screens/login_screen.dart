import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:practice/constant.dart';

import 'package:practice/widgets/custom_text_field.dart';

import '../widgets/custom_button.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  static String id = 'LoginScreen';
  String? email, password;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 32),
            child: Row(
              children: const [
                Text(
                  'Login to your Account',
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
            fillColor: const Color(0xff2B475E),
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
          const SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: CustomButtonWithIcon(
                    onTap: () {},
                    text: 'sign in',
                    iconData: Icons.facebook,
                    color: kMainColor,
                  ),
                ),
              ),
              const Flexible(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: CustomButtonWithIcon(
                    text: 'sign in',
                    iconData: FontAwesomeIcons.googlePlusG,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
