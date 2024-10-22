import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/layout.dart';
import '../../../../../core/constants/text_styles.dart';
import '../social_media_icons.dart';

class IntroWidget extends StatelessWidget {
  const IntroWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadiusDirectional.only(
          bottomStart: Radius.circular(Layout.bigRadius),
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: Layout.horizontalPadding,
        vertical: 20,
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "I’m Alexandra.\nGlad to see you!",
            style: TextStyles.bold40.copyWith(
              color: AppColors.identity[900],
            ),
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: Layout.mediumSpace),
          Text(
            "I’m a software developer! I can help you build a product , feature or website Look through some of my work and experience! If you like what you see and have a project you need coded, don’t hesitate to contact me.",
            style: TextStyles.regular16,
          ),
          const SizedBox(height: Layout.mediumSpace),
          const SocialMediaIcons(),
          const SizedBox(height: Layout.xLargeSpace),
        ],
      ),
    );
  }
}
