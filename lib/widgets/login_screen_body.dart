import 'package:flutter/material.dart';
import 'package:practice/widgets/custom_text_field.dart';

class LoginScreenBody extends StatelessWidget {
  LoginScreenBody({super.key});
  String? userName, password;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height * .4,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Member Login',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 32,
                    ),
                  ),
                ),
                CustomTextField(
                  onchanged: (data) {
                    userName = data;
                  },
                  iconData: Icons.person,
                  hintText: 'UserName',
                ),
                const SizedBox(
                  height: 2,
                ),
                CustomTextField(
                  onchanged: (data) {
                    password = data;
                  },
                  obscureText: true,
                  iconData: Icons.lock,
                  hintText: 'password',
                ),
                const SizedBox(
                  height: 3,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: (() {}),
                      child: const Text(
                        'LOGIN',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
