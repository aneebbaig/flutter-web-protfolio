import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
    useMaterial3: true,
    textTheme: const TextTheme(
      headlineSmall: TextStyle(
        fontSize: 32,
      ),
      headlineMedium: TextStyle(
        fontSize: 48,
      ),
      headlineLarge: TextStyle(
        fontSize: 102,
      ),
    ),
  );

  // Define color constants here...
}
