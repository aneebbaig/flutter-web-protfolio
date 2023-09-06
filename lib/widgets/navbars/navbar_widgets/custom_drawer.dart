import 'package:flutter/material.dart';
import 'package:web_portfolio_flutter/services/screen_service.dart';
import 'package:web_portfolio_flutter/widgets/navbars/navbar_widgets/logo.dart';
import 'package:web_portfolio_flutter/widgets/navbars/navbar_widgets/social_media_button.dart';

import '../../../models/webpage.dart';
import '../../../utils/design_constants.dart';

class CustomDrawer extends StatelessWidget {
  final Function(int) onTap;
  final List<Webpage> children;

  const CustomDrawer({super.key, required this.children, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const ContinuousRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      width: ScreenService.getScreenWidth(context),
      backgroundColor: DesignConstants.bgColorAppbar,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const WebsiteLogo(),
          const Spacer(),
          Expanded(
            child: Center(
              child: ListView(
                children: [
                  for (int i = 0; i < children.length; i++)
                    ListTile(
                      title: Text(
                        children[i].label.toUpperCase(),
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      onTap: () {
                        onTap(i);
                        Navigator.of(context).pop();
                      },
                      titleAlignment: ListTileTitleAlignment.center,
                      hoverColor: DesignConstants.secondaryColor,
                    ),
                ],
              ),
            ),
          ),
          const Spacer(),
          const SocialMediaButtons(),
        ],
      ),
    );
  }
}
