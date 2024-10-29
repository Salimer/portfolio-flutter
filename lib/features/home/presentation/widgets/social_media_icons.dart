import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/layout.dart';
import '../../../../core/constants/text_styles.dart';

class SocialMediaIcons extends StatelessWidget {
  const SocialMediaIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "LET'S CONNECT",
          style: TextStyles.medium20.copyWith(
            color: AppColors.identity,
          ),
        ),
        const SizedBox(height: Layout.mediumSpace),
        Wrap(
          children: [
            IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.linkedinIn,
                color: AppColors.icons,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.github,
                color: AppColors.icons,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.youtube,
                color: AppColors.icons,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
