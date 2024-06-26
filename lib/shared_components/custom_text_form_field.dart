import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField(
      {super.key,
      this.suffixIcon,
      this.keyboardType,
      required this.hintText,
      required this.obscureText,
      required this.controller,
      required this.validator});

  final String hintText;
  final bool obscureText;
  final TextInputType? keyboardType;

  final TextEditingController controller;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
          suffixIcon: suffixIcon,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(7)),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
          hintText: hintText),
      obscureText: obscureText,
      validator: validator,
    );
  }
}
