import 'package:flutter/material.dart';

import '../../../services/screen_service.dart';
import '../../buttons/rounded_button.dart';

class SocialMediaButtons extends StatelessWidget {
  const SocialMediaButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const RoundedButton(
          icon: Icons.facebook,
        ),
        ScreenService.addHeight(context, percentage: 0.01),
        const RoundedButton(
          icon: Icons.facebook,
        ),
      ],
    );
  }
}
