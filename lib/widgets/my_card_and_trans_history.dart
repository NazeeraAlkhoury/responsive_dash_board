import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_colors.dart';
import 'package:responsive_dash_board/core/utils/app_text_styles.dart';
import 'package:responsive_dash_board/widgets/card_section.dart';
import 'package:responsive_dash_board/widgets/custom_container.dart';
import 'package:responsive_dash_board/widgets/custom_transaction_history_header.dart';
import 'package:responsive_dash_board/widgets/trans_history_list.dart';

class MyCardAndTransHistory extends StatelessWidget {
  const MyCardAndTransHistory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: (context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CardSection(),
          const Divider(
            height: 42,
            color: AppColors.borderColor,
          ),
          const CustomTransactionHistoryHeader(),
          Text(
            '13 April 2022',
            style: AppTextStyles.styleMedium16
                .copyWith(color: AppColors.subTitleTextColor),
          ),
          const TransactionHistoryList(),
        ],
      ),
    );
  }
}
