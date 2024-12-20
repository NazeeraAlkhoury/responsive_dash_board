import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_colors.dart';
import 'package:responsive_dash_board/core/utils/app_text_styles.dart';
import 'package:responsive_dash_board/widgets/card_page_view.dart';
import 'package:responsive_dash_board/widgets/dots_indicators.dart';

class CardSection extends StatefulWidget {
  const CardSection({super.key});

  @override
  State<CardSection> createState() => _CardSectionState();
}

class _CardSectionState extends State<CardSection> {
  int currentPage = 0;
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My card',
          style: AppTextStyles.styleMedium20
              .copyWith(color: AppColors.mainTextColor),
        ),
        const SizedBox(
          height: 15,
        ),
        CardPageView(pageController: pageController),
        const SizedBox(
          height: 15,
        ),
        DotsIndicator(currentPage: currentPage),
      ],
    );
  }
}
