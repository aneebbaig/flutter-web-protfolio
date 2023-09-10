import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

import '../../../services/screen_service.dart';
import '../../buttons/rounded_button.dart';

class SocialMediaButtons extends StatelessWidget {
  const SocialMediaButtons({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile = ResponsiveBreakpoints.of(context).isMobile;

    double buttonSize = isMobile ? 30 : 40;

    double iconSize = isMobile ? 15 : 35;

    List<Widget> children = [
      RoundedButton(
        icon: Icons.facebook,
        buttonSize: buttonSize,
        iconSize: iconSize,
      ),
      ScreenService.addHeight(context, percentage: 0.01),
      ScreenService.addWidth(context, percentage: 0.01),
      RoundedButton(
        icon: Icons.facebook,
        buttonSize: buttonSize,
        iconSize: iconSize,
      ),
    ];
    return isMobile
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: children,
          )
        : Column(
            children: children,
          );
  }
}
