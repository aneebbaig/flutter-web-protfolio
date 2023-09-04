import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
import 'package:web_portfolio_flutter/utils/app_constants.dart';

class WebsiteLogo extends StatelessWidget {
  const WebsiteLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Ane.',
      style: ResponsiveBreakpoints.of(context).isDesktop
          ? AppConstants.logoTextTheme
          : AppConstants.logoTextTheme.copyWith(
              fontSize: 25,
            ),
    );
  }
}
