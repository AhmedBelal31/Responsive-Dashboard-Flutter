import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_widgets/quick_invoice.dart';
import 'all_expenses_widgets/all_expenses.dart';
import 'drawer_widgets/custom_drawer.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: CustomDrawer(),
        ),
      const SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.only(top:20),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: AllExpenses(),
                ),
                SliverToBoxAdapter(child: const SizedBox(height: 32)),
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: QuickInvoice(),
                )
              ],
            ),
          ),
        ),
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
