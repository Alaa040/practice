import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hintText,
      required this.iconData,
      this.obscureText = false,
      this.onchanged});
  final String hintText;
  final IconData iconData;
  final bool? obscureText;
  final Function(String)? onchanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        onChanged: onchanged,
        obscureText: obscureText!,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xffDBDBDB),
            ),
          ),
          filled: true,
          fillColor: const Color(0xffDBDBDB),
          hintText: hintText,
          helperStyle: const TextStyle(
            color: Colors.grey,
          ),
          prefixIcon: Icon(iconData),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xffDBDBDB),
            ),
          ),
        ),
      ),
    );
  }
}
