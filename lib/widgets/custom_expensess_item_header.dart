import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/core/utils/app_colors.dart';

class CustomExpensessItemHeader extends StatelessWidget {
  final String image;
  final bool isActive;
  const CustomExpensessItemHeader({
    super.key,
    required this.image,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: isActive
              ? AppColors.greyBackgroundColor.withOpacity(.12)
              : AppColors.greyBackgroundColor,
          child: Center(
            child: SvgPicture.asset(
              image,
              colorFilter: ColorFilter.mode(
                  isActive ? Colors.white : AppColors.primaryColor,
                  BlendMode.srcIn),
            ),
          ),
        ),
        Transform.rotate(
          angle: -1.5708 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: isActive ? Colors.white : AppColors.mainTextColor,
          ),
        ),
      ],
    );
  }
}