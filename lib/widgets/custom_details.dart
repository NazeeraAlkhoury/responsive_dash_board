import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/data/static/pie_details_data.dart';
import 'package:responsive_dash_board/widgets/custom_details_item.dart';

class CustomDetails extends StatelessWidget {
  const CustomDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: pieChartSectionData
          .map(
            (e) => CustomDetailsItem(
              chartSectionModel: e,
            ),
          )
          .toList(),
    );
  }
}
