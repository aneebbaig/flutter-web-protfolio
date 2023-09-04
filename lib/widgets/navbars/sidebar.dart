import 'package:flutter/material.dart';
import 'package:web_portfolio_flutter/models/webpage.dart';
import 'package:web_portfolio_flutter/services/screen_service.dart';
import 'package:web_portfolio_flutter/utils/design_constants.dart';
import 'package:web_portfolio_flutter/widgets/navbars/navbar_widgets/logo.dart';
import 'package:web_portfolio_flutter/widgets/navbars/navbar_widgets/sidebar_item.dart';
import 'package:web_portfolio_flutter/widgets/navbars/navbar_widgets/social_media_button.dart';

class Sidebar extends StatelessWidget {
  final Function(int) onTap;
  final int currentIndex;
  final List<Webpage> children;

  const Sidebar(
      {super.key,
      required this.currentIndex,
      required this.onTap,
      required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: ScreenService.getScreenWidth(context) * 0.03,
        vertical: ScreenService.getScreenHeight(context) * 0.02,
      ),
      constraints: BoxConstraints(
        maxWidth: ScreenService.getScreenWidth(context) * 0.3,
        minWidth: ScreenService.getScreenWidth(context) * 0.25,
      ),
      color: DesignConstants.bgColorAppbar,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const WebsiteLogo(),
          ScreenService.addHeight(context, percentage: 0.05),
          for (int i = 0; i < children.length; i++)
            SidebarItem(
              text: children[i].label,
              isSelected: currentIndex == i,
              onTap: onTap,
              index: i,
            ),
          const Spacer(),
          const SocialMediaButtons(),
        ],
      ),
    );
  }
}
