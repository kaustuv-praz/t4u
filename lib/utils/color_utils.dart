// color_utils.dart

import 'package:flutter/material.dart';

class AppColors {
  // Primary Colors
  static const Color primary = Colors.green;

  // For a primary color like green, a complementary color might be its contrasting shade.
  // However, for simplicity, I'll derive variants based on the green color itself.
  static Color primaryVariant = Colors.green[700]!;

  // Secondary Colors (Choosing teal as it's a compatible color for green)
  static const Color secondary = Colors.teal;
  static Color secondaryVariant = Colors.teal[700]!;

  // Background & Surface
  static const Color background = Color(0xFFFFFFFF);
  static const Color surface = Color(0xFFFFFFFF);

  // Error Color
  static const Color error = Color(0xFFB00020);

  // On Colors (Text & Icons to be shown on top of primary, secondary, etc.)
  static const Color onPrimary = Color(0xFFFFFFFF);
  static const Color onSecondary = Color(0xFF000000);
  static const Color onBackground = Color(0xFF000000);
  static const Color onSurface = Color(0xFF000000);
  static const Color onError = Color(0xFFFFFFFF);

  // For disabled states, using gray color
  static const Color disabled = Colors.grey;

  // Additional Colors based on use case
  static const Color info = Color(0xFF2196F3);
  static const Color success = Color(0xFF4CAF50);
  static const Color warning = Color(0xFFFFC107);

  // You can expand this list for other use cases or adjust the existing values.
}
