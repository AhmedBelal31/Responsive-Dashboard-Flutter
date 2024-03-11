import 'package:flutter/material.dart';
import 'all_expenses_and_quick_invoice_section/all_expenses_and_quick_invoice_section.dart';
import 'card_section/card_section.dart';
import 'drawer_widgets/custom_drawer.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        AllExpensesAndQuickInvoiceSection(),
        SizedBox(width: 32),
        CardSection(),
      ],
    );
  }
}
