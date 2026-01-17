import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/expenses_item_model.dart';
import 'in_active_and_active_All_Expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.expensesItemModel,
    required this.isSelected,
  });

  final ExpensesItemModel expensesItemModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensesItem(expensesItemModel: expensesItemModel)
        : InActiveAllExpensesItem(expensesItemModel: expensesItemModel);
  }
}
