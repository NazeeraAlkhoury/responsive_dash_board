import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_colors.dart';
import 'package:responsive_dash_board/widgets/custom_container.dart';
import 'package:responsive_dash_board/widgets/custom_latest_transaction_list.dart';
import 'package:responsive_dash_board/widgets/custom_quick_info_title.dart';
import 'package:responsive_dash_board/widgets/form_section.dart';
import 'package:responsive_dash_board/widgets/quick_inovice_header.dart';

class QuickInoviceSection extends StatelessWidget {
  const QuickInoviceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: (BuildContext context) => const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(
            height: 16,
          ),
          CustomQuicInoviceTitle(
            title: 'Latest Transaction',
          ),
          SizedBox(
            height: 16,
          ),
          CustomLatestTransactionList(),
          Divider(
            color: AppColors.borderColor,
            height: 42,
          ),
          FormSection(),
        ],
      ),
    );
  }
}
