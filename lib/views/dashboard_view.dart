import 'package:flutter/material.dart';
import '../utils/size_config.dart';
import '../utils/widgets/adaptive_layout_widget.dart';
import '../widgets/dashboard_desktop_layout.dart';
import '../widgets/dashboard_mobile_layout.dart';
import '../widgets/dashboard_tablet_layout.dart';
import '../widgets/drawer_widgets/custom_drawer.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFFAFAFA),
        scrolledUnderElevation: 0,
        leading: IconButton(
            onPressed: () {
              scaffoldKey.currentState!.openDrawer();
            },
            icon: const Icon(Icons.menu)),
      )
          : null,
      backgroundColor: const Color(0xFFF7F9FA),
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? const CustomDrawer()
          : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashBoardMobileLayout(),
        tabletLayout: (context) => const DashBoardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
