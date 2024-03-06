import 'package:flutter/material.dart';

import '../../model/drawer_item_model.dart';
import 'active_and_inactive_drawer.dart';

class SettingsAndLogoutDrawerItems extends StatelessWidget {
  final bool isActive;

  final DrawerItemModel drawerItemModel;

  const SettingsAndLogoutDrawerItems(
      {super.key, required this.isActive, required this.drawerItemModel});

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(
            drawerItemModel: drawerItemModel,
          )
        : InActiveDrawerItem(
            drawerItemModel: drawerItemModel,
          );
  }
}
