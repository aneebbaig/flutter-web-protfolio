import 'package:flutter/material.dart';
import 'package:web_portfolio_flutter/utils/constants.dart';
import 'package:web_portfolio_flutter/utils/design_constants.dart';

class MyNavigationRail extends StatelessWidget {
  const MyNavigationRail({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      indicatorColor: Colors.amber,
      labelType: NavigationRailLabelType.all,
      backgroundColor: DesignConstants.bgColorAppbar,
      selectedIndex: 1,
      destinations: AppConstants.applicationPages.entries
          .map(
            (page) => NavigationRailDestination(
              icon: Icon(
                page.value,
                color: DesignConstants.iconColorAppbar,
              ),
              label: Text(page.key),
            ),
          )
          .toList(),
    );
  }
}
