import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/expensess_and_quick_inovic.dart';
import 'package:responsive_dash_board/widgets/mycard_and_trans_hist_incom.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ExpensessAndQuickInovic(),
          SizedBox(
            height: 24,
          ),
          CardAndTransHistoryAndIncom(),
        ],
      ),
    );
  }
}
