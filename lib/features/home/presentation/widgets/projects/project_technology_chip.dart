
import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/layout.dart';
import '../../../../../core/constants/text_styles.dart';

class ProjectTechnologyChip extends StatelessWidget {
  const ProjectTechnologyChip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
          color: AppColors.identity[50],
          borderRadius:
              BorderRadius.circular(Layout.smallRadius)),
      child: Text(
        'HTML',
        style: TextStyles.medium12
            .copyWith(color: AppColors.identity),
      ),
    );
  }
}
