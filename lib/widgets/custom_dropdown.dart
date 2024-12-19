import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_colors.dart';
import 'package:responsive_dash_board/core/utils/app_text_styles.dart';

class CustomDropDown extends StatelessWidget {
  const CustomDropDown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: AppColors.borderColor,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            const Text(
              'Monthly',
              style: AppTextStyles.styleMedium16,
            ),
            const SizedBox(
              width: 10,
            ),
            Transform.rotate(
              angle: -1.5708,
              child: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: AppColors.mainTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
