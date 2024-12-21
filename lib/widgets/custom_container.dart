import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_colors.dart';

class CustomContainer extends StatelessWidget {
  final WidgetBuilder child;
  final double? padding;
  const CustomContainer({
    super.key,
    required this.child,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.containerBackgroundColor,
      ),
      padding: EdgeInsets.all(padding ?? 20),
      child: child(context),
    );
  }
}
