import 'package:flutter/material.dart';
import 'package:t4u/widgets/text_form_field_with_icon.dart';

class LoginDetailsScreen extends StatelessWidget {
  const LoginDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Text(
            'Login Details',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 10.0),
        TextFormFieldWithIcon(
          icon: Icons.mail_outline,
          hintText: 'Email Address',
        ),
        SizedBox(height: 20.0),
        TextFormFieldWithIcon(
          icon: Icons.lock_outline,
          hintText: 'Password',
          obscureText: true,
        ),
        SizedBox(height: 20.0),
        TextFormFieldWithIcon(
          icon: Icons.lock_outline,
          hintText: 'Confirm Password',
          obscureText: true,
        ),
      ],
    );
  }
}
