import 'package:flutter/material.dart';
import '../../model/all_expenses_item_model.dart';
import '../../utils/app_styles.dart';
import 'custom_expenses_container.dart';
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
      child: CustomExpensesContainer(
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
      child: CustomExpensesContainer(
        containerColor: const Color(0xFF4EB7F2),
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
