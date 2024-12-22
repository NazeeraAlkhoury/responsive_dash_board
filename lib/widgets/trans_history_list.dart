import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/models/transiction_history_model.dart';
import 'package:responsive_dash_board/widgets/custom_trans_history_item.dart';

class TransactionHistoryList extends StatelessWidget {
  const TransactionHistoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<TransactionHistoryModel> transactionHistoryList = const [
      TransactionHistoryModel(
        title: 'Cash Withdrawal',
        date: '13 Apr, 2022 ',
        amount: r'$20,129',
      ),
      TransactionHistoryModel(
        title: 'Landing Page project',
        date: '13 Apr, 2022 at 3:30 PM',
        amount: r'$2,000',
      ),
      TransactionHistoryModel(
        title: 'Juni Mobile App project',
        date: '13 Apr, 2022 at 3:30 PM',
        amount: r'$2,000',
      ),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: transactionHistoryList
          .map(
            (transactionHistoryModel) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: CustomTransictionHistoryItem(
                transactionHistoryModel: transactionHistoryModel,
              ),
            ),
          )
          .toList(),
    );
  }
}
