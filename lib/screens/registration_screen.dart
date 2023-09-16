import 'package:flutter/material.dart';
import 'package:t4u/screens/guest_registration.dart';
import 'package:t4u/screens/player_registration.dart';
import '../widgets/circle_button.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool isPlayerSelected = true; // Default to player form

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                SizedBox(height: 100.0),
                Text(
                  'Registration',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleButton(
                      icon: Icons.person_outline,
                      label: "Guest",
                      isSelected: !isPlayerSelected,
                      onPressed: () {
                        setState(() {
                          isPlayerSelected = false;
                        });
                      },
                    ),
                    SizedBox(width: 40.0),
                    CircleButton(
                      icon: Icons.gamepad_outlined,
                      label: "Player",
                      isSelected: isPlayerSelected,
                      onPressed: () {
                        setState(() {
                          isPlayerSelected = true;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 40.0),
                // Show the appropriate form based on the selected button
                isPlayerSelected
                    ? PlayerRegistrationScreen()
                    : GuestRegistrationScreen(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
