import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_colors.dart';
import 'package:responsive_dash_board/widgets/custom_all_expensess_section.dart';
import 'package:responsive_dash_board/widgets/custom_container.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/custom_latest_transaction_list.dart';
import 'package:responsive_dash_board/widgets/custom_quick_info_title.dart';
import 'package:responsive_dash_board/widgets/custom_text_form_field.dart';
import 'package:responsive_dash_board/widgets/quick_inovice_header.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: Row(
        children: [
          const Expanded(
            child: CustomDrawer(),
          ),
          const SizedBox(
            width: 24,
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                const CustomAllExpensessSection(),
                const SizedBox(
                  height: 10,
                ),
                CustomContainer(
                  child: (BuildContext context) => const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      QuickInvoiceHeader(),
                      CustomQuicInoviceTitle(
                        title: 'Latest Transaction',
                      ),
                      CustomLatestTransactionList(),
                      Divider(
                        color: AppColors.borderColor,
                        height: 42,
                      ),
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
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 24,
          ),
        ],
      ),
    );
  }
}

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
