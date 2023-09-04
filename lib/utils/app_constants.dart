import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_portfolio_flutter/screens/about_me/about_me_screen.dart';
import 'package:web_portfolio_flutter/screens/contact_me/contact_screen.dart';
import 'package:web_portfolio_flutter/screens/home/home_screen.dart';
import 'package:web_portfolio_flutter/screens/projects/project_screen.dart';
import 'package:web_portfolio_flutter/screens/skills/skills_screen.dart';

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

  static const List<Widget> websitePages = [
    HomeScreen(),
    AboutMeScreen(),
    SkillsScreen(),
    ProjectsScreen(),
    ContactScreen(),
  ];

  static TextStyle logoTextTheme = GoogleFonts.ibmPlexSerif(
    fontSize: 30,
    color: Colors.white,
  );
}
