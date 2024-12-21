import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/data/static/pie_details_data.dart';

class CustomPieChart extends StatefulWidget {
  const CustomPieChart({
    super.key,
  });

  @override
  State<CustomPieChart> createState() => _CustomPieChartState();
}

class _CustomPieChartState extends State<CustomPieChart> {
  int currentSectionIndex = -1;

  @override
  Widget build(BuildContext context) {
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
              showTitle: false,
            ),
          ),
        ),
      ),
    );
  }
}
