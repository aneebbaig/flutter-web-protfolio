import 'package:flutter/material.dart';
import 'package:web_portfolio_flutter/utils/app_constants.dart';

import '../../../widgets/navbars/sidebar.dart';

class LandingDesktopView extends StatefulWidget {
  const LandingDesktopView({super.key});

  @override
  State<LandingDesktopView> createState() => _LandingDesktopViewState();
}

class _LandingDesktopViewState extends State<LandingDesktopView> {
  int currentIndex = 0;

  void _sidebarOnTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Sidebar(
          currentIndex: currentIndex,
          onTap: (index) => _sidebarOnTap(index),
          children: AppConstants.websitePages,
        ),
        Expanded(
          child: AppConstants.websitePages[currentIndex],
        ),
      ],
    );
  }
}
