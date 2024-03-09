import 'package:flutter/material.dart';

class CustomBackgroundContainer extends StatelessWidget {
  final Widget child ;
  const CustomBackgroundContainer({super.key , required this.child});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: ShapeDecoration(
        color:Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      child: child,
    );
  }
}
