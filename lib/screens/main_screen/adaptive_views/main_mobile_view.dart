import 'package:flutter/material.dart';

class MainMobileView extends StatelessWidget {
  const MainMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: const Text('Menu Option 1'),
              onTap: () {
                // Handle navigation
              },
            ),
            // Add more menu options
          ],
        ),
      ),
      body: const Center(child: Text('Main Content')),
    );
  }
}