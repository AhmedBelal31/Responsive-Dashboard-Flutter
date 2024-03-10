import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/drawer_widgets/user_info_list_tile.dart';

import '../../model/user_info_model.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16(context),
        ),
        const LatestTransactionListView(),
      ],
    );
  }
}

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
