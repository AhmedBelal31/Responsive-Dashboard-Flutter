import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/drawer_widgets/drawer_item.dart';
import '../../model/drawer_item_model.dart';

class DrawerItemsListView extends StatefulWidget {
  final int currentIndex;
  final Function(int) setCurrentIndex;

  const DrawerItemsListView(
      {super.key, required this.currentIndex, required this.setCurrentIndex});

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  // int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          if (widget.currentIndex != index) {
            widget.setCurrentIndex(index);
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: DrawerItem(
            drawerItemModel: items[index],
            isActive: widget.currentIndex == index,
          ),
        ),
      ),
      itemCount: items.length,
    );
  }
}
