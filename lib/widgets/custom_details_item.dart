import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/models/chart_section_model.dart';
import 'package:responsive_dash_board/core/utils/app_text_styles.dart';

class CustomDetailsItem extends StatelessWidget {
  final ChartSectionModel chartSectionModel;
  const CustomDetailsItem({
    super.key,
    required this.chartSectionModel,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      leading: CircleAvatar(
        radius: 6,
        backgroundColor: chartSectionModel.color,
      ),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: AlignmentDirectional.centerStart,
        child: Text(
          chartSectionModel.title,
          style: AppTextStyles.styleRegular16(context),
        ),
      ),
      trailing: Text(
        '${chartSectionModel.value}%',
        style: AppTextStyles.styleMedium16(context),
      ),
    );
  }
}
