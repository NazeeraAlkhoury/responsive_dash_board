import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_colors.dart';

class CustomDot extends StatelessWidget {
  final bool isActive;
  const CustomDot({
    super.key,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(
        end: 8,
      ),
      child: Container(
        width: isActive ? 32 : 8,
        height: 8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color:
              isActive ? AppColors.primaryColor : AppColors.greyBackgroundColor,
        ),
      ),
    );
  }
}
