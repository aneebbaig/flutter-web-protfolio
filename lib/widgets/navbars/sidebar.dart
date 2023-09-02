import 'package:flutter/material.dart';
import 'package:web_portfolio_flutter/services/screen_service.dart';
import 'package:web_portfolio_flutter/utils/design_constants.dart';
import 'package:web_portfolio_flutter/widgets/navbars/navbar_widgets/logo.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: ScreenService.getScreenWidth(context) * 0.3,
        minWidth: ScreenService.getScreenWidth(context) * 0.25,
      ),
      // height: MediaQuery.sizeOf(context).height,
      color: DesignConstants.bgColorAppbar,
      child: const Column(
        children: [WebsiteLogo()],
      ),
    );
  }
}
