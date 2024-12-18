import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/core/models/user_info_model.dart';
import 'package:responsive_dash_board/core/utils/app_colors.dart';
import 'package:responsive_dash_board/core/utils/app_text_styles.dart';

class CustomUserInfoListTile extends StatelessWidget {
  final UserInfoModel userInfoModel;
  const CustomUserInfoListTile({
    super.key,
    required this.userInfoModel,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: AppColors.greyBackgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: SvgPicture.asset(userInfoModel.image),
        title: Text(
          userInfoModel.name,
          style: AppTextStyles.styleSemiBold16,
        ),
        subtitle: Text(
          userInfoModel.email,
          style: AppTextStyles.styleRegular12,
        ),
      ),
    );
  }
}
