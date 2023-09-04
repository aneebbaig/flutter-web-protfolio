import 'package:flutter/material.dart';
import 'package:web_portfolio_flutter/utils/design_constants.dart';

class CrossOutLine extends StatelessWidget {
  const CrossOutLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2,
      color: DesignConstants.secondaryColor,
    );
  }
}
