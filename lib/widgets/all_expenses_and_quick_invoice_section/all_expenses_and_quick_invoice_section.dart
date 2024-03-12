import 'package:flutter/material.dart';
import 'all_expenses_widgets/all_expenses.dart';
import 'quick_invoice_widgets/quick_invoice.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.only(top:30),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: AllExpenses(),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 32)),
          SliverFillRemaining(
            hasScrollBody: false,
            child: QuickInvoice(),
          )
        ],
      ),
    ) ;
  }
}