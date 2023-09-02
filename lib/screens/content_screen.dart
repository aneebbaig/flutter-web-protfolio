
import 'package:flutter/material.dart';

class ContentScreen extends StatelessWidget {
  final String routeName;

  const ContentScreen(this.routeName, {super.key});

  @override
  Widget build(BuildContext context) {
    switch (routeName) {
      case '/home':
        return Container();
      case '/about':
        return Container();
      // Add more cases for other routes
      default:
        return Container();
    }
  }
}
