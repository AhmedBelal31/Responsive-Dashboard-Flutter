import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../model/drawer_item_model.dart';
import '../../utils/app_styles.dart';

class InActiveDrawerItem extends StatelessWidget {
  final DrawerItemModel drawerItemModel;

  const InActiveDrawerItem({super.key, required this.drawerItemModel});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(
        drawerItemModel.title,
        style: AppStyles.styleRegular16(context),
      ),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  final DrawerItemModel drawerItemModel;

  const ActiveDrawerItem({super.key, required this.drawerItemModel});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(
        drawerItemModel.title,
        style: AppStyles.styleBold16(context),
      ),
      trailing: Container(
        width: 3.27,
        decoration: const BoxDecoration(color: Color(0xFF4EB7F2)),
      ),
    );
  }
}
