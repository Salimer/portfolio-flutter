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
        scaffoldBackgroundColor: AppColors.backgroundThemeColor,
      );

  static ThemeData get darkTheme => _baseTheme().copyWith(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: AppColors.backgroundThemeColor,
      );
}


// #6936f5