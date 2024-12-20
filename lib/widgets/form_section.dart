import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_elevated_button.dart';
import 'package:responsive_dash_board/widgets/custom_form.dart';
import 'package:responsive_dash_board/widgets/custom_text_button.dart';

class FormSection extends StatelessWidget {
  const FormSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomForm(
                title: 'Customer name',
                hint: 'Type customer name',
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: CustomForm(
                title: 'Customer Email',
                hint: 'Type customer email',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
              child: CustomForm(
                title: 'Item name',
                hint: 'Type customer name',
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: CustomForm(
                title: 'Item mount',
                hint: 'TUSD',
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: CustomTextButton(),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: CustomElevatedButton(),
            ),
          ],
        ),
      ],
    );
  }
}