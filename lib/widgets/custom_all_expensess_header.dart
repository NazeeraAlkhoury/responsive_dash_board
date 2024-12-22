import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_text_styles.dart';
import 'package:responsive_dash_board/widgets/custom_dropdown.dart';

class CustomAllExpensesHearder extends StatelessWidget {
  const CustomAllExpensesHearder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Expenses',
          style: AppTextStyles.styleSemiBold20(context),
        ),
        const Spacer(),
        const CustomDropDown(),
      ],
    );
  }
}
