import 'package:flutter/material.dart';
import 'package:web_portfolio_flutter/models/webpage.dart';

import '../screens/about_me/about_me_screen.dart';
import '../screens/contact_me/contact_screen.dart';
import '../screens/home/home_screen.dart';
import '../screens/projects/project_screen.dart';
import '../screens/skills/skills_screen.dart';

class PagesProvider extends ChangeNotifier {
  late int _currentIndex;
  final List<Webpage> _websitePages = [
    Webpage(label: 'Home', widget: const HomeScreen(), icon: Icons.home),
    Webpage(
        label: 'About Me',
        widget: const AboutMeScreen(),
        icon: Icons.verified_user),
    Webpage(
        label: 'Skills', widget: const SkillsScreen(), icon: Icons.settings),
    Webpage(
        label: 'Projects', widget: const ProjectsScreen(), icon: Icons.work),
    Webpage(label: "Contact", widget: const ContactScreen(), icon: Icons.email),
  ];

  PagesProvider() {
    _currentIndex = 0;
  }

  int get currentIndex => _currentIndex;
  List<Webpage> get websitePages => _websitePages;
  Widget get currentPage => _websitePages[_currentIndex].widget;

  set setIndex(int selectedIndex) {
    _currentIndex = selectedIndex;
    notifyListeners();
  }
}
