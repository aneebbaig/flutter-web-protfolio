import 'package:flutter/material.dart';

import 'responsive_sizes.dart';

class ResponsiveWidget extends StatelessWidget {
  final Map<ResponsiveSize, Widget> responsiveMap;
  final String? text;

  const ResponsiveWidget({
    Key? key,
    required this.responsiveMap,
    this.text,
  }) : super(key: key);

  @override
   Widget build(BuildContext context) {
    return LayoutBuilder(
      
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;
        final currentSize = determineResponsiveSize(screenWidth);
        if(text!=null){
          print(constraints.maxWidth);
        }

        return responsiveMap[currentSize]!;
      },
      
    );
  }
}
