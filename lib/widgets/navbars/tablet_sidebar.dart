import 'package:flutter/material.dart';
import 'package:web_portfolio_flutter/utils/design_constants.dart';
import 'package:web_portfolio_flutter/widgets/navbars/navbar_widgets/logo.dart';

import '../../services/screen_service.dart';
import 'navbar_widgets/my_navigation_rail.dart';
import 'navbar_widgets/social_media_button.dart';

class TabletSidebar extends StatelessWidget {
  const TabletSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenService.getScreenWidth(context) * 0.10,
      padding: EdgeInsets.symmetric(
        vertical: ScreenService.getScreenHeight(context) * 0.02,
      ),
      color: DesignConstants.bgColorAppbar,
      constraints: BoxConstraints(
        maxWidth: ScreenService.getScreenWidth(context) * 0.10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const WebsiteLogo(),
          ScreenService.addHeight(context, percentage: 0.05),
          const MyNavigationRail(),
          const SocialMediaButtons(),
        ],
      ),
    );
  }
}
