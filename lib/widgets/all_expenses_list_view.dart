import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item.dart';
import '../models/expenses_item_model.dart';
import '../utils/app_images.dart';

class AllExpensesListView extends StatefulWidget {
  const AllExpensesListView({super.key});

  @override
  State<AllExpensesListView> createState() => _AllExpensesListViewState();
}

class _AllExpensesListViewState extends State<AllExpensesListView> {
  final List<ExpensesItemModel> items = [
    ExpensesItemModel(
      image: Assets.imagesBalance,
      text: 'Balance',
      date: 'April 2022',
      amount: r'$20,129',
    ),
    ExpensesItemModel(
      image: Assets.imagesIncome,
      text: 'Income',
      date: 'April 2022',
      amount: r'$20,129',
    ),
    ExpensesItemModel(
      image: Assets.imagesExpenses,
      text: 'Expenses',
      date: 'April 2022',
      amount: r'$20,129',
    ),
  ];
  int isSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(items.length, (index) {
        return Expanded(
          child: GestureDetector(
            onTap: () {
              if (index != isSelected) {
                setState(() {
                  isSelected = index;
                });
              }
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
              child: AllExpensesItem(
                expensesItemModel: items[index],
                isSelected: isSelected == index,
              ),
            ),
          ),
        );
      }),
    );
  }
}
