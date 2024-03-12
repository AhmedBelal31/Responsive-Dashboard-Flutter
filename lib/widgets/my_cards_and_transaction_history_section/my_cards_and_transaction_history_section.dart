import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/my_cards_and_transaction_history_section/card_widgets/card_section.dart';
import '../../utils/widgets/custom_background_container.dart';
import 'transaction_history/transaction_history.dart';

class MyCardsAndTransactionHistorySection extends StatelessWidget {
  const MyCardsAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          CardSection(),
          Divider(
            height: 40,
            color: Color(0xffF1F1F1),
          ),
          TransactionHistory(),
        ],
      ),
    );
  }
}
