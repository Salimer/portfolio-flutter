import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/layout.dart';
import '../../../../core/constants/text_styles.dart';
import '../widgets/aboutme/about_me_widget.dart';
import '../widgets/custom_outlined_button.dart';
import '../widgets/intro/intro_widget.dart';
import '../widgets/projects/grey_circle.dart';
import '../widgets/projects/project_technology_chip.dart';
import '../widgets/appbar/responsive_app_bar.dart';
import '../widgets/projects/projects_widget.dart';
import '../widgets/social_media_icons.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors
          .backgroundThemeColor, //context.theme.scaffoldBackgroundColor,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: ResponsiveAppBar(),
      ),
      body: ListView(
        children: [
          const IntroWidget(),
          const SizedBox(height: Layout.xLargeSpace),
          // Projects section
          const Projects_widget(),
          const SizedBox(height: Layout.xLargeSpace),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: Layout.xLargeSpace,
              horizontal: Layout.horizontalPadding,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadiusDirectional.only(
                topEnd: Radius.circular(Layout.bigRadius),
              ),
            ),
            // About me section
            child: const Column(
              children: [
                AboutMeWidget(),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
