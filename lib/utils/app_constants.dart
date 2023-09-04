import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const int pcScreenSize = 1366;
const int tabletScreenSize = 768;
const int mobileScreenSize = 360;

class AppConstants {
  static const Map<String, IconData> applicationPages = {
    "Home": Icons.home,
    "About": Icons.miscellaneous_services,
    "Projects": Icons.work_history,
    "Contact": Icons.contacts_rounded,
  };

  static TextStyle logoTextTheme = GoogleFonts.ibmPlexSerif(
    fontSize: 30,
    color: Colors.white,
  );
}
