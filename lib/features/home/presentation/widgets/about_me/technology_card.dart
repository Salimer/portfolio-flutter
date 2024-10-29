import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/layout.dart';
import '../../../../../core/constants/text_styles.dart';
import '../../../data/models/technology_item_model.dart';

class TechnologyCard extends StatelessWidget {
  const TechnologyCard({
    super.key,
    required this.item,
  });

  final TechnologyItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Layout.technologyCardHeight,
      padding: const EdgeInsets.symmetric(
        horizontal: Layout.horizontalPadding,
        vertical: Layout.smallSpace,
      ),
      decoration: BoxDecoration(
        color: AppColors.backgroundThemeColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              shape: BoxShape.circle,
            ),
            child: ClipOval(
              child: item.image,
            ),
          ),
          const SizedBox(width: Layout.mediumSpace),
          Flexible(
            child: Text(
              item.name,
              style: TextStyles.regular16,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}
