import 'package:flutter/material.dart';
import 'package:web_portfolio_flutter/responsiveness/responsive_sizes.dart';
import 'package:web_portfolio_flutter/responsiveness/responsive_widget.dart';
import 'package:web_portfolio_flutter/utils/helper_funtions.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(responsiveMap: {
      ResponsiveSize.desktop: const DesktopSidebar(),
      ResponsiveSize.tablet: const TabletSidebar(),
      ResponsiveSize.mobile: Container(),
    },text: 'TABLET',);
  }
}

class DesktopSidebar extends StatelessWidget {
  const DesktopSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: HelperFunctions().getWidth(context) * 0.3,
      color: Colors.black,
    );
  }
}

class TabletSidebar extends StatelessWidget {
  const TabletSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: HelperFunctions().getWidth(context) * 0.1,
      color: Colors.red,
    );
  }
}
