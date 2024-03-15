import 'package:flutter/material.dart';
import '../../../model/all_expenses_item_model.dart';
import '../../../model/drawer_item_model.dart';
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
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpensesItem(
              isSelected: currentIndex == 0,
              allExpensesItemModel: allExpansesItems[0],
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: AllExpensesItem(
              isSelected: currentIndex == 1,
              allExpensesItemModel: allExpansesItems[1],
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: AllExpensesItem(
              isSelected: currentIndex == 2,
              allExpensesItemModel: allExpansesItems[2],
              //
            ),
          ),
        )
      ],
    );









    // return Row(
    //   children: allExpansesItems.asMap().entries.map(
    //     (item) {
    //       int index = item.key;
    //       if (index == 1) {
    //         return Expanded(
    //           child: Padding(
    //             padding: const EdgeInsets.symmetric(horizontal: 5),
    //             child: GestureDetector(
    //               onTap: () {
    //                 updateIndex(item.key);
    //               },
    //               child: AllExpensesItem(
    //                 allExpensesItemModel: item.value,
    //                 isSelected: currentIndex == item.key,
    //               ),
    //             ),
    //           ),
    //         );
    //       }
    //       return Expanded(
    //         child: GestureDetector(
    //           onTap: () {
    //             updateIndex(item.key);
    //           },
    //           child: AllExpensesItem(
    //             allExpensesItemModel: item.value,
    //             isSelected: currentIndex == index,
    //           ),
    //         ),
    //       );
    //     },
    //   ).toList(),
    // );
  }

  void updateIndex(int index) {
    if (currentIndex != index) {
      setState(() {
        currentIndex = index;
      });
    }
  }
}
