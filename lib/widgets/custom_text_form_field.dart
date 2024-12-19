import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_colors.dart';
import 'package:responsive_dash_board/core/utils/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  final String hint;

  const CustomTextFormField({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.greyBackgroundColor,
        hintStyle: AppTextStyles.styleRegular16
            .copyWith(color: AppColors.subTitleTextColor),
        hintText: hint,
        border: getBorderStyle(),
        focusedBorder: getBorderStyle(),
        enabledBorder: getBorderStyle(),
        focusColor: AppColors.greyBackgroundColor,
        disabledBorder: getBorderStyle(),
        contentPadding: const EdgeInsets.all(20),
      ),
    );
  }

  OutlineInputBorder getBorderStyle() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    );
  }
}
