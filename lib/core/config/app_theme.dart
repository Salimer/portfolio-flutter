import 'package:flutter/material.dart';

import '../../assets/gen/fonts.gen.dart';
import '../constants/app_colors.dart';

class AppTheme {
  static ThemeData _baseTheme() {
    final ThemeData theme = ThemeData.light();
    return theme.copyWith(
      textTheme: theme.textTheme.apply(fontFamily: FontFamily.poppins),
      primaryColor: AppColors.identity,
    );
  }

  static ThemeData get lightTheme => _baseTheme().copyWith(
        scaffoldBackgroundColor: Colors.white,
      );

  static ThemeData get darkTheme => _baseTheme().copyWith(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.white,
      );
}


// #6936f5