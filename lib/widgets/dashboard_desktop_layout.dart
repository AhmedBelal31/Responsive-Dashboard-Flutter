import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'all_expenses_and_quick_invoice_section/all_expenses_and_quick_invoice_section.dart';
import 'drawer_widgets/custom_drawer.dart';
import 'my_cards_and_transaction_history_section/card_widgets/card_section.dart';
import 'my_cards_and_transaction_history_section/income_section/income_section.dart';
import 'my_cards_and_transaction_history_section/my_cards_and_transaction_history_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: AllExpensesAndQuickInvoiceSection(),
        ),
        SizedBox(width: 32),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              SizedBox(height: 30),
              MyCardsAndTransactionHistorySection(),
              SizedBox(height: 24),
              IncomeSection(),
            ],
          ),
        ),
      ],
    );
  }
}
