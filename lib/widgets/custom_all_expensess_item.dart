import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/models/expensess_item_model.dart';
import 'package:responsive_dash_board/core/utils/app_colors.dart';
import 'package:responsive_dash_board/core/utils/app_text_styles.dart';
import 'package:responsive_dash_board/widgets/custom_expensess_item_header.dart';

class CustomAllExpensessItem extends StatelessWidget {
  final ExpensessItemModel expensessItemModel;
  final bool isActive;
  final void Function()? onTap;
  const CustomAllExpensessItem({
    super.key,
    required this.expensessItemModel,
    required this.isActive,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.borderColor),
          color: isActive
              ? AppColors.primaryColor
              : AppColors.containerBackgroundColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomExpensessItemHeader(
              image: expensessItemModel.image,
              isActive: isActive,
            ),
            const SizedBox(
              height: 34,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                expensessItemModel.title,
                style: isActive
                    ? AppTextStyles.styleSemiBold16
                        .copyWith(color: AppColors.containerBackgroundColor)
                    : AppTextStyles.styleSemiBold16,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                expensessItemModel.date,
                style: isActive
                    ? AppTextStyles.styleRegular14
                        .copyWith(color: AppColors.containerBackgroundColor)
                    : AppTextStyles.styleRegular14,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                expensessItemModel.amount,
                style: isActive
                    ? AppTextStyles.styleSemiBold24
                        .copyWith(color: AppColors.containerBackgroundColor)
                    : AppTextStyles.styleSemiBold24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
