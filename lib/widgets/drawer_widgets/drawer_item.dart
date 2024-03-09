import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/drawer_item_model.dart';
import 'active_and_inactive_drawer.dart';

class DrawerItem extends StatelessWidget {
  final DrawerItemModel drawerItemModel;
  final bool isActive;

  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
        : InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}
