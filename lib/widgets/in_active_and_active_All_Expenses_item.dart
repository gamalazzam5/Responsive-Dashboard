import 'package:flutter/material.dart';
import '../models/expenses_item_model.dart';
import '../utils/app_styles.dart';
import 'all_expenses_item_header.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({super.key, required this.expensesItemModel});

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
          SizedBox(height: 8),
          Text(
            expensesItemModel.date,
            style: AppStyles.styleRegular14(context),
          ),
          SizedBox(height: 16),

          Text(
            expensesItemModel.amount,
            style: AppStyles.styleSemiBold24(context),
          ),
        ],
      ),
    );
  }
}

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({super.key, required this.expensesItemModel});

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
        color: const Color(0xFF4EB7F2),
      ),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          AllExpensesItemHeader(
            image: expensesItemModel.image,
            iconColor: Colors.white,
            imageBackgroundColor:Colors.white.withValues(alpha: .1)  ,
            imageColor: Colors.white,
          ),
          SizedBox(height: 34),
          Text(
            expensesItemModel.text,
            style: AppStyles.styleMedium16(
              context,
            ).copyWith(color: Colors.white),
          ),
          SizedBox(height: 8),
          Text(
            expensesItemModel.date,
            style: AppStyles.styleRegular14(
              context,
            ).copyWith(color: const Color(0xFFFAFAFA)),
          ),
          SizedBox(height: 16),

          Text(
            expensesItemModel.amount,
            style: AppStyles.styleSemiBold24(
              context,
            ).copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
