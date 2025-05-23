import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/models/transiction_history_model.dart';
import 'package:responsive_dash_board/core/utils/app_colors.dart';
import 'package:responsive_dash_board/core/utils/app_text_styles.dart';

class CustomTransictionHistoryItem extends StatelessWidget {
  final TransactionHistoryModel transactionHistoryModel;
  const CustomTransictionHistoryItem({
    super.key,
    required this.transactionHistoryModel,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: AppColors.greyBackgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(5),
        title: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            transactionHistoryModel.title,
            style: AppTextStyles.styleSemiBold16(context),
          ),
        ),
        subtitle: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            transactionHistoryModel.date,
            style: AppTextStyles.styleRegular16(context)
                .copyWith(color: AppColors.subTitleTextColor),
          ),
        ),
        trailing: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            transactionHistoryModel.amount,
            style: AppTextStyles.styleSemiBold20(context).copyWith(
                color: transactionHistoryModel.title == 'Cash Withdrawal'
                    ? const Color(0xffF3735E)
                    : const Color(0xff7DD97B)),
          ),
        ),
      ),
    );
  }
}
