import 'package:flutter/material.dart';

import '../../../widgets/navbars/tablet_sidebar.dart';

class LandingTabletView extends StatelessWidget {
  const LandingTabletView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        TabletSidebar(),
        // Expanded(
        //   child: Center(
        //     child: Text("Tablet View"),
        //   ),
        // ),
      ],
    );
  }
}
