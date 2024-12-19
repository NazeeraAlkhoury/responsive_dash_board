import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/models/user_info_model.dart';
import 'package:responsive_dash_board/core/utils/app_assest_image.dart';
import 'package:responsive_dash_board/widgets/custom_user_info_list_tile.dart';

class CustomLatestTransactionList extends StatelessWidget {
  const CustomLatestTransactionList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<UserInfoModel> latestTransactionList = const [
      UserInfoModel(
          image: AppImageAssets.avatar_1,
          name: 'Madrani Andi',
          email: 'Madraniadi20@gmail'),
      UserInfoModel(
          image: AppImageAssets.avatar_2,
          name: 'Josua Nunito',
          email: 'Josh Nunito@gmail.com'),
      UserInfoModel(
          image: AppImageAssets.avatar_3,
          name: 'Madrani Andi',
          email: 'Madraniadi20@gmail'),
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: latestTransactionList
            .map(
              (userInfoModel) => IntrinsicWidth(
                child: CustomUserInfoListTile(userInfoModel: userInfoModel),
              ),
            )
            .toList(),
      ),
    );
  }
}
