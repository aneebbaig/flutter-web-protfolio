import 'package:flutter/material.dart';
import 'package:web_portfolio_flutter/screens/main_screen/adaptive_views/widgets/sidebar.dart';
import 'package:web_portfolio_flutter/utils/helper_funtions.dart';

import '../../content_screen.dart';

class MainDesktopView extends StatelessWidget {

  String text;
 MainDesktopView({required this.text,super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Sidebar(),
        // Expanded(
        //   child: Navigator(
        //     initialRoute: '/home', // Set the initial route
        //     onGenerateRoute: (settings) {
        //       // Handle route generation based on settings.name
        //       return MaterialPageRoute(builder: (context) {
        //         return ContentScreen(settings.name!);
        //       });
        //     },
        //   ),
        // ),
        Center(child: Text(text),),
      ],
    );
  }
}