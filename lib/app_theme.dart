import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
    useMaterial3: true,
    textTheme: TextTheme(
      headlineSmall: GoogleFonts.poppins(fontSize: 32),
      headlineMedium: GoogleFonts.poppins(fontSize: 48),
      headlineLarge: GoogleFonts.poppins(fontSize: 102),
      bodySmall: GoogleFonts.roboto(fontSize: 16),
      bodyMedium: GoogleFonts.roboto(fontSize: 18),
      bodyLarge: GoogleFonts.roboto(fontSize: 25),
      titleMedium: GoogleFonts.poppins(fontSize: 20),
    ),
  );
}
