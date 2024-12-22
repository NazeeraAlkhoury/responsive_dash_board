import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_text_styles.dart';

class CustomQuicInoviceTitle extends StatelessWidget {
  final String title;
  const CustomQuicInoviceTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextStyles.styleMedium16(context),
    );
  }
}
