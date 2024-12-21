import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/models/expensess_item_model.dart';
import 'package:responsive_dash_board/core/utils/app_assest_image.dart';
import 'package:responsive_dash_board/widgets/custom_all_expensess_item.dart';

class AllExpensesList extends StatefulWidget {
  const AllExpensesList({super.key});

  @override
  State<AllExpensesList> createState() => _AllExpensesListState();
}

class _AllExpensesListState extends State<AllExpensesList> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<ExpensessItemModel> expensessItemsList = const [
      ExpensessItemModel(
          image: AppImageAssets.balance,
          title: 'Balance',
          date: 'April 2022',
          amount: r'$20,129'),
      ExpensessItemModel(
          image: AppImageAssets.income,
          title: 'Income',
          date: 'April 2022',
          amount: r'$20,129'),
      ExpensessItemModel(
          image: AppImageAssets.expenses,
          title: 'Expenses',
          date: 'April 2022',
          amount: r'$20,129'),
    ];
    void activeFunction(int index) {
      setState(() {
        if (currentIndex != index) {
          currentIndex = index;
        }
      });
    }

    return Row(
      children: [
        Expanded(
          child: CustomAllExpensessItem(
            expensessItemModel: expensessItemsList[0],
            isActive: currentIndex == 0,
            onTap: () {
              activeFunction(0);
            },
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: CustomAllExpensessItem(
            expensessItemModel: expensessItemsList[1],
            isActive: currentIndex == 1,
            onTap: () {
              activeFunction(1);
            },
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: CustomAllExpensessItem(
            expensessItemModel: expensessItemsList[2],
            isActive: currentIndex == 2,
            onTap: () {
              activeFunction(2);
            },
          ),
        ),
      ],
      //  expensessItemsList.asMap().entries.map(
      //   (e) {
      //     var val = e.value;
      //     // int index = e.key;
      // return Expanded(
      //     child: CustomAllExpensessItem(
      //   expensessItemModel: val,
      // ));
      //   },
      // ).toList(),
    );
  }
}
