import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20(context),
        ),
       const Spacer(),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                width: 1,
                color: Color(0xFFF1F1F1),
              ),
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
          child: Row(
            children: [
              Text(
                'Monthly',
                style: AppStyles.styleMedium16(context),
              ),
              const SizedBox(width: 8),
              Transform.rotate(
                angle: -1.57079633,
                child: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  size: 15,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
