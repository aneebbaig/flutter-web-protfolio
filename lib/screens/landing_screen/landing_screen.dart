import 'package:flutter/material.dart';
import 'package:web_portfolio_flutter/responsive/responsive_wrapper.dart';
import 'package:web_portfolio_flutter/screens/landing_screen/views/landing_desktop_view.dart';
import 'package:web_portfolio_flutter/screens/landing_screen/views/landing_mobile_view.dart';
import 'package:web_portfolio_flutter/screens/landing_screen/views/landing_tablet_view.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveWrapper(
        desktop: LandingDesktopView(),
        mobile: LandingMobileView(),
        tablet: LandingTabletView(),
      ),
    );
  }
}
