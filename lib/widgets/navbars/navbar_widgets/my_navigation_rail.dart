import 'package:flutter/material.dart';

import '../../../utils/app_constants.dart';
import '../../../utils/design_constants.dart';

class MyNavigationRail extends StatelessWidget {
  const MyNavigationRail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: NavigationRail(
        indicatorColor: Colors.amber,
        labelType: NavigationRailLabelType.none,
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
      ),
    );
  }
}
