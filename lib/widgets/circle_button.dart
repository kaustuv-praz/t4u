import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool? isSelected;
  final VoidCallback?
      onPressed; // Define this callback for the onPressed action

  CircleButton({
    required this.icon,
    required this.label,
    this.isSelected,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed, // Call the provided onPressed callback
      child: Column(
        children: [
          Container(
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isSelected ?? false ? Colors.green : Colors.grey,
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: 36.0,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            label,
            style: TextStyle(
              color: isSelected ?? false ? Colors.green : Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
