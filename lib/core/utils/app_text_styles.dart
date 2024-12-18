import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_colors.dart';

abstract class AppTextStyles {
  static const TextStyle styleRegular16 = TextStyle(
    color: Color(0xFF064060),
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );

  static const TextStyle styleBold16 = TextStyle(
    color: AppColors.primaryColor,
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w700,
  );

  static const TextStyle styleMedium16 = TextStyle(
    color: AppColors.mainTextColor,
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );

  static const TextStyle styleMedium20 = TextStyle(
    color: AppColors.containerBackgroundColor,
    fontSize: 20,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );

  static const TextStyle styleSemiBold16 = TextStyle(
    color: AppColors.mainTextColor,
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );

  static const TextStyle styleSemiBold20 = TextStyle(
    color: AppColors.mainTextColor,
    fontSize: 20,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );

  static const TextStyle styleRegular12 = TextStyle(
    color: AppColors.subTitleTextColor,
    fontSize: 12,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );

  static const TextStyle styleSemiBold24 = TextStyle(
    color: AppColors.primaryColor,
    fontSize: 24,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );

  static const TextStyle styleRegular14 = TextStyle(
    color: AppColors.subTitleTextColor,
    fontSize: 14,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );

  static const TextStyle styleSemiBold18 = TextStyle(
    color: AppColors.containerBackgroundColor,
    fontSize: 18,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
}
