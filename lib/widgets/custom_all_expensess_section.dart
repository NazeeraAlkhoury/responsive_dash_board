import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_all_expenses_list.dart';
import 'package:responsive_dash_board/widgets/custom_all_expensess_header.dart';
import 'package:responsive_dash_board/widgets/custom_container.dart';

class CustomAllExpensessSection extends StatelessWidget {
  const CustomAllExpensessSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: (BuildContext context) => const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomAllExpensesHearder(),
          SizedBox(
            height: 10,
          ),
          AllExpensesList(),
        ],
      ),
    );
  }
}
