import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/card_section/card_widgets/my_card.dart';

class CardSection extends StatelessWidget {
  const CardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: CustomBackgroundContainer(
          child: Column(
            children: [
              MyCard(),
            ],
          ),
        ),
      ),
    );
  }
}
