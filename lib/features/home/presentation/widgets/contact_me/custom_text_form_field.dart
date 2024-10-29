import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/layout.dart';
import '../../../../../core/constants/text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hint,
    this.maxLines,
  });

  final String hint;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines ?? 1,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hint,
        hintStyle: TextStyles.regular16.copyWith(color: AppColors.grey2),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Layout.smallRadius),
          borderSide: const BorderSide(color: Colors.yellow),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Layout.smallRadius),
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 2,
          ), // Grey border for enabled state
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Layout.smallRadius),
          borderSide: const BorderSide(
            color: Colors.grey,
          ), // Grey border for focused state
        ),
      ),
    );
  }
}
