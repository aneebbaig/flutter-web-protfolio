import 'package:flutter/material.dart';
import 'package:web_portfolio_flutter/responsive/responsive_wrapper.dart';
import 'package:web_portfolio_flutter/screens/home/views/home_desktop.dart';
import 'package:web_portfolio_flutter/screens/home/views/home_mobile.dart';
import 'package:web_portfolio_flutter/screens/home/views/home_tablet.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: ResponsiveWrapper(
      desktop: HomeDesktop(),
      tablet: HomeTablet(),
      mobile: HomeMobile(),
    ));
  }
}
