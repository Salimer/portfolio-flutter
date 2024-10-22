
import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/layout.dart';
import '../../../../../core/constants/text_styles.dart';
import '../custom_outlined_button.dart';
import 'grey_circle.dart';
import 'project_technology_chip.dart';

class Projects_widget extends StatelessWidget {
  const Projects_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Layout.horizontalPadding,
        vertical: 20,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: Layout.mediumSpace,
          vertical: Layout.mediumSpace,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Layout.mediumRadius),
          border: Border.all(color: AppColors.border),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.5,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius:
                      BorderRadius.circular(Layout.mediumRadius),
                ),
              ),
            ),
            const SizedBox(height: Layout.mediumSpace),
            Text('Tonic', style: TextStyles.bold32),
            const SizedBox(height: Layout.mediumSpace),
            Wrap(
              spacing: Layout.smallSpace,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Text('CANOPY', style: TextStyles.semiBold13),
                const GreyCircle(),
                Text(
                  'Back End Dev',
                  style: TextStyles.semiBold13
                      .copyWith(color: AppColors.greyText),
                ),
                const GreyCircle(),
                Text(
                  '2022',
                  style: TextStyles.semiBold13
                      .copyWith(color: AppColors.greyText),
                ),
              ],
            ),
            const SizedBox(height: Layout.mediumSpace),
            Text(
              'Tonic is a free Bootstrap 5 template for developers and designers. The template is built with HTML, CSS and JS.',
              style: TextStyles.regular16,
            ),
            const SizedBox(height: Layout.mediumSpace),
            const Wrap(
              children: [
                ProjectTechnologyChip(),
                SizedBox(width: Layout.smallSpace),
                ProjectTechnologyChip(),
                SizedBox(width: Layout.smallSpace),
                ProjectTechnologyChip(),
              ],
            ),
            const SizedBox(height: Layout.mediumSpace),
            const Padding(
              padding: EdgeInsets.symmetric(
                  vertical: Layout.mediumSpace),
              child: CustomOutlinedButton(text: "See project"),
            )
          ],
        ),
      ),
    );
  }
}
