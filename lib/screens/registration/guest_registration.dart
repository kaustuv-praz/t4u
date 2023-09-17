import 'package:flutter/material.dart';
import 'package:t4u/screens/registration/login_details_screen.dart';
import 'package:t4u/screens/registration/registration_screen.dart';
import 'package:t4u/widgets/circle_button.dart';
import '../../widgets/text_form_field_with_icon.dart';

class GuestRegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          padding: EdgeInsets.all(20.0),
          child: LoginDetailsScreen(),
        ),
        SizedBox(height: 30.0),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Profile Details',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              TextFormFieldWithIcon(
                icon: Icons.person,
                hintText: 'Name',
              ),
              SizedBox(height: 20.0),
              TextFormFieldWithIcon(
                icon: Icons.mail_outline,
                hintText: 'Email',
              ),
              SizedBox(height: 20.0),
              TextFormFieldWithIcon(
                icon: Icons.phone,
                hintText: 'Phone',
              ),
            ],
          ),
        ),
        SizedBox(height: 30.0),
        Register_Btn(),
        SizedBox(height: 40.0),
        // ... (Other components common to both Player and Guest forms)
      ],
    );
  }
}
