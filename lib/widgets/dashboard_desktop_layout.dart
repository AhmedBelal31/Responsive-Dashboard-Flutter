import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('Hello World ' , style: AppStyles.styleSemiBold18(context),);
  }
}
