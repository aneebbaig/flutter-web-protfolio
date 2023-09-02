import 'package:flutter/material.dart';

import 'responsive_sizes.dart';

class ResponsiveWidget extends StatelessWidget {
  final Map<ResponsiveSize, Widget> responsiveMap;

  const ResponsiveWidget({
    Key? key,
    required this.responsiveMap,
  }) : super(key: key);

  @override
   Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;
        final currentSize = determineResponsiveSize(screenWidth);

        return responsiveMap[currentSize]!;
      },
    );
  }
}
