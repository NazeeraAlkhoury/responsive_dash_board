import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_size.dart';
import 'package:responsive_dash_board/widgets/custom_container.dart';
import 'package:responsive_dash_board/widgets/custom_details.dart';
import 'package:responsive_dash_board/widgets/custom_income_header.dart';
import 'package:responsive_dash_board/widgets/custom_pie_chart.dart';
import 'package:responsive_dash_board/widgets/details_pie_chart.dart';

class IncomSection extends StatelessWidget {
  const IncomSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return CustomContainer(
      child: (context) => Column(
        children: [
          const CustomIncomeHeader(),
          const SizedBox(
            height: 24,
          ),
          width >= AppSizeConfig.desktop && width < 1750
              ? const Padding(
                  padding: EdgeInsets.all(16),
                  child: CustomDetailsPieChart(),
                )
              : const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: CustomPieChart(),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      // flex: 2,
                      child: CustomDetails(),
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
