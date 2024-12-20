import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_assest_image.dart';
import 'package:responsive_dash_board/core/utils/app_colors.dart';
import 'package:responsive_dash_board/widgets/my_card_child.dart';

class CustomMyCard extends StatelessWidget {
  const CustomMyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.primaryColor,
          image: const DecorationImage(
            image: AssetImage(AppImageAssets.cardBackground),
            fit: BoxFit.fill,
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.all(20),
          child: MyCardChild(),
        ),
      ),
    );
  }
}
