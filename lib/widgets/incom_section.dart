import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_container.dart';
import 'package:responsive_dash_board/widgets/custom_details.dart';
import 'package:responsive_dash_board/widgets/custom_income_header.dart';
import 'package:responsive_dash_board/widgets/custom_pie_chart.dart';

class IncomSection extends StatelessWidget {
  const IncomSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: (context) => const Column(
        children: [
          CustomIncomeHeader(),
          SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Expanded(
                child: CustomPieChart(),
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                flex: 2,
                child: CustomDetails(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
