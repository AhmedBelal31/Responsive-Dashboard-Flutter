import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/drawer_widgets/user_info_list_tile.dart';
import '../../utils/app_images.dart';
import 'drawer_items_list_view.dart';
import 'settings_and_logout_drawer_list_view.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  int currentIndex = 0;

  void setCurrentIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: UserInfoListTile(
              title: 'Lekan Okeowo',
              subTitle: 'demo@gmail.com',
              image: Assets.imagesAvatar1,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 8),
          ),
          DrawerItemsListView(
            currentIndex: currentIndex,
            setCurrentIndex: setCurrentIndex,
          ),
          const SliverFillRemaining(
            hasScrollBody: false,
            child: Expanded(
              child: SizedBox(),
            ),
          ),
          //  SliverToBoxAdapter(
          //   child: SizedBox(height: MediaQuery.sizeOf(context).height/2.7),
          // ),
          SettingsAndLogoutDrawerListView(
            currentIndex: currentIndex,
            setCurrentIndex: setCurrentIndex,
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 48),
          ),
        ],
      ),
    );
  }
}
