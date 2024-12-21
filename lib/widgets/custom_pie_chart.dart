import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/models/chart_section_model.dart';

class CustomPieChart extends StatefulWidget {
  const CustomPieChart({
    super.key,
  });

  @override
  State<CustomPieChart> createState() => _CustomPieChartState();
}

class _CustomPieChartState extends State<CustomPieChart> {
  int currentSectionIndex = -1;
  List<ChartSectionModel> pieChartSectionData = const [
    ChartSectionModel(color: Color(0xFF208CC8), value: 40),
    ChartSectionModel(color: Color(0xFF4EB7F2), value: 25),
    ChartSectionModel(color: Color(0xFF064061), value: 20),
    ChartSectionModel(color: Color(0xFFE2DECD), value: 22),
  ];
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
