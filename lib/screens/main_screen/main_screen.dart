import 'package:flutter/material.dart';
import 'package:web_portfolio_flutter/responsiveness/responsive_sizes.dart';
import 'package:web_portfolio_flutter/responsiveness/responsive_widget.dart';
import 'package:web_portfolio_flutter/screens/main_screen/adaptive_views/main_desktop_view.dart';
import 'package:web_portfolio_flutter/screens/main_screen/adaptive_views/main_mobile_view.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(responsiveMap: {
      ResponsiveSize.desktop: MainDesktopView(text: 'Desktop',),
      ResponsiveSize.tablet: MainDesktopView(text: 'Tablet',),
      ResponsiveSize.mobile: const MainMobileView(),
      
    },);
  }
}