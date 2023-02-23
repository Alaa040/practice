import 'package:flutter/material.dart';
import 'package:practice/screens/login_screen.dart';
import 'package:practice/screens/register_screen.dart';

import 'custom_button.dart';

class SignScreenBody extends StatelessWidget {
  const SignScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        const SizedBox(
          height: 200,
        ),
        const Text(
          'Hello World',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 9),
          child: Text(
            'Lorem ipsum dolor sit armet  conseteure\n sadipscing elitr, sed diam nonumy eirmod\n eirmod tempor invidunt ut labore et dolore',
            style: TextStyle(
              color: Color(0xffBBBBBB),
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const Spacer(
          flex: 3,
        ),
        SizedBox(
          height: height * .06,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: CustomButton(
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
              colorText: Colors.white,
              fillColor: const Color(0xff2B475E),
              text: 'Sign In',
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: SizedBox(
            height: height * .06,
            width: double.infinity,
            child: CustomButton(
              onPressed: () {
                Navigator.pushNamed(context, RegisterScreen.id);
              },
              colorText: const Color(0xff2B475E),
              fillColor: const Color(0xffBBBBBB),
              text: 'Sign Up',
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
