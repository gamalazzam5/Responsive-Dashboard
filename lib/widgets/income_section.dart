import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses_header.dart';
import 'package:responsive_dashboard/widgets/custom_container.dart';
import 'package:responsive_dashboard/widgets/income_chart.dart';

import 'income_details.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(child: Column(

      children: [
        AllExpensesHeader(title: 'Income',),
        Row(
          crossAxisAlignment: .center,
          children: [
            Expanded(child: IncomeChart()),
            Expanded(child: IncomeDetails(),)
          ],
        )
      ],
    ));
  }
}
