import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_histroy_model.dart';

import '../utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionHistoryModel});

  final TransactionHistoryModel transactionHistoryModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),color: const Color(0xFFFAFAFA),
      child: ListTile(
        title: Text(
          transactionHistoryModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          transactionHistoryModel.date,
          style: AppStyles.styleRegular16(
            context,
          ).copyWith(color: const Color(0xFFAAAAAA)),
        ),
        trailing: Text(
          transactionHistoryModel.amount,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: transactionHistoryModel.isWithdraw
                ? const Color(0xFFF3735E)
                : const Color(0xFF7DD97B),
          ),
        ),
      ),
    );
  }
}
