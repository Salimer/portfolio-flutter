import 'package:flutter/material.dart';
import 'package:flutter_template/core/extensions/context_extension.dart';

import '../../../../core/constants/layout.dart';
import '../../../../core/constants/text_styles.dart';
import '../widgets/responsive_app_bar.dart';

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
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: Layout.horizontalPadding,
              vertical: 20,
            ),
            width: double.infinity,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "I’m Alexandra.Glad to see you!",
                  style: TextStyles.bold40,
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: Layout.mediumSpace),
                Text(
                    "I’m a software developer! I can help you build a product , feature or website Look through some of my work and experience! If you like what you see and have a project you need coded, don’t hesitate to contact me."),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
