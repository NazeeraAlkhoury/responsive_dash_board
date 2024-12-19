import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_quick_info_title.dart';
import 'package:responsive_dash_board/widgets/custom_text_form_field.dart';

class CustomForm extends StatelessWidget {
  final String title, hint;
  const CustomForm({
    super.key,
    required this.title,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomQuicInoviceTitle(title: title),
        CustomTextFormField(
          hint: hint,
        ),
      ],
    );
  }
}
