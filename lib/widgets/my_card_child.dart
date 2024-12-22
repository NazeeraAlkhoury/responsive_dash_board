import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/core/utils/app_assest_image.dart';
import 'package:responsive_dash_board/core/utils/app_colors.dart';
import 'package:responsive_dash_board/core/utils/app_text_styles.dart';

class MyCardChild extends StatelessWidget {
  const MyCardChild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ListTile(
          title: Text(
            'Name card',
            style: AppTextStyles.styleRegular16(context)
                .copyWith(color: AppColors.containerBackgroundColor),
          ),
          subtitle: Text(
            'Syah Bandi',
            style: AppTextStyles.styleMedium20(context),
          ),
          trailing: SvgPicture.asset(AppImageAssets.gallery),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 48 - 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '0918 8124 0042 8129',
                style: AppTextStyles.styleSemiBold24(context)
                    .copyWith(color: AppColors.containerBackgroundColor),
              ),
              Text(
                '12/20 - 24',
                style: AppTextStyles.styleRegular16(context)
                    .copyWith(color: AppColors.containerBackgroundColor),
              ),
            ],
          ),
        ),
        const Flexible(
          child: SizedBox(
            height: 54 - 28,
          ),
        ),
      ],
    );
  }
}
