import 'package:flutter/material.dart';

class MyTextButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  const MyTextButton({super.key,
    required this.onTap,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Text(text,
        style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}
