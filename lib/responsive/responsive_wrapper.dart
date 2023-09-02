import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

class ResponsiveWrapper extends StatelessWidget {
  final Widget desktop, tablet, mobile;
  const ResponsiveWrapper({
    super.key,
    required this.desktop,
    required this.tablet,
    required this.mobile,
  });

  @override
  Widget build(BuildContext context) {
    if (ResponsiveBreakpoints.of(context).isDesktop) {
      return desktop;
    }
    if (ResponsiveBreakpoints.of(context).isTablet) {
      return tablet;
    }
    return mobile;
  }
}
