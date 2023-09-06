import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_portfolio_flutter/provider/pages_provider.dart';

import '../../../widgets/navbars/sidebar.dart';

class LandingDesktopView extends StatefulWidget {
  const LandingDesktopView({super.key});

  @override
  State<LandingDesktopView> createState() => _LandingDesktopViewState();
}

class _LandingDesktopViewState extends State<LandingDesktopView> {
  @override
  Widget build(BuildContext context) {
    PagesProvider pagesProvider = Provider.of<PagesProvider>(context);

    return Row(
      children: [
        Sidebar(
          currentIndex: pagesProvider.currentIndex,
          onTap: (index) => pagesProvider.setIndex = index,
          children: pagesProvider.websitePages,
        ),
        Expanded(
          child: pagesProvider.currentPage,
        ),
      ],
    );
  }
}
