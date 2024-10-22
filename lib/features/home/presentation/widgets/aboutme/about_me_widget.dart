import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/layout.dart';
import '../../../../../core/constants/text_styles.dart';
import '../../../providers/is_dropdown_expanded.dart';
import '../custom_outlined_button.dart';
import '../social_media_icons.dart';

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
        Consumer(builder: (context, ref, child) {
          final isExpanded = ref.watch(isDropdownExpandedProvider);
          return Column(
            children: [
              GestureDetector(
                onTap: () {
                  ref.read(isDropdownExpandedProvider.notifier).toggle();
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Languages", style: TextStyles.medium20),
                      AnimatedRotation(
                        turns: isExpanded ? 0.25 : 0,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.identity[900],
                          size: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: isExpanded ? null : 0,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: Layout.horizontalPadding,
                        vertical: Layout.mediumSpace,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.backgroundThemeColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(  
                        children: [
                          CircleAvatar(
                            radius: 20, 
                            backgroundColor: Colors.red,
                          ), 
                          const SizedBox(width: Layout.mediumSpace),
                          Text("JavaScript", style: TextStyles.regular16),
                        ],
                      )
                    )
                  ],
                ),
              ),
            ],
          );
        })
      ],
    );
  }
}
