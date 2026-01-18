import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses_list_view.dart';

import 'all_expenses_header.dart';
import 'custom_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(child: Column(
      children: [
        const AllExpensesHeader(),
        SizedBox(height: 16),
        AllExpensesListView()
      ],
    ),);
  }
}


