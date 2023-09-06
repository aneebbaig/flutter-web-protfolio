import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

import '../../../services/screen_service.dart';
import '../../buttons/rounded_button.dart';

class SocialMediaButtons extends StatelessWidget {
  const SocialMediaButtons({super.key});

  @override
  Widget build(BuildContext context) {
    double buttonSize = ScreenService.getScreenWidth(context) * 0.05;
    bool isMobile = ResponsiveBreakpoints.of(context).isMobile;
    List<Widget> children = [
      RoundedButton(
        icon: Icons.facebook,
        buttonSize: buttonSize,
      ),
      ScreenService.addHeight(context, percentage: 0.01),
      ScreenService.addWidth(context, percentage: 0.01),
      RoundedButton(
        icon: Icons.facebook,
        buttonSize: buttonSize,
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
