import 'package:flutter/material.dart';

import '../../model/user_info_model.dart';
import '../drawer_widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => IntrinsicWidth(
          child: UserInfoListTile(
            userInfoModel: userInfoItems[index],
          ),
        ),
        itemCount: userInfoItems.length,
      ),
    );
  }
}