
import 'package:flutter/material.dart';

import '../../../../../core/constants/layout.dart';
import '../../../../../core/constants/text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: 'Enter your email address',
        hintStyle: TextStyles.regular16,
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
