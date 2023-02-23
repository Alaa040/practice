import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.iconData,
    this.obscureText = false,
    required this.onchanged,
    required this.textInputType,
  });
  final String hintText;
  final IconData? iconData;
  final bool? obscureText;
  final TextInputType textInputType;
  final Function(String)? onchanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        keyboardType: textInputType,
        cursorColor: Colors.grey,
        onChanged: onchanged,
        obscureText: obscureText!,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
            borderSide: const BorderSide(
              color: Colors.grey,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          filled: true,
          hintText: hintText,
          prefixIcon: Icon(iconData),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
