import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/core/models/drawer_item_model.dart';
import 'package:responsive_dash_board/core/utils/app_colors.dart';
import 'package:responsive_dash_board/core/utils/app_text_styles.dart';

class CustomDrawerItem extends StatelessWidget {
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  final void Function()? onTap;
  const CustomDrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.isActive,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        drawerItemModel.image,
      ),
      title: Text(
        drawerItemModel.title,
        style:
            isActive ? AppTextStyles.styleBold16 : AppTextStyles.styleRegular16,
      ),
      trailing: isActive
          ? Container(
              color: AppColors.primaryColor,
              width: 3.27,
            )
          : null,
      onTap: onTap,
    );
  }
}
