import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/keys_enums.dart';
import '../../../../../core/constants/layout.dart';
import '../../../../../core/constants/text_styles.dart';
import '../custom_outlined_button.dart';
import '../social_media_icons.dart';
import 'stack_item_widget.dart';

class AboutMeWidget extends StatelessWidget {
  const AboutMeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "About Myself",
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
        const SizedBox(height: Layout.mediumSpace),
        const CustomOutlinedButton(text: "Get my resume"),
        const SizedBox(height: Layout.mediumSpace * 2),
        const StackItemWidget(type: StackDropdownTypesEnum.languages),
        const StackItemWidget(type: StackDropdownTypesEnum.frameworks),
        const StackItemWidget(type: StackDropdownTypesEnum.tools),
      ],
    );
  }
}
