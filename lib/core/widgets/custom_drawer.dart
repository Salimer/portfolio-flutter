import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  void navigate(BuildContext context, String route) {
    Navigator.pushNamed(context, route);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            child: Text('Navigation', style: TextStyle(fontSize: 24)),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () => navigate(context, '/'),
          ),
          ListTile(
            title: const Text('About'),
            onTap: () => navigate(context, '/about'),
          ),
          ListTile(
            title: const Text('Projects'),
            onTap: () => navigate(context, '/projects'),
          ),
          ListTile(
            title: const Text('Contact'),
            onTap: () => navigate(context, '/contact'),
          ),
        ],
      ),
    );
  }
}