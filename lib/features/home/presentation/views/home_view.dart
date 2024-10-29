import 'package:flutter/material.dart';
import 'package:flutter_template/core/extensions/context_extension.dart';

import '../../../../core/constants/layout.dart';
import '../widgets/about_me/about_me_widget.dart';
import '../widgets/contact_me/contact_me_widget.dart';
import '../widgets/intro/intro_widget.dart';
import '../widgets/app_bar/responsive_app_bar.dart';
import '../widgets/projects/projects_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.scaffoldBackgroundColor,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: ResponsiveAppBar(),
      ),
      body: ListView(
        children: const [
          IntroWidget(),
          SizedBox(height: Layout.xLargeSpace),
          Projects_widget(),
          SizedBox(height: Layout.xLargeSpace),
          AboutMeWidget(),
          ContactMeWidget(),
        ],
      ),
    );
  }
}
