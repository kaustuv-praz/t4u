import 'package:flutter/material.dart';

class TextFormFieldWithIcon extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final bool obscureText;

  TextFormFieldWithIcon({
    required this.icon,
    required this.hintText,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );
  }
}
