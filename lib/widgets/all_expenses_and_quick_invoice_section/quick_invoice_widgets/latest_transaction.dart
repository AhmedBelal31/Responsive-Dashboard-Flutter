import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'latest_transaction_list_view.dart';
import 'quick_invoice_form.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16(context),
        ),
        const LatestTransactionListView(),
        const Divider(
          height: 48,
          color: Color(0xffF1F1F1),
        ),
        const QuickInvoiceForm(),
      ],
    );
  }
}
