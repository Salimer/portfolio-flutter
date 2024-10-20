import 'package:flutter/material.dart';

class AppColors {
  static const MaterialColor identity = MaterialColor(
    0xFF6936F5, // Primary color (500)
    <int, Color>{
      50: Color(0xFFEDE4FF), // Lightest
      100: Color(0xFFD2BBFF), // Lighter
      200: Color(0xFFB392FF), // Light
      300: Color(0xFF9469FF), // Light-medium
      400: Color(0xFF8253F5), // Slightly lighter than the primary
      500: Color(0xFF6936F5), // Primary
      600: Color(0xFF5F32DD), // Slightly darker
      700: Color(0xFF522DC4), // Darker
      800: Color(0xFF4629AC), // Dark
      900: Color(0xFF341F87), // Darkest
    },
  );

  static const MaterialColor red = MaterialColor(
    0xffe23e3e,
    <int, Color>{
      500: Color(0xffe23e3e),
      400: Color(0xffe86565),
      300: Color(0xffee8b8b),
      200: Color(0xfff3b2b2),
    },
  );

  static const MaterialColor orange = MaterialColor(
    0xffff9c00,
    <int, Color>{
      500: Color(0xffff9c00),
      400: Color(0xffffa61a),
      200: Color(0xffffce80),
      100: Color(0xffffe1b3),
      50: Color(0xffFFF5E6)
    },
  );

  static const Color grey1 = Color(0xff49465f);
  static const Color grey2 = Color(0xff858494);
  static const Color grey3 = Color(0xffdcdcdc);
  static const Color grey4 = Color(0xffe6e6e6);
  static const Color grey5 = Color(0xffFCFCFC);
  static const Color black = Color(0xff0c092a);
  static const Color white = Color(0xffffffff);
}
