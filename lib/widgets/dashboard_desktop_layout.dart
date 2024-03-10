import 'package:flutter/material.dart';
import 'all_expenses_and_quick_invoice_section/all_expenses_and_quick_invoice_section.dart';
import 'drawer_widgets/custom_drawer.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: CustomDrawer()),
        const SizedBox(width: 32),
        const AllExpensesAndQuickInvoiceSection(),
        const SizedBox(width: 32),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              color: Colors.yellow,
            ),
          ),
        ),
      ],
    );
  }
}
