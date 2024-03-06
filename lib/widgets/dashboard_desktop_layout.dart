import 'package:flutter/material.dart';
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
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.teal,
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
