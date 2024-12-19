import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_colors.dart';
import 'package:responsive_dash_board/core/utils/app_text_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Quick Invoice',
          style: AppTextStyles.styleSemiBold20,
        ),
        Spacer(),
        CircleAvatar(
          backgroundColor: AppColors.greyBackgroundColor,
          child: Icon(
            Icons.add,
            color: AppColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
