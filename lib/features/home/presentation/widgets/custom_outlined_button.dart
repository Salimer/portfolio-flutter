import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/layout.dart';
import '../../../../core/constants/text_styles.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: Layout.largeSpace,
          horizontal: Layout.mediumSpace,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Layout.smallRadius),
        ),
        side: const BorderSide(
          color: AppColors.identity,
        ),
      ),
      child: Text(
        text,
        style: TextStyles.medium16.copyWith(color: AppColors.identity),
      ),
    );
  }
}
