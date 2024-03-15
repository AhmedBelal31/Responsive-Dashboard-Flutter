import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../model/all_expenses_item_model.dart';

class ExpensesItemHeader extends StatelessWidget {
  const ExpensesItemHeader({
    super.key,
    required this.allExpensesItemModel,
    required this.iconColor,
    required this.svgBackgroundColor,
    required this.svgColor,
  });

  final AllExpensesItemModel allExpensesItemModel;
  final Color svgColor;

  final Color svgBackgroundColor;

  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                  color: svgBackgroundColor,
                  shape: const OvalBorder(),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    allExpensesItemModel.image,
                    colorFilter: ColorFilter.mode(
                      svgColor,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: iconColor == null ? const Color(0xFF064061) : Colors.white,
          ),
        ),
      ],
    );

    // return Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //   children: [
    //     CircleAvatar(
    //       backgroundColor:svgBackgroundColor,
    //       radius: 25,
    //       child: SvgPicture.asset(
    //         allExpensesItemModel.image,
    //         height: 20,
    //         width: 20,
    //         colorFilter: ColorFilter.mode(svgColor, BlendMode.srcIn),
    //       ),
    //     ),
    //      Icon(
    //       Icons.arrow_forward_ios_outlined,
    //       color: iconColor ,
    //     ),
    //   ],
    // );
  }
}
