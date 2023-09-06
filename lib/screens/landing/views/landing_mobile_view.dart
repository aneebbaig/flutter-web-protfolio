import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_portfolio_flutter/widgets/navbars/navbar_widgets/custom_drawer.dart';

import '../../../provider/pages_provider.dart';

class LandingMobileView extends StatelessWidget {
  const LandingMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    PagesProvider pagesProvider = Provider.of<PagesProvider>(context);

    return Scaffold(
      appBar: AppBar(),
      drawer: CustomDrawer(
        onTap: (index) => pagesProvider.setIndex = index,
        children: pagesProvider.websitePages,
      ),
      body: pagesProvider.currentPage,
    );
  }
}
