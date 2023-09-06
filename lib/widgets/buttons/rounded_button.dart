import 'package:flutter/material.dart';
import 'package:web_portfolio_flutter/utils/design_constants.dart';

class RoundedButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final double buttonSize;
  const RoundedButton({
    super.key,
    required this.icon,
    required this.buttonSize,
    this.color = DesignConstants.btnRoundIconColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: buttonSize,
        height: buttonSize,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: Icon(
          icon,
          color: color,
        ),
      ),
      onTap: () {
        // Handle button press
      },
    );
  }
}
