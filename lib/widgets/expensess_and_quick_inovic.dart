import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_all_expensess_section.dart';
import 'package:responsive_dash_board/widgets/quick_inovic_section.dart';

class ExpensessAndQuickInovic extends StatelessWidget {
  const ExpensessAndQuickInovic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAllExpensessSection(),
        SizedBox(
          height: 24,
        ),
        QuickInoviceSection(),
      ],
    );
  }
}
