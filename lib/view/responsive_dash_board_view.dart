import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/core/utils/app_assest_image.dart';
import 'package:responsive_dash_board/core/utils/app_colors.dart';

class ResponsiveDashBoardView extends StatelessWidget {
  const ResponsiveDashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        Card(
          color: AppColors.greyBackgroundColor,
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          leading: SvgPicture.asset(AppImageAssets.avatar_3),
          title: Text('Lekan Okeowo'),
          subtitle: Text('demo@gmail.com'),
        ),
        ),
        
      ],
    );
  }
}