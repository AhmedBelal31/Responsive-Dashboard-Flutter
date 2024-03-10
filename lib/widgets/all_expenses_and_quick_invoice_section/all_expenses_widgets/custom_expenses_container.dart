import 'package:flutter/material.dart';

class CustomExpensesContainer extends StatelessWidget {
  final Widget child;

  final Color? containerColor;

  const CustomExpensesContainer(
      {super.key, required this.child, this.containerColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: containerColor ?? Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
          side: const BorderSide(
            width: 1,
            color: Color(0xFFF1F1F1),
          ),
        ),
      ),
      child: child,
    );
  }
}