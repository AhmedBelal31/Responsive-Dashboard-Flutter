import 'package:flutter/material.dart';
import '../../model/all_expenses_item_model.dart';
import 'all_expenses_item.dart';

class AllExpensesItemsList extends StatelessWidget {
  const AllExpensesItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: allExpansesItems
          .map(
            (item) => Expanded(
              child: AllExpensesItem(
                allExpensesItemModel: item,
              ),
            ),
          )
          .toList(),
    );
  }
}
