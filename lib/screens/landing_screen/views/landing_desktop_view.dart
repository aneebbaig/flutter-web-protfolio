import 'package:flutter/material.dart';

import '../../../widgets/navbars/sidebar.dart';

class LandingDesktopView extends StatelessWidget {
  const LandingDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Sidebar(),
        Expanded(
          child: Center(
            child: Text("Desktop View"),
          ),
        ),
      ],
    );
  }
}
