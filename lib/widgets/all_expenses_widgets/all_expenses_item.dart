import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/model/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
class AllExpensesItem extends StatelessWidget {
  final AllExpensesItemModel allExpensesItemModel;

  const AllExpensesItem({super.key, required this.allExpensesItemModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Card(
        // color:const  Color(0xFF4EB7F2),
        color: Colors.white,
        elevation: 0.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
            side: BorderSide(width: 1, color: Colors.grey[200]!)),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 25,
                    child: SvgPicture.asset(
                      allExpensesItemModel.image,
                      height: 20,
                      width: 20,
                    ),
                  ),
                  const Icon(Icons.arrow_forward_ios_outlined),
                ],
              ),
              // const Spacer(),
              const SizedBox(height: 34),
              Text(
                allExpensesItemModel.title,
                style: AppStyles.styleMedium16(context),
              ),
              const SizedBox(height: 8),
              Text(
                allExpensesItemModel.date,
                style: AppStyles.styleRegular14(context),
              ),
              const SizedBox(height: 16),
              Text(
                '${allExpensesItemModel.price}\$',
                style: AppStyles.styleSemiBold24(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
