import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/models/drawer_item_model.dart';
import 'package:responsive_dash_board/core/utils/app_assest_image.dart';
import 'package:responsive_dash_board/widgets/custom_drawer_item.dart';

class DrawerList extends StatefulWidget {
  const DrawerList({super.key});

  @override
  State<DrawerList> createState() => _DrawerListState();
}

class _DrawerListState extends State<DrawerList> {
  List<DrawerItemModel> drawerItems = const [
    DrawerItemModel(image: AppImageAssets.dashboard, title: 'Dashboard'),
    DrawerItemModel(
        image: AppImageAssets.myTransctions, title: 'My Transaction'),
    DrawerItemModel(image: AppImageAssets.statistics, title: 'Statistics'),
    DrawerItemModel(
        image: AppImageAssets.walletAccount, title: 'Wallet Account'),
    DrawerItemModel(
        image: AppImageAssets.myInvestments, title: 'My Investments'),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(
      drawerItems.length,
      (index) => CustomDrawerItem(
        drawerItemModel: drawerItems[index],
        isActive: currentIndex == index,
        onTap: () => setState(() {
          currentIndex = index;
        }),
      ),
    ));
  }
}
