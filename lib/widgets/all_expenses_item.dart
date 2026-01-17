import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

import 'all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.expensesItemModel});

  final ExpensesItemModel expensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
        ),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          AllExpensesItemHeader(image: expensesItemModel.image),
          SizedBox(height: 34),
          Text(expensesItemModel.text, style: AppStyles.styleMedium16(context)),
          SizedBox(height: 8,),
          Text(expensesItemModel.date, style: AppStyles.styleRegular14(context)),
          SizedBox(height: 16 ,),

          Text(expensesItemModel.amount, style: AppStyles.styleSemiBold24(context)),
        ],
      ),
    );
  }
}
