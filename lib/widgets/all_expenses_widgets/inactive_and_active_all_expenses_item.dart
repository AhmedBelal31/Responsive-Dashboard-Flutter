import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/widgets/custom_background_container.dart';
import '../../model/all_expenses_item_model.dart';
import '../../utils/app_styles.dart';
import 'expenses_item_header.dart';

class InActiveAllExpenses extends StatelessWidget {
  const InActiveAllExpenses({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        // color:const  Color(0xFF4EB7F2),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
            side: const BorderSide(
              width: 1,
              color: Color(0xFFF1F1F1),
            ),
          ),
        ),

        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ExpensesItemHeader(
                allExpensesItemModel: allExpensesItemModel,
                iconColor: Colors.black,
                svgColor: const Color(0xFF4EB7F2),
                svgBackgroundColor: Colors.white,
              ),
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
                style: AppStyles.styleSemiBold20(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ActiveAllExpenses extends StatelessWidget {
  const ActiveAllExpenses({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: CustomBackgroundContainer(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ExpensesItemHeader(
                allExpensesItemModel: allExpensesItemModel,
                iconColor: Colors.white,
                svgColor: Colors.white,
                svgBackgroundColor: Colors.white.withOpacity(.2),
              ),
              const SizedBox(height: 34),
              Text(
                allExpensesItemModel.title,
                style: AppStyles.styleMedium16(context)
                    .copyWith(color: Colors.white),
              ),
              const SizedBox(height: 8),
              Text(
                allExpensesItemModel.date,
                style: AppStyles.styleRegular14(context),
              ),
              const SizedBox(height: 16),
              Text(
                '${allExpensesItemModel.price}\$',
                style: AppStyles.styleSemiBold20(context)
                    .copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
