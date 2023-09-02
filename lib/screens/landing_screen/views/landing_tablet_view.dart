import 'package:flutter/material.dart';

import '../../../widgets/navbars/navigation_rail.dart';

class LandingTabletView extends StatelessWidget {
  const LandingTabletView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        MyNavigationRail(),
        Expanded(
          child: Center(
            child: Text("Tablet View"),
          ),
        ),
      ],
    );
  }
}
