import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/incom_section.dart';
import 'package:responsive_dash_board/widgets/my_card_and_trans_history.dart';

class CardAndTransHistoryAndIncom extends StatelessWidget {
  const CardAndTransHistoryAndIncom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MyCardAndTransHistory(),
        SizedBox(
          height: 24,
        ),
        IncomSection(),
      ],
    );
  }
}
