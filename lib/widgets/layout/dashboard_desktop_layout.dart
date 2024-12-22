import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/expensess_and_quick_inovic.dart';
import 'package:responsive_dash_board/widgets/mycard_and_trans_hist_incom.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: ExpensessAndQuickInovic(),
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Expanded(
                        child: CardAndTransHistoryAndIncom(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
