import 'package:flutter/material.dart';
import '../../../model/all_expenses_item_model.dart';
import 'all_expenses_item.dart';

class AllExpensesItemsList extends StatefulWidget {
  const AllExpensesItemsList({super.key});

  @override
  State<AllExpensesItemsList> createState() => _AllExpensesItemsListState();
}

class _AllExpensesItemsListState extends State<AllExpensesItemsList> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: allExpansesItems.asMap().entries.map(
        (item) {
          int index = item.key;
          if (index == 1) {
            return Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: GestureDetector(
                  onTap: () {
                    updateIndex(item.key);
                  },
                  child: AllExpensesItem(
                    allExpensesItemModel: item.value,
                    isSelected: currentIndex == item.key,
                  ),
                ),
              ),
            );
          }
          return Expanded(
            child: GestureDetector(
              onTap: () {
                updateIndex(item.key);
              },
              child: AllExpensesItem(
                allExpensesItemModel: item.value,
                isSelected: currentIndex == index,
              ),
            ),
          );
        },
      ).toList(),
    );
  }

  void updateIndex(int index) {
    if (currentIndex != index) {
      setState(() {
        currentIndex = index;
      });
    }
  }
}
