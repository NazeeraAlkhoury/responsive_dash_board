import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/models/drawer_item_model.dart';
import 'package:responsive_dash_board/core/models/user_info_model.dart';
import 'package:responsive_dash_board/core/utils/app_assest_image.dart';
import 'package:responsive_dash_board/core/utils/app_colors.dart';
import 'package:responsive_dash_board/widgets/custom_drawer_item.dart';
import 'package:responsive_dash_board/widgets/custom_user_info_list_tile.dart';
import 'package:responsive_dash_board/widgets/drawer_list.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * .7,
      color: const Color.fromRGBO(255, 255, 255, 1),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              color: AppColors.containerBackgroundColor,
              child: const Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: CustomUserInfoListTile(
                      userInfoModel: UserInfoModel(
                        image: AppImageAssets.avatar_3,
                        name: 'Lekan Okeowo',
                        email: 'demo@gmail.com',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DrawerList(),
                  Expanded(
                    child: SizedBox(
                      height: 20,
                    ),
                  ),
                  CustomDrawerItem(
                    drawerItemModel: DrawerItemModel(
                      image: AppImageAssets.settings,
                      title: 'Setting system',
                    ),
                    isActive: false,
                  ),
                  CustomDrawerItem(
                    drawerItemModel: DrawerItemModel(
                      image: AppImageAssets.logout,
                      title: 'Logout account',
                    ),
                    isActive: false,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
