import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/breakpoint.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
import 'package:web_portfolio_flutter/app_theme.dart';
import 'package:web_portfolio_flutter/provider/pages_provider.dart';
import 'package:web_portfolio_flutter/screens/landing/landing_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PagesProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        builder: (context, child) => ResponsiveBreakpoints.builder(
          child: child!,
          breakpoints: [
            const Breakpoint(start: 0, end: 767, name: MOBILE),
            const Breakpoint(start: 768, end: 1023, name: TABLET),
            const Breakpoint(start: 1024, end: double.infinity, name: DESKTOP),
          ],
        ),
        title: 'Aneeb Baig',
        theme: AppTheme.lightTheme,
        home: const LandingScreen(),
      ),
    );
  }
}
