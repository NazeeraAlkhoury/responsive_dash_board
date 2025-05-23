import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_colors.dart';
import 'package:responsive_dash_board/core/utils/app_text_styles.dart';

class CustomTransactionHistoryHeader extends StatelessWidget {
  const CustomTransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: AppTextStyles.styleSemiBold20(context),
        ),
        const Spacer(),
        Text(
          'See all',
          style: AppTextStyles.styleMedium16(context)
              .copyWith(color: AppColors.primaryColor),
        ),
      ],
    );
  }
}
