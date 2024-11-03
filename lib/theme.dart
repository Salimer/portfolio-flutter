import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    brightness: Brightness.light,
    fontFamily: 'OpenSans', // Ensure you have added this font
    textTheme: const TextTheme(
      displaySmall: TextStyle(
        fontSize: 48.0,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      headlineMedium: TextStyle(
        fontSize: 34.0,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
      headlineSmall: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
      titleMedium: TextStyle(
        fontSize: 18.0,
        color: Colors.black87,
      ),
      bodyLarge: TextStyle(
        fontSize: 16.0,
        color: Colors.black87,
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
      elevation: 0,
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.blue, // Default button color
      textTheme: ButtonTextTheme.primary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white, backgroundColor: Colors.blue, // Button text color
        textStyle: TextStyle(fontSize: 16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    ),
    iconTheme: const IconThemeData(
      color: Colors.black54,
    ),
  );
}