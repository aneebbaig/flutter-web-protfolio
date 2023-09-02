import 'package:flutter/material.dart';
import 'package:web_portfolio_flutter/utils/design_constants.dart';

class WebsiteLogo extends StatelessWidget {
  const WebsiteLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'class Aneeb extends Flutter',
        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              color: DesignConstants.txtColorSecondary,
            ),
      ),
    );
  }
}
