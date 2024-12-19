import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_colors.dart';

class CustomContainer extends StatelessWidget {
  final WidgetBuilder child;
  const CustomContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.containerBackgroundColor,
      ),
      padding: const EdgeInsetsDirectional.all(20),
      child: child(context),
    );
  }
}
