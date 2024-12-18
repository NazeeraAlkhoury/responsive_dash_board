import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/models/drawer_item_model.dart';
import 'package:responsive_dash_board/core/models/user_info_model.dart';
import 'package:responsive_dash_board/core/utils/app_assest_image.dart';
import 'package:responsive_dash_board/widgets/custom_drawer_item.dart';
import 'package:responsive_dash_board/widgets/custom_user_info_list_tile.dart';
import 'package:responsive_dash_board/widgets/drawer_list.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              CustomUserInfoListTile(
                userInfoModel: UserInfoModel(
                  image: AppImageAssets.avatar_3,
                  name: 'Lekan Okeowo',
                  email: 'demo@gmail.com',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              DrawerList(),
              Expanded(
                child: SizedBox(
                  height: 30,
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
      ],
    );
  }
}
