import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/layout.dart';
import '../../../../../core/constants/text_styles.dart';
import '../custom_outlined_button.dart';
import 'custom_text_form_field.dart';

class ContactMeWidget extends StatelessWidget {
  const ContactMeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: Layout.xLargeSpace,
          horizontal: Layout.horizontalPadding,
        ),
        decoration: const BoxDecoration(
          color: AppColors.identity,
          borderRadius: BorderRadiusDirectional.only(
            topStart: Radius.circular(Layout.bigRadius),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Contact me',
              style: TextStyles.bold40.copyWith(color: Colors.white),
            ),
            const SizedBox(height: Layout.mediumSpace),
            Text(
              "If you have an application you are interested in developing, a feature that you need built or a project that needs coding. I’d love to help with it!",
              style: TextStyles.regular20.copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: Layout.mediumSpace),
            const CustomTextFormField(hint: 'Name'),
            const SizedBox(height: Layout.mediumSpace),
            const CustomTextFormField(hint: 'Email'),
            const SizedBox(height: Layout.mediumSpace),
            const CustomTextFormField(
              hint: 'Write your message',
              maxLines: 4,
            ),
            const SizedBox(height: Layout.mediumSpace),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomOutlinedButton(
                  text: 'Get in touch',
                  // onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
