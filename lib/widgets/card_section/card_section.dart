import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/utils/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/card_section/card_widgets/dots_indicator.dart';
import 'package:responsive_dashboard/widgets/card_section/card_widgets/my_cards_page_view.dart';

class CardSection extends StatefulWidget {
  const CardSection({super.key});

  @override
  State<CardSection> createState() => _CardSectionState();
}

class _CardSectionState extends State<CardSection> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentPageIndex = pageController.page!.round();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: CustomBackgroundContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Card',
              style: AppStyles.styleSemiBold16(context),
            ),
            const SizedBox(height: 20),
            MyCardsPageView(
              pageController: pageController,
            ),
            const SizedBox(height: 20),
            DotsIndicator(currentPageIndex: currentPageIndex),
          ],
        ),
      ),
    );
  }
}
