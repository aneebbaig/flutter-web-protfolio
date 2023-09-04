import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/pages_provider.dart';
import '../../../widgets/navbars/tablet_sidebar.dart';

class LandingTabletView extends StatelessWidget {
  const LandingTabletView({super.key});

  @override
  Widget build(BuildContext context) {
    PagesProvider pagesProvider = Provider.of<PagesProvider>(context);

    return Row(
      children: [
        TabletSidebar(
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
