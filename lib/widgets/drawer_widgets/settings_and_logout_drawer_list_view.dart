import 'package:flutter/material.dart';
import '../../model/drawer_item_model.dart';
import 'settings_and_logout_drawer_list_view_item.dart';

class SettingsAndLogoutDrawerListView extends StatefulWidget {
  final int currentIndex;
  final Function(int) setCurrentIndex;

  const SettingsAndLogoutDrawerListView(
      {super.key, required this.currentIndex, required this.setCurrentIndex});

  @override
  State<SettingsAndLogoutDrawerListView> createState() =>
      _SettingsAndLogoutDrawerItemsState();
}

class _SettingsAndLogoutDrawerItemsState
    extends State<SettingsAndLogoutDrawerListView> {
  // int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          if (widget.currentIndex != index + items.length) {
            widget.setCurrentIndex(index + items.length);
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: SettingsAndLogoutDrawerItems(
            drawerItemModel: settingsAndLogoutItems[index],
            isActive: widget.currentIndex == index + items.length,
          ),
        ),
      ),
      itemCount: settingsAndLogoutItems.length,
    );
  }
}
