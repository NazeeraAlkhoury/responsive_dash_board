import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_dot.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({
    super.key,
    required this.currentPage,
  });

  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => CustomDot(
          isActive: currentPage == index,
        ),
      ),
    );
  }
}
