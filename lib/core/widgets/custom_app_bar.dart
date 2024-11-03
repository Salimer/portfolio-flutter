import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final TabController? tabController;

  const CustomAppBar({super.key, this.tabController});

  void navigate(BuildContext context, String route) {
    Navigator.pushNamed(context, route);
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Salim Bamahfoodh'),
      actions: [
        TextButton(
          onPressed: () => navigate(context, '/'),
          child: const Text('Home', style: TextStyle(color: Colors.white)),
        ),
        TextButton(
          onPressed: () => navigate(context, '/about'),
          child: const Text('About', style: TextStyle(color: Colors.white)),
        ),
        TextButton(
          onPressed: () => navigate(context, '/projects'),
          child: const Text('Projects', style: TextStyle(color: Colors.white)),
        ),
        TextButton(
          onPressed: () => navigate(context, '/contact'),
          child: const Text('Contact', style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}