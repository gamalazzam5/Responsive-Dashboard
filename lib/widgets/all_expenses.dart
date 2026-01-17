import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item.dart';

import '../models/expenses_item_model.dart';
import '../utils/app_images.dart';
import 'all_expenses_header.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(12),
        ),
        color: Colors.white,
      ),
      child: Column(
        children: [
          const AllExpensesHeader(),
          SizedBox(height: 16),
          AllExpensesItem(
            expensesItemModel: ExpensesItemModel(
              image: Assets.imagesIncome,
              text: 'Income',
              date: 'April 2022',
              amount: '\$20,129',
            ),
          ),
        ],
      ),
    );
  }
}
