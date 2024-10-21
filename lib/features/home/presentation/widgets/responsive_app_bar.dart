import 'package:flutter/material.dart';

import '../../../../core/constants/layout.dart';

class ResponsiveAppBar extends StatelessWidget {
  const ResponsiveAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          // BoxShadow(
          //   color: Colors.black.withOpacity(0.5),
          //   blurRadius: 10, // The blur radius for softness
          //   spreadRadius: 5, // Spread to make the shadow larger
          //   offset: Offset(0, 3),
          // ),
        ],
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            // Mobile Layout
            return Container(
              height: kToolbarHeight,
              padding:
                  EdgeInsets.symmetric(horizontal: Layout.horizontalPadding),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("My Logo"),
                  IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () {},
                  ),
                ],
              ),
            );
          } else {
            // Desktop Layout
            return Container(
              height: kToolbarHeight,
              padding:
                  EdgeInsets.symmetric(horizontal: Layout.horizontalPadding),
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Logo
                  Text(
                    'My Portfolio',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Navigation Links
                  Row(
                    children: [
                      _buildNavItem(context, 'Projects'),
                      _buildNavItem(context, 'About Me'),
                      _buildNavItem(context, 'Contact Me'),
                    ],
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }

  Widget _buildNavItem(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextButton(
        onPressed: () {
          // Handle navigation
        },
        child: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
