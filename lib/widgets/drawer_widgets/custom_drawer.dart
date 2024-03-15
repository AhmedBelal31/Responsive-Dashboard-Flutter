import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/drawer_widgets/user_info_list_tile.dart';
import '../../model/user_info_model.dart';
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
      width: MediaQuery.sizeOf(context).width *.5,
      child: CustomScrollView(
        slivers: [
           SliverToBoxAdapter(
            child: UserInfoListTile(userInfoModel: userInfoItems[0],),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 8),
          ),
          DrawerItemsListView(
            currentIndex: currentIndex,
            setCurrentIndex: setCurrentIndex,
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const SizedBox(height: 20),
                const Expanded(
                  child: SizedBox(),
                ),
                SettingsAndLogoutDrawerListView(
                  currentIndex: currentIndex,
                  setCurrentIndex: setCurrentIndex,
                ),
                const SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
