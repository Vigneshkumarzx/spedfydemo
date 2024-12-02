import 'package:flutter/material.dart';

class AppTheme {
  static final darkTheme = ThemeData(
    primaryColor: const Color(0xFF1DB954),
    scaffoldBackgroundColor: const Color(0xFF121212),
    brightness: Brightness.dark,
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      headlineMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        color: Colors.grey,
      ),
    ),
  );
}
