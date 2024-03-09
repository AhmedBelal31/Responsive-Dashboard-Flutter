import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/all_expenses_item_model.dart';
import 'inactive_and_active_all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  final AllExpensesItemModel allExpensesItemModel;
  final bool isSelected;

  const AllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpenses(allExpensesItemModel: allExpensesItemModel)
        : InActiveAllExpenses(allExpensesItemModel: allExpensesItemModel);

  }
}
