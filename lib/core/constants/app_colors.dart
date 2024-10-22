import 'package:flutter/material.dart';

class AppColors {
  static const MaterialColor identity = MaterialColor(
    0xFF6070ff, // Primary color (500)
    <int, Color>{
      50: Color(0xFFEBEBFF), // Lightest (added #EBEBFF here)
      100: Color(0xFFC5CDFF), // Lighter
      200: Color(0xFFA0ADFF), // Light
      300: Color(0xFF7F8CFF), // Light-medium
      400: Color(0xFF6076FF), // Slightly lighter than the primary
      500: Color(0xFF6070FF), // Primary
      600: Color(0xFF5666E5), // Slightly darker
      700: Color(0xFF4A59CC), // Darker
      800: Color(0xFF344563), // Dark
      900: Color(0xFF172B4D), // Darkest
    },
  );

  static const Color backgroundThemeColor = Color(0xfff7f7f9);
  static const Color icons = Color(0xff505F79);
  static const Color border = Color(0xffdfe1e6);
  static const Color smallGreyCircle = Color(0xffc1c7d0);
  static const Color greyText = Color(0xff7a869a);

  static const Color grey1 = Color(0xff49465f);
  static const Color grey2 = Color(0xff858494);
  static const Color grey3 = Color(0xffdcdcdc);
  static const Color grey4 = Color(0xffe6e6e6);
  static const Color grey5 = Color(0xffFCFCFC);
  static const Color black = Color(0xff0c092a);
  static const Color white = Color(0xffffffff);
}
