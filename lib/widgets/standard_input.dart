import 'package:flutter/material.dart';

class StandardInput extends StatelessWidget {
  const StandardInput({super.key, required this.isObscureText, required this.labelText});

  final bool isObscureText;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isObscureText,
      decoration: InputDecoration(labelText: labelText, border: OutlineInputBorder()),
    );
  }
}