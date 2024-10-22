import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors.dart';

class GreyCircle extends StatelessWidget {
  const GreyCircle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.smallGreyCircle,
      ),
    );
  }
}