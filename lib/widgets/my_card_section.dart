import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/my_card_page_view.dart';

import 'dots_indicator.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentIndex = pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 24),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text('My card', style: AppStyles.styleSemiBold20(context)),
          SizedBox(height: 20),
          MyCardPageView(pageController: pageController),
          SizedBox(height: 20),
          DotsIndicator(pageIndex: currentIndex),
        ],
      ),
    );
  }
}
