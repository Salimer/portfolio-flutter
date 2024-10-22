import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/layout.dart';
import '../../../../core/constants/text_styles.dart';
import '../widgets/intro/intro_widget.dart';
import '../widgets/projects/grey_circle.dart';
import '../widgets/projects/project_technology_chip.dart';
import '../widgets/appbar/responsive_app_bar.dart';
import '../widgets/projects/projects_widget.dart';

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
          // About me section
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Text(
              "I’m Alexandra.\nGlad to see you!",
              style: TextStyles.bold40.copyWith(
                color: AppColors.identity[900],
              ),
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),
    );
  }
}
