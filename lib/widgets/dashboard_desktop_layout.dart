import 'package:flutter/material.dart';
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
          child: Column(
            children: [
              AllExpenses(),

            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.yellow,
          ),
        ),
      ],
    );
  }
}
