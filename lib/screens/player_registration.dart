import 'package:flutter/material.dart';
import 'package:t4u/screens/registration/login_details_screen.dart';
import '../widgets/circle_button.dart';
import '../widgets/text_form_field_with_icon.dart';

class PlayerRegistrationScreen extends StatelessWidget {
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
              Center(
                child: CircleButton(
                  icon: Icons.add,
                  label: "Add Profile Picture",
                ),
              ),
              SizedBox(height: 20.0),
              TextFormFieldWithIcon(
                icon: Icons.person,
                hintText: 'Name',
              ),
              SizedBox(height: 20.0),
              TextFormFieldWithIcon(
                icon: Icons.location_on,
                hintText: 'Address',
              ),
              SizedBox(height: 20.0),
              TextFormFieldWithIcon(
                icon: Icons.mail_outline,
                hintText: 'Email',
              ),
              SizedBox(height: 20.0),
              TextFormFieldWithIcon(
                icon: Icons.location_city,
                hintText: 'Zip-code',
              ),
              SizedBox(height: 20.0),
              TextFormFieldWithIcon(
                icon: Icons.phone,
                hintText: 'Phone',
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextFormFieldWithIcon(
                      icon: Icons.line_weight,
                      hintText: 'Weight',
                    ),
                  ),
                  SizedBox(width: 20.0),
                  Expanded(
                    child: TextFormFieldWithIcon(
                      icon: Icons.height,
                      hintText: 'Height',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 30.0),
        Container(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            child: Text('REGISTER'),
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
              textStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
              padding: EdgeInsets.symmetric(vertical: 15.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
