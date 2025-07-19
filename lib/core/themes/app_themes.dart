import 'package:flutter/material.dart';

class AppThemes {
  // Light Theme Configuration
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.grey[50],
    appBarTheme: const AppBarTheme(
      color: Colors.blue,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    colorScheme: ColorScheme.light(
      primary: Colors.blue,
      secondary: Colors.blueAccent,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      background: Colors.white,
      surface: Colors.white,
      error: Colors.red,
      onBackground: Colors.black87,
      onSurface: Colors.black87,
      onError: Colors.white,
    ),
    cardTheme: CardTheme(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );

  // Dark Theme Configuration
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.teal,
    scaffoldBackgroundColor: const Color(0xFF121212),
    appBarTheme: AppBarTheme(
      color: Colors.grey[900],
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.white),
      titleTextStyle: const TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    colorScheme: ColorScheme.dark(
      primary: Colors.teal,
      secondary: Colors.tealAccent,
      onPrimary: Colors.black,
      onSecondary: Colors.black,
      background: const Color(0xFF121212),
      surface: const Color(0xFF1E1E1E),
      error: Colors.redAccent,
      onBackground: Colors.white,
      onSurface: Colors.white,
      onError: Colors.black,
    ),
    cardTheme: CardTheme(
      color: const Color(0xFF1E1E1E),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );
}