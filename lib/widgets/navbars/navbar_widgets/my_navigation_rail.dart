import 'package:flutter/material.dart';
import 'package:web_portfolio_flutter/services/screen_service.dart';

import '../../../models/webpage.dart';
import '../../../utils/design_constants.dart';

class MyNavigationRail extends StatelessWidget {
  final Function(int) onTap;
  final int currentIndex;
  final List<Webpage> children;

  const MyNavigationRail({
    super.key,
    required this.currentIndex,
    required this.onTap,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: NavigationRail(
        onDestinationSelected: (index) => onTap(index),
        indicatorColor: Colors.amber,
        labelType: NavigationRailLabelType.none,
        backgroundColor: DesignConstants.bgColorAppbar,
        selectedIndex: currentIndex,
        minWidth: ScreenService.getScreenWidth(context) * 0.2,
        destinations: [
          for (int i = 0; i < children.length; i++)
            NavigationRailDestination(
              icon: Icon(
                children[i].icon,
                color: DesignConstants.iconColorAppbar,
              ),
              label: Text(
                children[i].label,
              ),
            )
        ],
      ),
    );
  }
}
