import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/data/static/pie_details_data.dart';
import 'package:responsive_dash_board/core/utils/app_text_styles.dart';

class CustomDetailsPieChart extends StatefulWidget {
  const CustomDetailsPieChart({
    super.key,
  });

  @override
  State<CustomDetailsPieChart> createState() => _CustomDetailsPieChartState();
}

class _CustomDetailsPieChartState extends State<CustomDetailsPieChart> {
  int currentSectionIndex = -1;

  @override
  Widget build(BuildContext context) {
    double? getTitlePositionPercentageOffset(int activeIndex) {
      switch (activeIndex) {
        case 0:
          return 1.5;
        case 1:
          return 2.2;
        case 2:
        case 3:
          return 1.4;
        default:
          return null;
      }
    }

    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        PieChartData(
          sectionsSpace: 0,
          pieTouchData: PieTouchData(
              enabled: true,
              touchCallback: (p0, pietouchResponse) {
                currentSectionIndex =
                    pietouchResponse?.touchedSection?.touchedSectionIndex ?? -1;

                setState(() {});
              }),
          sections: List.generate(
            pieChartSectionData.length,
            (index) => PieChartSectionData(
              color: pieChartSectionData[index].color,
              value: pieChartSectionData[index].value,
              radius: currentSectionIndex == index ? 60 : 50,
              title: currentSectionIndex == index
                  ? pieChartSectionData[index].title
                  : '${pieChartSectionData[index].value}%',
              titleStyle: AppTextStyles.styleMedium16(context).copyWith(
                  color: currentSectionIndex == index ? null : Colors.white),
              titlePositionPercentageOffset:
                  getTitlePositionPercentageOffset(currentSectionIndex),
            ),
          ),
        ),
      ),
    );
  }
}
